<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test1.aspx.cs" Inherits="diagnostic.Test1" %>-

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>TEST</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        .toochi{
            
           /* background-image:url('image/4.PNG');
            background-size:cover;
            background-position:center;
            background-attachment:fixed;
            background-repeat:no-repeat;*/

        }
        .GridPager a, .GridPager span
        {
            display:block;
            height:15px;
            width:15px;
            font-weight:bold;
            text-align:center;
            text-decoration:none;
        }
        .GridPager a{
            background-color:#f5f5f5;
            color:#969696;
            border: 1px solid #969696;
        }
        .GridPager span{
            background-color:#A1DCF2;
            color:white;
            border: 1px solid #3AC0F2;
        }
    </style>
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
            <img class="img-responsive header_logo" src="image/med2.png" alt="site_logo" /> 
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
                    <li ><a href="Home.aspx" style="color:dodgerblue;">HOME</a></li>
                    <li><a href="about.aspx" style="color:dodgerblue;">ABOUT</a></li>
                       <li><a href="service.aspx" style="color:dodgerblue;">SERVICE</a></li>
                       <li><a href="contact.aspx" style="color:dodgerblue;">CONTACT</a></li>
                       <li><a href="appoint.aspx" style="color:dodgerblue;">APPOINTMENT</a></li>
                      
                    
                       <li><a href="symptom.aspx" style="color:dodgerblue;">PRE-DIAGNOSIS</a></li>
                       <li class="active"><a href="#" style="color:dodgerblue;">TEST<span class="sr-only">(current)</span></a></li>
                       <li><a href="logout.aspx" style="color:dodgerblue;">LOGOUT</a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
        </nav>
        <div id="content" class="row">
        <div class="col-lg-3 sidebar">
            <img src="image/hema.fw.png" />
            <p style="color:#9797A6;">Blood extracting using seimic energy for painless test.
              it involves treading diseases that affect the production of blood and its components,such as blood cells etc.
                This test is affordable.<a href="signup.aspx"style="color:dodgerblue;">READ MORE</a>
            </p>
          </div>
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-lg-12">
                        <h6 style="color:dodgerblue;float:left;margin-left:50px;">Search</h6>
                <asp:TextBox ID="txtsearch" runat="server" style="color:dodgerblue;text-align:center;margin-left:20px;"></asp:TextBox>
                <asp:Button ID="search" runat="server" Text="Search" OnClick="search_Click" style="background-color:lightgray;color:dodgerblue;margin-left:20px;" />
                    </div>
                </div>
            <div class="row">
            <div class="col-lg-12 toochi">
                
               <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<asp:UpdatePanel ID="up" runat="server">
    <ContentTemplate>
        <asp:GridView ID="GridView1" AutoGenerateSelectButton="false"  runat ="server"
             AutoGenerateColumns="false" DataKeyNames="id" OnPageIndexChanging="GridView1_PageIndexChanging"
             AllowPaging="true" PageSize="13" style="color:dodgerblue; max-width:800px !important;" HeaderStyle-BorderWidth="5" HeaderStyle-BorderColor="#cccccc"
             HeaderStyle-BorderStyle="Ridge" HeaderStyle-Height="20"
             HeaderStyle-BackColor="#EEEEEE" HeaderStyle-ForeColor="#26C9FF"
             HeaderStyle-Font-Names="Arial" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" EnablePersistedSelection="true" OnRowDataBound="GridView1_RowDataBound" >
            <Columns>
                <asp:TemplateField HeaderText="Select">
                    
                   <ItemTemplate>
                       <asp:CheckBox ID="chkbd"  runat="server" Style="background-color:lightgray; color:dodgerblue;" />
                   </ItemTemplate>
                </asp:TemplateField>
                
               <asp:BoundField DataField="id" HeaderText="Test Id" />
                <asp:BoundField DataField="TestName" HeaderText="Test Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                </Columns> 
            <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
             </asp:GridView><br />
         </ContentTemplate>
</asp:UpdatePanel>
                <asp:Button ID="btnadd" runat="server" Text="Add Selected Test to KIT" OnClick="btnadd_Click"  Style="float:right;" />
            </div>
            </div>
                </div>
         <div class="col-lg-3">
                <img src="image/dna.fw.png" />
            <p style="color:#9797A6;">State of the art testing foe DNA that's to behave fast and accurate result.
                 The lab speciments are free from contamination and patient being evaluated.
                this test is done at an affordable price.<a href="signup.aspx"style="color:dodgerblue;">READ MORE</a>
            </p>
            </div>
        </div>
        
    </div>
    
    
      <footer>
        <div class="container">
            <p class="pull-right"><a href="#"> Back To Top</a></p>
            <p>&copy; 2017 AMblin Lab.Diagnos.com &middot; <a href="service.aspx" style="color:dodgerblue;">SERVICE</a> &middot; <a href="location.aspx" style="color:dodgerblue;">LOCATION</a> &middot; <a href="contact.aspx" style="color:dodgerblue;">CONTACT</a> &middot; </p> 
               
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
