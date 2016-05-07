using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.IO;
using OAuth;

 public  class MartjackAPIHelper
    {

        /// <summary>
        ///  Execute HTTP GET Request
        /// </summary>
        /// <param name="url"></param>
        /// <param name="publicKey"></param>
        /// <param name="secretKey"></param>
        /// <param name="outputFormat"></param>
        /// <returns></returns>
        public static string ExecuteGetRequest(System.Uri url, string publicKey, string secretKey, string outputFormat = "application/Json")
        {
            OAuthBase oauth = new OAuthBase();
            string normalizedUrl = string.Empty; string normalizedQueryParameters = string.Empty;
            string timestamp = oauth.GenerateTimeStamp();
            string nounce = oauth.GenerateNonce();

            // Get oAuth Signature
            string signature = oauth.GenerateSignature(url, publicKey, secretKey, null, null, "GET", timestamp, nounce, out normalizedUrl, out normalizedQueryParameters);

            // Format url with normalized parameters and encoded oAuth signature appended as a query string to the url
            string finalUrl = string.Format("{0}?{1}&oauth_signature={2}", normalizedUrl, normalizedQueryParameters, oauth.UrlEncode(signature));

            //Pass Encoded url to WebAPI 
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(finalUrl);
            request.ContentType = outputFormat;

            //Get Response from WebAPI
            HttpWebResponse webResponse = (HttpWebResponse)request.GetResponse();
            Stream dataStream = webResponse.GetResponseStream();
            StreamReader reader = new StreamReader(dataStream);
            string strWebResponse = reader.ReadToEnd();
            reader.Close();
            dataStream.Close();
            webResponse.Close();

            //Format the response string 
            strWebResponse = strWebResponse.Replace("<?xml version=\"1.0\" encoding=\"utf-8\"?><string>", "");
            strWebResponse = strWebResponse.Replace("</string>", "");
            return strWebResponse;
        }

        /// <summary>
        ///  Execute HTTP POST request with body as input
        /// </summary>
        /// <param name="url"></param>
        /// <param name="publicKey"></param>
        /// <param name="secretKey"></param>
        /// <param name="body"></param>
        /// <param name="outputFormat"></param>
        /// <returns></returns>
        public static string ExecutePostRequest(System.Uri url, string publicKey, string secretKey, string body, string outputFormat = "application/Json")
        {

            OAuthBase oauth = new OAuthBase();
            string normalizedUrl = string.Empty; 
            string normalizedQueryParameters = string.Empty;
            string timestamp = oauth.GenerateTimeStamp();
            string nounce = oauth.GenerateNonce();

            // Get oAuth Signature
            string signature = oauth.GenerateSignature(url, publicKey, secretKey, null, null, "POST", timestamp, nounce, out normalizedUrl, out normalizedQueryParameters);

            // Format url with normalized parameters and encoded oAuth signature appended as a query string to the url
            string finalUrl = string.Format("{0}?{1}&oauth_signature={2}", normalizedUrl, normalizedQueryParameters, oauth.UrlEncode(signature));

            //Pass Encoded url to WebAPI 
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(finalUrl);
            request.Method = "POST";
            ASCIIEncoding encoding = new ASCIIEncoding();

            //Convert the request parameter into byte
            byte[] byte1 = encoding.GetBytes(body);

            //Set the content type of the posted data
            request.ContentType = "application/x-www-form-urlencoded";
            request.Accept = outputFormat;

            // Set the content length of the posted string .
            request.ContentLength = byte1.Length;
            Stream newStream = request.GetRequestStream();
            newStream.Write(byte1, 0, byte1.Length);
            newStream.Close();

            //Get Response from WebAPI
            HttpWebResponse webResponse = (HttpWebResponse)request.GetResponse();
            Stream dataStream = webResponse.GetResponseStream();
            StreamReader reader = new StreamReader(dataStream);
            string strWebResponse = reader.ReadToEnd();
            reader.Close();
            dataStream.Close();
            webResponse.Close();

            //Format the response string 
            strWebResponse = strWebResponse.Replace("<?xml version=\"1.0\" encoding=\"utf-8\"?><string>", "");
            strWebResponse = strWebResponse.Replace("</string>", "");
            return strWebResponse;
        }

        











    
    }





