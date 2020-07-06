<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridwiew.aspx.cs" Inherits="diagnostic.gridwiew" %>

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
    <style type="text/css">
        
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
            <img class="img-responsive header_logo" src="image/refresh1.fw.png" alt="site_logo" /> 
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
                    <li><a href="#" style="color:dodgerblue;">ABOUT</a></li>
                       <li><a href="#" style="color:dodgerblue;">SERVICE</a></li>
                       <li><a href="#" style="color:dodgerblue;">CONTACT</a></li>
                       <li><a href="#" style="color:dodgerblue;">LOCATION</a></li>
                       <li><a href="login.aspx" style="color:dodgerblue;">LOGIN</a></li>
                       <li><a href="signup.aspx" style="color:dodgerblue;">SIGNUP</a></li>
                       <li><a href="symptom.aspx" style="color:dodgerblue;">SYMPTOMS</a></li>
                       <li><a href="#" style="color:dodgerblue;">APPOINTMENT</a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
        </nav>
    <div id="content" class="row">
        <div class="col-lg-3 sidebar" >
            Search:
            <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
            <asp:Button ID="search" runat="server" Text="Search" />
            <div id="GHead"></div>
            <div style="height:300px;overflow:auto;">
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
     CellPadding="3" HeaderStyle-BorderWidth="5" HeaderStyle-BorderStyle="Ridge" HeaderStyle-BorderColor="Yellow">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" />
                <asp:BoundField DataField="TestName" HeaderText="Test Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                </Columns> 
            </asp:GridView>
                <asp:Button ID="Button1" runat="server" Text="Refresh" />
            </div>
        </div>
            
            
            
           
    <div class="col-lg-6">
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
        <input id="btninput" type="button" value="" />
         <asp:Button ID="btn2" runat="server" BackColor="White" BorderColor="#0066FF" BorderStyle="Inset" ForeColor="#FF6699" Height="20px" OnClick="btn2_Click" Text="calendar" Width="72px" />
        <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"> 
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />

        </asp:Calendar>
    </div>



        </div>
   
        
    </div>
    
    
        
    <section id="footer-section">
        <div class="row">
            <div class="col-gl-12">
                <p>&copy; 2016 - 2017. All rights reserved <a href="http://www.jewel-mahmud.com">BackBenchers</a> </p>
            </div>
        </div>
    </section>
    <!-- /container -->
    </form>
    <script type="text/javascript" src="/js/Scripts/jquery-3.1.1.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/js/custom-script.js"></script>
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function () {
        var gridHeader = $('#<%=GridView1.ClientID %>').clone(true);
        $(gridHeader).find("tr:gt(0)").remove();
        $('#<%=GridView1.ClientID %> tr th').each(function (i) {
            $("th.nth.child(" + (i + 1) + ")", gridHeader).css('width', $(this).width().toString() + "px");

        });
        $("#GHead").append(gridHeader);
        $("#GHead").css('position', 'absolute');
        $("#GHead").css('top', $('#<%=GridView1.ClientID %>').offset().top);
    });







   // $(document).ready(function () {
        //$('#<%=GridView1.ClientID %>').Scrollable({
            //ScrollHeight: 300,
           // IsInUpdatePanel: true
        //});
   // });
</script>
</body>
</html>
