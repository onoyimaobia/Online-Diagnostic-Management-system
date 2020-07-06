<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="diagnostic.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>CONTACT</title>

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

                    <li><a href="Home.aspx" style="color:dodgerblue;">HOME <span class="sr-only">(current)</span></a></li>
                    <li><a href="#" style="color:dodgerblue;">ABOUT</a></li>
                       <li><a href="service.aspx" style="color:dodgerblue;">SERVICE</a></li>
                       <li class="active"><a href="contact.aspx" style="color:dodgerblue;">CONTACT</a></li>
                       <li><a href="Test1.aspx" style="color:dodgerblue;">TEST</a></li>
                      
                 
                       <li><a href="symptom.aspx" style="color:dodgerblue;">SYMPTOMS</a></li>
                       <li><a href="appoint.aspx" style="color:dodgerblue;">APPOINTMENT</a></li>
                       <li><a href="logout.aspx" style="color:dodgerblue;">LOGOUT</a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
        </nav>
                     </div>
                 </div>
             
     <div class="col-lg-10  col-lg-offset-1 col-xs-11" style="background-color:#EEEEEE;">
         <div class="col-lg-7 img-responsive" style="float:left;background-color:;">
            <img src="image/contact.jpg" class="img-responsive" />
         </div>
         <div class="col-lg-5" style="float:right;background-color:;min-height:200px !important;">
           <div class=" login-panel panel panel-default" style="margin-top: 0px; height: 410px !important ;background-color:#EEEEEE; border-radius:3px;border-color:lightskyblue;">
             <div class="panel-heading" style=" color:dodgerblue;">
               <h1 class="panel-title" style="font-size: 20px !important; text-align: center !important;">Contact</h1>
            </div>
               <span class="glyphicon  glyphicon-home" style="float:left;margin-left:10px;background-color:dodgerblue;">

               </span><strong style="float:left;margin-left:5px;color:dimgray;">ADDRESS</strong><br />
               <p style="float:left;margin-left:10px;color:dodgerblue">AMBLIN  Laboratory  Diagnostic Center<br />3, Nwosu Terrace,Enugu North,Ogui.<br />60 Chime Ave, New Haven, Enugu, Enugu State </p><br />
             
              <p style="margin-top:55px; margin-left:10px;"><span class="glyphicon glyphicon-envelope" style="background-color:dodgerblue"></span><strong style="margin-left:5px;color:dimgrey;">EMAIL</strong></p>
                <p style="margin-left:10px;"><a href="#">Amblinlabservice@gmail.com</a></p>
               <img src="image/twitter.fw.png" /><strong style="color:dimgray;">TWITTER</strong>
               <p style="margin-left:10px;"><a href="#"> @Amblinlabservice</a></p>
               <p style="margin-left:10px;"><img src="image/facebook.fw.png" /><strong style="margin-left:5px; color:dimgray;">FACEBOOK</strong></p>
               <p style="margin-left:10px;"><a href="#">www.faceboo/Amblinlabservice</a></p><br />
                <span class="glyphicon   glyphicon-phone-alt" style="float:left;margin-left:10px; background-color:dodgerblue;">

               </span><strong style="float:left;margin-left:5px;color:dimgray;">TELEPHONE</strong>
              <br /><p style="float:left; margin-left:20px;color:dodgerblue;">+23442258561</p><br/>
            <h5 style="margin-left:15px; color:dodgerblue;">07098802825</h5> 
               
           </div>
            </div>
         
          <div class="col-lg-7" style="float:left;background-color:;">
              <div class="panel-heading" style="background-color:; color: white;">
                                <h3 class="panel-title" style="font-size: 30px !important; text-align: center !important;">Send Us Message</h3>
                            </div>
                           
                        <div class="center-page">
                       <div class="col-xs-11">
                           <div class="col-lg-6">
                   <asp:TextBox ID="txtname" runat="server" Class="form-control" placeholder="Name" ToolTip="only character is allow" onkeyup="keyUp(event.keyCode)" onkeydown="return isAlpha(event.keyCode);" onpaste="return false;"></asp:TextBox><br />
                           
                           </div>
                           <div class="col-lg-6">
                            <asp:TextBox ID="txtemail" runat="server" Class="form-control" placeholder="Email" ReadOnly="false" TextMode="Email" ></asp:TextBox><br />
                           </div>
                             </div>
                             <div class="col-xs-11">
                                 <div class="col-lg-6">
                            <asp:TextBox ID="txtcontact" runat="server" Class="form-control" placeholder="Phone Number" onkeyup="keyUp(event.keyCode)" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;" ToolTip="only number is allow"  ></asp:TextBox><br />
                           </div>
                                  <div class="col-lg-6">
                   <asp:TextBox ID="txtsubject" runat="server" Class="form-control" placeholder="Subject" ToolTip="only character is allow" onkeyup="keyUp(event.keyCode)" onkeydown="return isAlpha(event.keyCode);" onpaste="return false;"></asp:TextBox><br />
                           
                           </div>
                                 </div>
                             <div class="col-xs-11">
                   <asp:TextBox ID="txtmessage" runat="server" Class="form-control" placeholder="Message" ToolTip="only character is allow" TextMode="MultiLine" onkeyup="keyUp(event.keyCode)" onkeydown="return isAlpha(event.keyCode);" onpaste="return false;"></asp:TextBox><br />
                           
                           </div>
                            <div class="col-xs-11">
                            <asp:Label ID="lblmsg" runat="server" Text="" Style="float:left;"></asp:Label>
                            <asp:Button ID="btnmessage" runat="server" Text="Submit" OnClick="btnmessage_Click"  style="float:right; margin-right:10px;border:5px groove gray;color:white;" />
              </div>
                            </div>
         </div>
     </div>
              <footer>
        <div class="container">
            <div class="row">
                 <div class="col-lg-10 col-lg-offset-1">
            <p class="pull-right"><a href="#"> Back To Top</a></p>
            <h6 style="color:lightskyblue;">.......&copy; 2017 AMblin Lab.Diagnos.com &middot; <a href="service.aspx" style="color:dodgerblue;">SERVICE</a> &middot; <a href="location.aspx" style="color:dodgerblue;">LOCATION</a> &middot; <a href="contac.aspx" style="color:dodgerblue;">CONTACT</a> &middot; </h6> 
               </div>
                </div>
        </div>
    </footer>
         
    </div>
    
    </form>
     <script type="text/javascript" src="/js/Scripts/jquery-3.1.1.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/js/custom-script.js"></script>
</body>
</html>
