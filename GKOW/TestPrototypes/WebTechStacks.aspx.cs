using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Text;

public partial class TestPrototypes_Search : System.Web.UI.Page
{
    static string w3TechUrl; static string w3TechSiteUrl;
    static string builtWithUrl; static string builtWithSiteUrl;
    protected void Page_Load(object sender, EventArgs e)
    {
        w3TechSiteUrl = txtSearch.Text.ToString();
        w3TechUrl = "http://w3techs.com/sites/info/" + w3TechSiteUrl;

        builtWithSiteUrl = txtSearch.Text.ToString();
        builtWithUrl = "http://builtwith.com/" + builtWithSiteUrl;
    }

    public static String GetHTMLSource(string url)
    {
        HttpWebRequest myRequest = (HttpWebRequest)WebRequest.Create(url);
        myRequest.Method = "GET";
        WebResponse myResponse = myRequest.GetResponse();
        StreamReader sr = new StreamReader(myResponse.GetResponseStream(), System.Text.Encoding.UTF8);
        string result = sr.ReadToEnd();
        sr.Close();
        myResponse.Close();
        return result;
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string w3TechsSource = GetHTMLSource(w3TechUrl);

        //W3 Tech Source Parsing
        string strw3Tech = w3TechSiteUrl.First().ToString().ToUpper() + w3TechSiteUrl.Substring(1);
        string w3TechstartWord = "Site Info - " + strw3Tech;
        int w3TechstartIndex = w3TechsSource.IndexOf(w3TechstartWord);
        int w3TechLength = w3TechsSource.IndexOf("Share this page") - w3TechsSource.IndexOf(w3TechstartWord);
        if (w3TechLength < 0)
        {
            litW3Techs.Text = "No Resutls found";
        }
        else
        {
            string infoString = w3TechsSource.Substring(w3TechsSource.IndexOf(w3TechstartWord), w3TechLength);
            litW3Techs.Text = infoString;
        }

        string builtWithSource = GetHTMLSource(builtWithUrl);

        // Built With Source Parsing
        string builtWithstartWord = "homeH1 profileH1";
        int builtWithstartIndex = builtWithSource.IndexOf(builtWithstartWord);
        int builtWithLength = builtWithSource.IndexOf("<li><span>Profile Details</span></li>") - builtWithSource.IndexOf(builtWithstartWord);


        if (builtWithLength < 0)
        {
            litBuiltWith.Text = "No Resutls found";
        }
        else
        {
            string infoString = builtWithSource.Substring(builtWithSource.IndexOf(builtWithstartWord), builtWithLength);
            string formattedStr = infoString.Remove(0, 18);
            litBuiltWith.Text = formattedStr;
        }
    }
}