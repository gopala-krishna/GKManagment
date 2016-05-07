<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Test.aspx.cs" Inherits="Test" %>


<asp:Content ContentPlaceHolderID ="ContentPlaceHolder1" runat ="server">

    


    <div>
           <button class="button" id="createWindow">Create Window</button>
    </div>



        <script>
                    $(function(){
                        $("#createWindow").on('click', function(){
                            $.Dialog({
                                autoopen: true,
                                modal: true,
                                shadow: true,
                                overlay: false,
                                icon: '<span class="icon-rocket"></span>',
                                title: 'Title',
                                width: 500,
                                padding: 100,
                                content: 'Window content here'
                            });
                        });
                    })
        </script>



    

</asp:Content>