<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/MasterPage.master" CodeFile="Default.aspx.cs" Inherits="_Default" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

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
                    
                    <div class="span3"></div>

                    <div class="span15">
                            <div class="tile-content">
                                <div class="panel no-border">
                                    <div id ="ViewOrdersLabel" class="panel-header bg-lightgreen fg-white text-shadow text-center">Welcome to Capillary Product Management</div>
                                    <div class="span12 padding10 text-center " >
                                            <img src="images/CapillaryProducts.jpg"  onclick ="OrderFulfillment.aspx"/> <br />
                                            <img src="images/MartjackProducts.jpg" onclick ="OrderFulfillment.aspx" />
                                    </div>
                    </div>
                                    
                                
                            </div>
                        </div>

                    </div>
            </div>

    <script src="js/hitua.js"></script>
  </div>
</asp:Content>

