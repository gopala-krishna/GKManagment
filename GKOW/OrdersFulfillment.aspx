<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="OrdersFulfillment.aspx.cs" Inherits="OrdersFulfillment" %>

<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">
    <div class="bg-white">
        <div class=" bg-blue">
            <div style="background: url(images/tbd.jpg) top left no-repeat; background-size: cover; height: 0px; ">
             
                <div class="container text-center text-shadow" style="padding: 50px 10px">
                    <h1 class="fg-white"></h1>
                </div>
            </div>
        </div>
       
            <div class="grid no-margin">
               <div class="row">
                    
                    <div class="span4">
                        
                    <nav class="horizontal-menu">
                                <ul>
                                    <li>
                                        <a class="dropdown-toggle fg-white  no-marker"></a>
                                    </li>

                                   <li>
                                    <a class="dropdown-toggle fg-blue  no-marker  text-bold text-shadow text-center" style="width: 100%; margin-bottom: 5px"href ="#" onclick ="ViewPaymentPending()">Payment Pending</a>
                                   <%-- <ul class="dropdown-menu fg-blue" data-role="dropdown" data-show="hover">
                                        <li>
                                            <a href="#" class="dropdown-toggle fg-blue ">Test1</a>
                                            <ul class="dropdown-menu fg-blue " data-role="dropdown" data-show="hover">
                                                <li><a href="../../../UIMyPersonal/AboutMe/MyInterests.aspx">My Interests</a></li>
                                                <li><a href="../../../UIMyPersonal/AboutMe/MyProfession.aspx">My Profession</a></li>
                                                <li><a href="">My Family</a></li>
                                            </ul>
                                        </li>
                                         <li>
                                            <a href="#" class="dropdown-toggle fg-blue ">Test2</a>
                                            <ul class="dropdown-menu fg-blue " data-role="dropdown" data-show="hover">
                                                <li><a href="../../../UIMyPersonal/Photos/MyPhotos.aspx">My Photos</a></li>
                                            </ul>
                                        </li>
                                    </ul>--%>
                                </li><br /><br /><br />

                                       <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow " style="width: 100%; margin-bottom: 5px">Stock Pending</a>
                                        <ul class="dropdown-menu fg-blue  " data-role="dropdown" data-show="hover"">
                                            <%--<li><a href="../../../UIGuestbook/Guestbook.aspx ">Sign In GuestBook</a></li>--%>
                                        </ul>
                                    </li><br /><br /><br />

                                       <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow" onclick ="ViewAuthorized()">Authorized</a>
                                        <ul class="dropdown-menu fg-blue  " data-role="dropdown" data-show="hover"">
                                            <%--<li><a href="../../../UIGuestbook/Guestbook.aspx ">Sign In GuestBook</a></li>--%>
                                        </ul>
                                    </li><br /><br /><br />

                                       <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow">Allocated</a>
                                        <ul class="dropdown-menu fg-blue  " data-role="dropdown" data-show="hover"">
                                            <%--<li><a href="../../../UIGuestbook/Guestbook.aspx ">Sign In GuestBook</a></li>--%>
                                        </ul>
                                    </li><br /><br /><br />

                                     <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow">Booked Shipment</a>
                                        <ul class="dropdown-menu fg-blue  " data-role="dropdown" data-show="hover"">
                                            <%--<li><a href="../../../UIGuestbook/Guestbook.aspx ">Sign In GuestBook</a></li>--%>
                                        </ul>
                                    </li><br /><br /><br />


                                       <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow">Dispatched</a>
                                        <ul class="dropdown-menu fg-blue  " data-role="dropdown" data-show="hover"">
                                            <%--<li><a href="../../../UIGuestbook/Guestbook.aspx ">Sign In GuestBook</a></li>--%>
                                        </ul>
                                    </li><br /><br /><br />

                                       <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow">Delivered</a>
                                        <ul class="dropdown-menu fg-blue  " data-role="dropdown" data-show="hover"">
                                            <%--<li><a href="../../../UIGuestbook/Guestbook.aspx ">Sign In GuestBook</a></li>--%>
                                        </ul>
                                    </li><br /><br /><br />

                                       <li>
                                        <a href="#" class="dropdown-toggle fg-blue no-marker text-shadow">Cancelled</a>
                                        <ul class="dropdown-menu fg-blue  " data-role="dropdown" data-show="hover"">
                                            <%--<li><a href="../../../UIGuestbook/Guestbook.aspx ">Sign In GuestBook</a></li>--%>
                                        </ul>
                                    </li><br /><br /><br />

                                </ul>
                            </nav>
                        
                        </div>
                        

                    <div class="span12">
                            <div class="tile-content">
                                <div class="panel no-border">
                                    <div id ="ViewOrdersLabel" class="panel-header bg-orange fg-white text-shadow">Order History</div>
                                    <div id="example">
        <div id="grid"></div>



 <script type="text/JavaScript"
 src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js">
  </script>
 <!-- Kendo JavaScript -->
    <script src="<%= ResolveUrl("~/js/jszip.min.js")%>"></script>
    <script src="<%= ResolveUrl("~/js/kendo.all.min.js")%>"></script>
