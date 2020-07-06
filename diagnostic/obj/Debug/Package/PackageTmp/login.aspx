﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="diagnostic.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Login</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        @media (max-width: 768px) {
            .small-scr{
                width:70vw !important;
                margin-left:15vw !important;
            }
        }
        .auto-style1 {
            left: 20px;
        }
         #back {
            background-image:url('image/2.PNG');
            background-attachment: fixed;
            background-repeat: no-repeat;
            min-height: 650px;
            background-position: center;
            background-size: cover;
        }
    </style>
     <script type="text/javascript">
        function isAlpha(keyCode)
        {
            return ((keyCode >= 65 && keyCode <= 90) || keyCode == 8 || keyCode == 32 ||keyCode==190);
        }

        
    </script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]--> 
</head>
<body>
    <form id="form1" runat="server">
   <div class="container" id="back">


       <div class="row">
                    <div class="col-lg-6 col-lg-offset-6">
                    <div class="navbar navbar-default navbar-fixed-top col-lg-8 col-lg-offset-2  col-sm-8 col-sm-offset-2" role="navigation">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="main.aspx" ><span style="color:dodgerblue;font-family:Vivaldi"><img src="image/logo.png" height="30" /> We Care</span></a>
                        </div> 
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li ><a href="login.aspx" style="color:dodgerblue;background-color:transparent;">HOME</a></li>
                                 <li><a href="login.aspx"style="color:dodgerblue;">ABOUT</a></li>
                                 <li><a href="signup.aspx"style="color:dodgerblue;">SIGNUP</a></li>

                                <li class="active"><a href="#"style="color:dodgerblue;">SIGN IN</a></li>
                                
                            </ul>
                        </div>
                    </div>
                        </div>
                </div>



<div class="row">
    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
<div class=" login-panel panel panel-default" style="margin-top:20%;height:415px !important">
<div class="panel-heading" style="background-color:lightblue;color:white;">
    <h1 class="panel-title" style="font-size:30px !important;text-align:center !important; ">Login</h1>
</div>
    <img src="image/man.png" class="img-responsive center-block"  style="margin-top:20px; border-radius:50px;"/>
    <div class="panel-body">
        <div class="form-group">
<label for="emailField" style="color:lightskyblue;">Enter your username</label>
            <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                <asp:TextBox ID="TextBoxusername" runat="server" CssClass="form-control" TextMode="SingleLine" onkeyup="keyUp(event.keyCode)" onkeydown="return isAlpha(event.keyCode);" onpaste="return false;"></asp:TextBox>
            </div>
        </div>

        <div class="form-group">
<label for="emailField" style="color:lightskyblue;">Enter your password</label>
            <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                <asp:TextBox ID="TextBoxpassword" runat="server" CssClass="form-control" TextMode="Password" onkeyup="keyUp(event.keyCode)" onkeydown="return isAlpha(event.keyCode);" onpaste="return false;"></asp:TextBox>
            </div>
        </div>
        <div class="checkbox">
            
                <asp:CheckBox ID="CheckBox1" runat="server" Style="float:left;margin-left:2%;" />
            <asp:Label ID="lblremember" runat="server" Text="Remember Me?" Style="color:deepskyblue;"></asp:Label>
             &nbsp &nbsp;<a href="passwordrecover.aspx" style="color:lightskyblue;">Forgot Password</a>
          
            <%--  --%>

        </div>
        <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label><br />
        <asp:Button ID="Buttonlogin" runat="server" Text="Login"  CssClass="btn" OnClick="Buttonlogin_Click" ForeColor="#0099CC" />
        <asp:LinkButton ID="lkbsignup" runat="server" PostBackUrl="~/signup.aspx" Style="float:right;margin-right:10%;">Sign Up</asp:LinkButton>
    </div>
</div>
    </div>
</div>
    </div>
          <footer>
        <div class="container">
            <p class="pull-right"><a href="#"> Back To Top</a></p>
            <p>&copy; 2017 AMblin Lab.Diagnos.com &middot; <a href="#" style="color:dodgerblue;">SERVICE</a> &middot; <a href="#" style="color:dodgerblue;">LOCATION</a> &middot; <a href="#" style="color:dodgerblue;">CONTACT</a> &middot; </p> 
               
        </div>
    </footer>
        
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>