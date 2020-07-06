<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="location.aspx.cs" Inherits="diagnostic.location" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>LOCATION</title>

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
         <div class="container">
             <div class="row">
             <div class="col-lg-10 col-lg-offset-1">
        <div class="header-banner">
            <img class="img-responsive header_logo" src="image/refresh1.fw.png" alt="site_logo" /> 
        </div>
                 </div>
                 </div>
             <div class="row">
                 <div class="col-lg-10 col-lg-offset-1">
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

                    <li><a href="Default.aspx" style="color:dodgerblue;">HOME <span class="sr-only">(current)</span></a></li>
                    <li><a href="about.aspx" style="color:dodgerblue;">ABOUT</a></li>
                       <li><a href="#" style="color:dodgerblue;">SERVICE</a></li>
                       <li class="active"><a href="contact.aspx" style="color:dodgerblue;">LOCATION</a></li>
                       <li><a href="Test1.aspx" style="color:dodgerblue;">TEST</a></li>
                      
                 
                       <li><a href="symptom.aspx" style="color:dodgerblue;">PRE-DIAGNOSIS</a></li>
                       <li><a href="appointment.aspx" style="color:dodgerblue;">APPOINTMENT</a></li>
                       <li><a href="login.aspx" style="color:dodgerblue;">LOGOUT</a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
        </nav>
                     </div>
                 </div>
                 <div class="col-lg-10  col-lg-offset-1 col-xs-11" style="background-color:#EEEEEE;">
                     <div class="row">
                         <h4 style="color:cadetblue;">We currently have two branches in Enugu. There are plans for continued expansion across the country. </h4>
                             <div class="col-lg-4" style="background-color:;">
                         <div class="col-lg-12" style="min-height:50px !important;">
                             <img src="image/nwosu1.PNG" class="img-responsive" height="30" /><br />
                                 <h5 style="color:lightskyblue;">Address </h5>
                                 <h6 style="color:lightskyblue;">Nwosu Terrace Street, Asata, Enugu, Nigeria</h6>
                                 <h5 style="color:lightskyblue;">Tel</h5>
                                 <h6 style="color:lightskyblue;">07098802825</h6>
                             </div>
                         </div>
                         <div class="col-lg-4" style="background-color:;">
                             <h3 style="color:white;">Our Working Hour</h3>
                             <h6 style="color:lightskyblue;">Monday	  8AM–6PM</h6>
                             <h6 style="color:lightskyblue;">Tuesday   8AM–6PM</h6>
                             <h6 style="color:lightskyblue;">Wednesday	 8AM–6PM</h6>
                             <h6 style="color:lightskyblue;">Thursday   8AM–6PM</h6>
                             <h6 style="color:lightskyblue;">Friday	  8AM–6PM</h6>
                             <h6 style="color:skyblue;">Saturday	8AM–6PM</h6>
                             <h6 style="color:lightskyblue;">Sunday	Closed</h6>
                         </div>
                         <div class="col-lg-4" style="background-color:; min-height:100px !important">
                            <img src="image/nwosu2.PNG" class="img-responsive" /><br />
                             <h5 style="color:lightskyblue;">Addres</h5>
                             <h6 style="color:lightskyblue;">60 Chime Ave, New Haven, Enugu, Nigeria</h6>
                             <h5 style="color:lightskyblue;">Tel</h5>
                             <h6 style="color:lightskyblue;">+23442258561</h6>
                         </div>
                     </div>
                     </div>
   
     
    
          <div class="row">
              <div class="col-lg-10 col-lg-offset-1">
            <h6 style="color:lightskyblue;">.......&copy; 2017 AMblin Lab.Diagnos.com &middot; <a href="service.aspx" style="color:dodgerblue;">SERVICE</a> &middot; <a href="location.aspx" style="color:dodgerblue;">LOCATION</a> &middot; <a href="contact.aspx" style="color:dodgerblue;">CONTACT</a> &middot; </h6> 
             </div>  
              </div>
       
    
    </div>
    </form>
     <script type="text/javascript" src="/js/Scripts/jquery-3.1.1.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/js/custom-script.js"></script>
</body>
</html>