<script type="text/JavaScript">
    function ViewAuthorized() {
        ViewOrdersLabel.textContent = "Authorized Orders";
        $.ajax({
            type: "post",
            url: "OrdersFulfillment.aspx/GetAuthorizedOrders",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                var jsonResult = JSON.parse(result.d);

                $("#grid").kendoGrid({
                    dataSource: {
                        data: jsonResult.Orders,
                        schema: {
                            model: {
                                fields: {
                                    OrderId: { type: "number" },
                                    BillCity: { type: "string" },
                                    OrderDate: { type: "date" },
                                    TotalAmount: { type: "number" },
                                }
                            }
                        },
                        pageSize: 20
                    },
                    height: 550,
                    scrollable: true,
                    sortable: true,
                    filterable: true,
                    pageable: {
                        input: true,
                        numeric: false
                    },
                    columns: [
                    { field: "OrderId", title: "OrderId" },
                    { field: "TotalAmount", title: "Total Amount" },
                    { field: "OrderDate", title: "Order Date", type: "date", format: "{0:dd-MMM-yyyy hh:mm:ss tt}", parseFormats: ["yyyy-MM-dd'T'HH:mm:ss.zz"] },
                    { field: "BillCity", titile: "City" },
                    ]
                });

            },
            error: function (xhr, status, error) {
                OnFailure(error);
            }


        });
    }
    function ViewPaymentPending() {
        ViewOrdersLabel.textContent = "Payment Pending Orders";
        $.ajax({
            type: "post",
            url: "OrdersFulfillment.aspx/GetPaymentPendingOrders",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (result) {
                var jsonResult = JSON.parse(result.d);

                $("#grid").kendoGrid({
                    dataSource: {
                        data: jsonResult.Orders,
                        schema: {
                            model: {
                                fields: {
                                    OrderId: { type: "number" },
                                    TotalAmount: { type: "number" },
                                    OrderDate: { type: "date" },
                                    BillCity: { type: "string" },
                                }
                            }
                        },
                        pageSize: 20
                    },
                    height: 550,
                    scrollable: true,
                    sortable: true,
                    filterable: true,
                    pageable: {
                        input: true,
                        numeric: false
                    },
                    columns: [
                    { field: "OrderId", title: "OrderId" },
                    { field: "TotalAmount", title: "Total Amount" },
                    { field: "OrderDate", title: "Order Date", type: "date", format: "{0:dd-MMM-yyyy hh:mm:ss tt}", parseFormats: ["yyyy-MM-dd'T'HH:mm:ss.zz"] },
                    { field: "BillCity", titile: "City" }
                    ]
                });

            },
            error: function (xhr, status, error) {
                OnFailure(error);
            }


        });
    }
</script>

    </div>
                                    
                                </div>
                            </div>
                        </div>

                    </div>
            </div>

    <script src="js/hitua.js"></script>
  </div>
</asp:Content>