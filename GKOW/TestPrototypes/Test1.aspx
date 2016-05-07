

<html>
    <head runat="server">
    <link rel ="SHORTCUT ICON" href="/images/MyPhotos/1.jpg" />
    
     <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="product" content="Gopala Website"/>
    <meta name="description" content="Gopala Website"/>
    <meta name="author" content="Gopala Krishna"/>
    <meta name="keywords" content="js, css, metro, framework, windows 8, metro ui, IIT Bombay, Microsoft"/>

    <link href="../css/metro-bootstrap.css" rel="stylesheet"/>
    <link href="../css/metro-bootstrap-responsive.css" rel="stylesheet"/>
    <link href="../css/iconFont.css" rel="stylesheet"/>
    <link href="../css/docs.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/search/searchstyles.css" />


    <!-- Load JavaScript Libraries -->
    <script src="<%= ResolveUrl("~/js/jquery/jquery.min.js")%>"></script>
    <script src="<%= ResolveUrl("~/js/jquery/jquery.widget.min.js")%>"></script>
    <script src="<%= ResolveUrl("~/js/jquery/jquery.mousewheel.js")%>"></script>


    <!-- Metro UI CSS JavaScript plugins -->
    <script src="<%= ResolveUrl("~/js/load-metro.js")%>"></script>
    

    <!-- Local JavaScript -->
    <script src="<%= ResolveUrl("~/js/docs.js")%>"></script>
  <title> Search </title>
      
</head>
    <body class ="metro">
        <header class ="" data-load ="../Header.aspx"></header>
     
     


     <form id="search" method="post" >
     <div class="panel text-center">  
                 <div class="grid no-margin">
                 <div class="row padding20">

                <input id="searchInput" type="text" size="70" placeholder="Search..." />
                <input type="submit"value="Search" id="submitButton"/> <br />


                <input type="radio" name="check" value="web" id="searchWeb" checked />  <span class="text-shadow fg-black">Search Web</span>
                <input type="radio" name="check" value="site" id="searchSite"  />  <span class="text-shadow fg-black">Search Gopala-Krishna.com</span>
   
                </div>
                </div>
         </div>
      </form>
       
           
      
  <script src="js/search/searchscript.js"></script>

 <div class="panel text-center">
    <div class="grid">
            <div class="row padding15">
                                                         
                <div class="accordion" data-role="accordion" data-closeany="false">

                <div class="accordion-frame  " >
                    <a class="heading text-center text-bold bg-blue fg-black text-shadow"><h4>Google Search Results</h4></a>
                                                               
                            <div id="resultsDiv">

                            </div>


                                                               
                </div>

                <div class="accordion-frame ">
                    <a class="heading text-center text-bold  bg-blue  fg-black text-shadow"><h4>Bing Search Results</h4></a>

                </div>
                </div>
            </div>
                                
</div>
</div>


        </body>
</html>
