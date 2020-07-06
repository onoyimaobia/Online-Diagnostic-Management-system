<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="diagnostic.signup" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SignUp</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        @media (max-width: 768px) {
            .small-scr{
                width:70vw !important;
                margin-left:15vw !important;
            }
        }
        #back {
            background-image:url('image/med2.png');
            
            background-repeat: no-repeat;
            min-height: 650px;
            background-position: center;
            background-size: cover;
        }
        .navbar {
            background-color: white;
            margin-top: 20px;
        }
       /*.center-page {
        height:300px;
        width:300px;
        position:absolute;
        top:0;
        bottom:0;
        left:0;
        right:0;
        margin:auto;
        }*/
    </style>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]--> 
    <script type="text/javascript">
        function isNumeric(keyCode)
        {
            if (keyCode == 16)
                isShift = true;
            return ((keyCode >= 48 && keyCode <= 57 || keyCode == 8 || (keyCode >= 96 && keyCode <= 105)) && isShift == false);
        
        }
       
    </script>
    <script type="text/javascript">
        function isAlpha(keyCode)
        {
            return ((keyCode >= 65 && keyCode <= 90) || keyCode == 8 || keyCode == 32 ||keyCode==190);
        }

        
    </script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="container" id="back">
        <div class="row">
            <div class="container">
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
                                 <li><a href="login.aspx"style="color:dodgerblue;font-family:Pristina;">ABOUT</a></li>
                                 
                                <li><a href="login.aspx"style="color:dodgerblue;">SIGN IN</a></li>
                                <li class="active"><a href="signup.aspx"style="color:dodgerblue;"> SIGN UP</a></li>
                            </ul>
                        </div>
                    </div>
                        </div>
                </div>
               
                <div class="row">
                    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
                        <div class=" login-panel panel panel-default" style="margin-top: 40px; height:800px !important; margin-top:100px;">
                            <div class="panel-heading" style="background-color:deepskyblue; color: white;">
                                <h1 class="panel-title" style="font-size: 30px !important; text-align: center !important;">Register</h1>
                            </div>
                            <img src="image/man.png" class="img-responsive center-block" style="margin-top: 20px; border-radius: 50px;" />
                        
                        <div class="center-page">
                       <div class="col-xs-11">
                            <asp:TextBox ID="txtname" runat="server" Class="form-control" placeholder="Name" ToolTip="only character is allow" onkeyup="keyUp(event.keyCode)" onkeydown="return isAlpha(event.keyCode);" onpaste="return false;"></asp:TextBox><br />
                           </div>
                             
                             <div class="col-xs-11">
                            <asp:TextBox ID="txtage" runat="server" Class="form-control" placeholder="Age" onkeyup="keyUp(event.keyCode)" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;" ToolTip="only number is allow"  ></asp:TextBox><br />
                           </div>
                            
                            <div class="col-xs-11">
                            <asp:TextBox ID="txtemail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox><br />
                           </div>
                            <div class="col-xs-11">
                            <asp:TextBox ID="txtaddress" runat="server" Class="form-control" placeholder="Address" ToolTip="only character is allow" ></asp:TextBox><br />
                           </div>
                            <div class="col-xs-11"> 
                            <asp:TextBox ID="txtcontact" runat="server" Class="form-control" placeholder="Phone Number" ToolTip="only number is allow" onkeyup="keyUp(event.keyCode)"  onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox><br />
                           </div>
                            <div class="col-xs-11">
                                <asp:DropDownList ID="Ddlsex" runat="server" placeholder="Sex" Class="form-control" style=" text-align: left;" Height="30px" Width="285px"></asp:DropDownList><br />
                           </div>
                             <div class="col-xs-11">
                                <asp:DropDownList ID="Ddlblood" runat="server" placeholder="" Class="form-control" style=" text-align: left;" Height="30px" Width="285px"></asp:DropDownList><br />
                           </div>
                             
                             <div class="col-xs-11">
                                <asp:DropDownList ID="Ddlgenotype" runat="server" placeholder="" Class="form-control" style=" text-align: left;" Height="30px" Width="285px"></asp:DropDownList><br />
                           </div>
                            <div class="col-xs-11">
                            <asp:TextBox ID="txtusername" runat="server" Class="form-control"  placeholder="username" ToolTip="only character is allow"></asp:TextBox><br />
                           </div>
                            <div class="col-xs-11">
                            <asp:TextBox ID="txtpassword" runat="server" Class="form-control"  placeholder="password" TextMode="Password" OnTextChanged="txtpassword_TextChanged"></asp:TextBox><br />
                           </div>
                            <div class="col-xs-11">
                            <asp:TextBox ID="txtconfirm" runat="server" Class="form-control" placeholder="Confirm password" TextMode="Password"></asp:TextBox><br />
                                &nbsp;
                                <asp:Button ID="Btncreate" runat="server" ForeColor="#00CC00" Height="30px" Text="Create" Width="84px" OnClick="Btncreate_Click" OnClientClick="return confirm('you are about to submit this page')" />

                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input id="Reset1" type="reset" value="reset" />&nbsp;&nbsp;&nbsp;<br />
                                &nbsp;&nbsp;&nbsp;<asp:Label ID="lblmsg" runat="server"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                           </div>
                       

                       
                       

                        </div>
                            </div>
                    </div>
                    </div>
              
                <!--<div class="center-page">
                    <label>First Name</label>
                    <asp:TextBox ID="txtfirst" runat="server"></asp:TextBox>
                </div>-->
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
