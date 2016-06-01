using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;
using GKOW.Entities;


public partial class OrdersFulfillment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var or = GetOrders("A", "Order/History/{1}");
        JObject ORObj = JObject.Parse(or);
        List<int> lstOrderId = new List<int>();
        int count = ORObj.Root.ToList()[2].ToList()[0].ToList().Count;
        for (int i = 0; i < count; i++)
        {
            string lstStock = ORObj.Root.ToList()[2].ToList()[0].ToList()[i].ToString();
            JObject jStockObj = JObject.Parse(lstStock);
            int orderId = Convert.ToInt32(jStockObj.Root.ToList()[0].ToList()[0]);
            lstOrderId.Add(orderId);
        }

        List<OrderItem> lstOrderItems = new List<OrderItem>();

        foreach (int orderId in lstOrderId)
        {
            
            //string orderDetails = GetOrderDetails("3790991");
            string orderDetails = GetOrderDetails(orderId.ToString());
            JObject jOrderDetailsObj = JObject.Parse(orderDetails);

            int itemsCount = jOrderDetailsObj.Root.ToList()[2].ToList()[0].ToList().Count;
            for (int i = 0; i < itemsCount; i++)
            {
                string productDetail = jOrderDetailsObj.Root.ToList()[2].ToList()[0].ToList()[i].ToString();
                JObject jStockObj = JObject.Parse(productDetail);
                var tokens = jStockObj.Root.ToList()[40].ToList()[0].Children();
                foreach (var ib in tokens)
                {
                    JObject jStockObj1 = JObject.Parse(ib.ToString());
                    OrderItem oi = new OrderItem();
                    oi.OrderId = Convert.ToInt32(jStockObj1.Root.ToList()[1].ToList()[0]);
                    oi.ProductSKU = jStockObj1.Root.ToList()[25].ToList()[0].ToString();
                    oi.VariantProductSKU = jStockObj1.Root.ToList()[26].ToList()[0].ToString();
                    oi.Quantity = Convert.ToInt32(jStockObj.Root.ToList()[6].ToList()[0]);
                    lstOrderItems.Add(oi);
                }
            }
        }
        List<LocationStock> lstLocationStock = new List<LocationStock>();

        foreach (OrderItem oi in lstOrderItems)
        {
            var orls = GetLocationStock(oi.ProductSKU.ToString(), null, null);
            JObject orlsObj = JObject.Parse(orls);
         
           
            int orlsCount = orlsObj.Root.ToList()[2].ToList()[0].ToList().Count;
            for (int i = 0; i < orlsCount; i++)
            {
                string lstStock = orlsObj.Root.ToList()[2].ToList()[0].ToList()[i].ToString();
                JObject orlsStockObj = JObject.Parse(lstStock);
                LocationStock ss = new LocationStock();
                ss.OrderId = oi.OrderId;
                ss.ProductSKU = orlsStockObj.Root.ToList()[4].ToList()[0].ToString();
                ss.VariantProductSKU = orlsStockObj.Root.ToList()[5].ToList()[0].ToString();
                ss.Quantity = Convert.ToInt32(orlsStockObj.Root.ToList()[6].ToList()[0]);
                ss.LocationId = Convert.ToInt32(orlsStockObj.Root.ToList()[2].ToList()[0]);
                string stockVal = orlsStockObj.Root.ToList()[9].ToList()[0].ToString();

                if (stockVal == "NA")
                {
                    ss.Stock = 0;
                }
                else
                {
                    ss.Stock = Convert.ToInt32(stockVal);
                }
                lstLocationStock.Add(ss);
            }
        }
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
        Uri uri = new Uri(String.Format("{0}" + queryUrl, DeveloperApiPath, "3a198ef5-18ba-410f-9953-e8815b44d285"));
        string jsonResult = MartjackAPIHelper.ExecutePostRequest(uri, "CDDLVQXL", "MOHPZWGWQ8ATXSLHGY8OKHAQ", orderStatus, "application/json");
        return jsonResult;
    }

    private static string GetOrderDetails(string orderId)
    {
        string DeveloperApiPath = "http://www.martjack.com/DeveloperAPI/";
        Uri uri = new Uri(String.Format("{0}Order/{1}/{2}", DeveloperApiPath, "3a198ef5-18ba-410f-9953-e8815b44d285", orderId));
        string jsonResult = MartjackAPIHelper.ExecuteGetRequest(uri, "CDDLVQXL", "MOHPZWGWQ8ATXSLHGY8OKHAQ", "application/json");
        return jsonResult;
    }
    /// <summary>
    /// 
    /// </summary>
    /// <param name="productSKU"></param>
    /// <param name="variantSKU"></param>
    /// <param name="locationId"></param>
    /// <returns></returns>
    private static string GetLocationStock(string productSKU, string variantSKU, string locationId)
    {
        string body = "MerchantId=3a198ef5-18ba-410f-9953-e8815b44d285&InputData=<Product><SKU>" + productSKU + "</SKU><VariantSKU>" + variantSKU + "</VariantSKU><LocationId>" + locationId + "</LocationId></Product>&InputFormat=application/XML";
        string developerapipath = "http://www.martjack.com/developerapi/";
        Uri uri = new Uri(string.Format("{0}Product/{1}/LocationStockPrice", developerapipath, "3a198ef5-18ba-410f-9953-e8815b44d285"));
        string jsonResult = MartjackAPIHelper.ExecutePostRequest(uri, "CDDLVQXL", "MOHPZWGWQ8ATXSLHGY8OKHAQ", body, "application/json");
        return jsonResult;
    }



}