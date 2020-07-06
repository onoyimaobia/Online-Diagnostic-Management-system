<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="diagnostic.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>HOME</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
     <form id="form1" runat="server">
    <!-- container -->
    <div class="container">
        <div class="header-banner">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                         </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="image/med2.png" class="img-responsive" alt="...." />
                            <div class="carousel-caption">
                               <h2>...</h2>
                            </div>
                        </div>
                        <div class="item">
                            <img src="image/gruop3.png" class="img-responsive" alt="..."/>
                            <div class="carousel-caption">
                                <h2>...</h2>
                            </div>
                        </div>
                        <div class="item">
                            <img src="image/slide2.fw.png" class="img-responsive" alt="..."/>
                            <div class="carousel-caption">
                                <h2>...</h2>
                                <
                            </div>
                        </div>
                        <div class="item">
                            <img src="image/slide5.fw.png" class="img-responsive" alt="..."/>
                            <div class="carousel-caption">
                               <h2>...</h2>
                            </div>
                        </div>
                        <div class="item">
                            <img src="image/med3.png" class="img-responsive" alt="..."/>
                            <div class="carousel-caption">
                                <h2>....</h2>
                                
                            </div>
                        </div>
                       <div class="item">
                            <img src="image/slide4.fw.png" class="img-responsive" alt="..."/>
                            <div class="carousel-caption">
                                <h2>...</h2>
                                
                            </div>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            <!--<img class="img-responsive header_logo" src="image/ogo.png" alt="site_logo" />--->
            <div class="col-lg-5" style="margin-top:-275px;">
            <asp:Panel ID="Panel1" runat="server">
            <h3>&nbsp&nbsp<asp:Label ID="message" runat="server" Text="" ></asp:Label></h3>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
                </asp:Panel>&nbsp&nbsp
            <asp:Panel ID="Panel2" runat="server">
                <h3>&nbsp&nbsp<asp:Label ID="msg" runat="server" Text=""></asp:Label></h3>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                </asp:Panel>

                &nbsp&nbsp<div class=" col-lg-6 login-panel panel panel-default" id="agbo" runat="server" style="height:70px !important; opacity:0.7; background-color:;border-color:#23008C;margin-top:-23px;margin-left:15px;">
                    <!--<h1 class="panel-title" style="font-size:30px !important;text-align:center !important;color:orangered ">Job Role</h1>--->
                    <div class="panel-body" style="float:left;margin-left:-5px;">
                       &nbsp&nbsp<asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Style="font-family:Arial;font-size:20px;color:#23008C;margin-left:-15px;" />&nbsp&nbsp&nbsp&nbsp&nbsp
                        <asp:Button ID="Button2" runat="server" Text="SignUp" OnClick="Button2_Click"  Style="font-family:Arial;font-size:20px;color:#23008C;"/>
                           <%--<asp:HyperLink ID="HyperLink2" runat="server" Text="log in" NavigateUrl="~/login.aspx" ></asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" runat="server" Text="Register" NavigateUrl="~/signup.aspx" ></asp:HyperLink>---%>
                        </div>
                                </div>

                            </div>
               
            
             </div>  
        
        <nav class="navbar navbar-default navigation">
              <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false" >
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="#" ><span style="color:dodgerblue;font-family:Vivaldi"><img src="image/logo.png" height="30" /> We Care</span></a>
                   
                </div>
                  

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div  id="bs-example-navbar-collapse-1" class="collapse navbar-collapse" >
                  <ul class="nav navbar-nav navbar-right">

                    <li class="active"><a href="Default.aspx" style="color:dodgerblue;">HOME <span class="sr-only">(current)</span></a></li>
                    <li><a href="about.aspx" style="color:dodgerblue;">ABOUT</a></li>
                       <li id="service" runat="server"><a href="service.aspx" style="color:dodgerblue;">SERVICE</a></li>
                       <li id="contact" runat="server"><a href="contact.aspx" style="color:dodgerblue;">CONTACT</a></li>
                       <li id="tst" runat="server"><a href="Test1.aspx" style="color:dodgerblue;">TEST</a></li>
                      <li id="pre" runat="server"><a href="symptom.aspx" style="color:dodgerblue;">PRE_DIAGNOSIS</a></li>
                       <li id="appoint" runat="server"><a href="appoint.aspx" style="color:dodgerblue;">APPOINTMENT</a></li>
                       <li id="changepassword" runat="server"><a href="changePassword.aspx" style="color:dodgerblue;">CHANGE PASSWORD</a></li>
                       <li  id="savetogridview" runat="server"><a href="savetogridview.aspx" style="color:dodgerblue;">ADMIN</a></li>
                       <li id="uka" runat="server"><a href="download.aspx" style="color:dodgerblue;">ADMIN ONLY</a></li>
                      <li id="toochi" runat="server"><a href="logout.aspx" style="color:dodgerblue;">LOGOUT</a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
        </nav>
        <div id="content" class="row">
        <div class="col-lg-3 sidebar">
            <img src="image/hema.fw.png" />
            <p style="color:#9797A6;">Blood extracting using seimic energy for painless test.
              it involves treading diseases that affect the production of blood and its components,such as blood cells etc.
                This test is affordable.<a href="heamatology.aspx"style="color:dodgerblue;">READ MORE</a>
            </p>
          </div>
            <div class="col-lg-3">
               <img src="image/urine.fw.png" />
            <p style="color:#9797A6;">Accurate and secure testing of urine for disease and drugs and medicines.
                This test analyze your urine for the presence 
                of certain illagal drugs. <a href="UrineandDrug.aspx"style="color:dodgerblue;">READ MORE</a>

            </p>
            </div>
            <div class="col-lg-3">
                <img src="image/xray1.fw.png" />
            <p style="color:#9797A6;">Fast and clear x-ray results. you'll be assisted by our friendly staff all the way. 
                This test helps your doctor view the 
                inside of your body without having to make an incisions.This test is affordable.
               <a href="heamatology.aspx"style="color:dodgerblue;">READ MORE</a>

                 
            </p>
            </div>
         <div class="col-lg-3">
                <img src="image/dna.fw.png" />
            <p style="color:#9797A6;">State of the art testing foe DNA that's to behave fast and accurate result.
                 The lab speciments are free from contamination and patient being evaluated.
                this test is done at an affordable price.<%--<a href="UrineandDrug.aspx"style="color:dodgerblue;">READ MORE</a>--%>
            </p>
            </div>
        </div>
        <%--<div class="col-lg-6 col-lg-offset-3">
       <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="message1" runat="server" Text=""></asp:Label>&nbsp&nbsp 
                </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                <asp:Label ID="msg1" runat="server" Text="Label"></asp:Label>&nbsp&nbsp
                <asp:HyperLink ID="inklogin" runat="server" Text="log in" NavigateUrl="~/login.aspx"></asp:HyperLink>&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Register" NavigateUrl="~/signup.aspx"></asp:HyperLink>

            </asp:Panel>
        </div>--%>
        
    </div>
    <hr />

    <footer>
        <div class="container">
            <p class="pull-right"><a href="#"> Back To Top</a></p>
            <p>&copy; 2017 AMblin Lab.Diagnos.com &middot; <a href="#" style="color:dodgerblue;">SERVICE</a> &middot; <a href="#" style="color:dodgerblue;">LOCATION</a> &middot; <a href="#" style="color:dodgerblue;">CONTACT</a> &middot; </p> 
            
        </div>
         
        
    </footer>
        
   
    <!-- /container -->
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    
</body>
</html>
