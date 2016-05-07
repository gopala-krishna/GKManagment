using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class OrdersFulfillment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    /// <summary>
    ///  Get all Authorized Orders
    /// </summary>
    /// <returns></returns>
     [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetAuthorizedOrders()
    {
        string strOrderStatus = "Status" + '=' + "A"; string strQueryUrl = "Order/History/{1}";
        return GetOrders(strOrderStatus, strQueryUrl);
    }

    /// <summary>
    ///  Get all Payment Pending Orders
    /// </summary>
    /// <returns></returns>
    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static string GetPaymentPendingOrders()
    {
        string strOrderStatus = "Status" + '=' + "P"; string strQueryUrl = "Order/History/{1}";
        return GetOrders(strOrderStatus, strQueryUrl);
    }

    /// <summary>
    ///  Get Orders of any order status - Helper Method
    /// </summary>
    /// <param name="orderStatus"></param>
    /// <param name="queryUrl"></param>
    /// <returns></returns>
    private static string GetOrders(string orderStatus, string queryUrl)
    {
        string DeveloperApiPath = "http://www.martjack.com/DeveloperAPI/";
        Uri uri = new Uri(String.Format("{0}"+ queryUrl, DeveloperApiPath, "bd5c1517-8d80-48d7-8e8e-365433ad124f"));
        string jsonResult = MartjackAPIHelper.ExecutePostRequest(uri, "VFHRRIQQ", "QQ8ZDIEHHIX5WPYKGXIY5YSF", orderStatus, "application/json");
        return jsonResult;
    }



}