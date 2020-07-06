<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="diagnostic.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>profile</title>

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
    <div>
    <div class="row">
    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
<div class=" login-panel panel panel-default" style="margin-top:20%;height:500px !important">
<div class="panel-heading" style="background-color:lightblue;color:white;">
    <h1 class="panel-title" style="font-size:30px !important;text-align:center !important; ">Profile</h1>
</div>
    <img src="image/man.png" class="img-responsive center-block"  style="margin-top:20px; border-radius:50px;"/>
    <div class="panel-body">
        <div class="form-group">
<label for="emailField" style="color:lightskyblue;">Name:</label>
            <asp:Label ID="lblname" runat="server" Text=""></asp:Label> 
        </div>

        <div class="form-group">
<label for="emailField" style="color:lightskyblue;">Age:</label>
            <asp:Label ID="lblage" runat="server" Text=""></asp:Label>
        </div>
       <div class="form-group">
<label for="emailField" style="color:lightskyblue;">Contact:</label>
            <asp:Label ID="lblcontact" runat="server" Text=""></asp:Label>
        </div>
        <div class="form-group">
<label for="emailField" style="color:lightskyblue;">Email:</label>
            <asp:Label ID="lblemail" runat="server" Text=""></asp:Label>
        </div>
        <div class="form-group">
<label for="emailField" style="color:lightskyblue;">Address:</label>
            <asp:Label ID="lbladdress" runat="server" Text=""></asp:Label>
        </div>
        <div class="form-group">
<label for="emailField" style="color:lightskyblue;">Blood Group:</label>
            <asp:Label ID="lblblood" runat="server" Text=""></asp:Label>
        </div>
        <div class="form-group">
<label for="emailField" style="color:lightskyblue;">Sex:</label>
            <asp:Label ID="lblsex" runat="server" Text=""></asp:Label>
        </div>
        <div class="form-group">
<label for="emailField" style="color:lightskyblue;">Genotype:</label>
            <asp:Label ID="lblgen" runat="server" Text=""></asp:Label>
        </div>
        <asp:Button ID="redirect" runat="server" Text="Continue" OnClick="redirect_Click"  CssClass="btn" ForeColor="#0099CC" />
    </div>
</div>
    </div>
</div>
    </div>
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
