<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="symptomappointment.aspx.cs" Inherits="diagnostic.symptomappointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>APPOINTMENT</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        #content {
             min-height:400px !important;
            
            background-image:url('image/4.PNG');
            background-size:cover;
            background-position:center;
            background-attachment:local;
            background-repeat:no-repeat;

        }
        }
       #center-page {
        height:300px;
        width:300px;
        position:absolute;
        top:0;
        bottom:0;
        left:0;
        right:0;
        margin:auto;
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
                    <li ><a href="Home.aspx" style="color:dodgerblue;">HOME <span class="sr-only">(current)</span></a></li>
                    <li><a href="#" style="color:dodgerblue;">ABOUT</a></li>
                       <li><a href="#" style="color:dodgerblue;">SERVICE</a></li>
                       <li><a href="contact.aspx" style="color:dodgerblue;">CONTACT</a></li>
                       <li><a href="#" style="color:dodgerblue;">LOCATION</a></li>
                       
                      
                       <li><a href="symptom.aspx" style="color:dodgerblue;">SYMPTOMS</a></li>
                       <li><a href="Test1.aspx" style="color:dodgerblue;">TEST</a></li>
                      <li class="active"><a href="#" style="color:dodgerblue;">APPOINTMENT</a></li>
                      <li><a href="logout.aspx" style="color:dodgerblue;">LOGOUT</a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
        </nav>
        <div  id="content" class="col-lg-12 col-xs-12 img-responsive">
        <div  class="col-lg-10 col-lg-offset-1 col-xs-12" style=" background-color:lightgray;opacity:0.7;margin-top:2%;">
            <div class=" col-xs-12 panel-heading" style="opacity:0.7; color:dodgerblue;">
                                <h1 class="panel-title" style="font-size: 30px !important; text-align: center !important;">Appointment</h1>
                   </div>
            <div class="col-xs-11">
                <div class="col-lg-4">
                    <asp:Label ID="lblpatientid" runat="server" Text="Patient Name" style="color:darkblue;"></asp:Label>
                            <asp:TextBox ID="txtname" runat="server" Class="form-control"   ></asp:TextBox><br />
                           </div>
                <div class="col-lg-4">
                    <asp:Label ID="lblpatientname" runat="server" Text="Patient age" style="color:blue;"></asp:Label>
                    <asp:TextBox ID="txtage" runat="server" Class="form-control" placeholder="Patients Name"  ReadOnly="True" ></asp:TextBox><br />
                           </div>
                <div class="col-lg-4">
                    <asp:Label ID="lblemail" runat="server" Text="Email" style="color:mediumblue;"></asp:Label>
                            <asp:TextBox ID="txtemail" runat="server" Class="form-control" placeholder="Email" TextMode="Email" ReadOnly="false"></asp:TextBox><br />
                           </div>
                </div>

             <div class="col-xs-11">
                <div class="col-lg-4">
                    <asp:Label ID="lblcontact" runat="server" Text="Patient Contact" style="color:darkblue;"></asp:Label>
                            <asp:TextBox ID="txtcontact" runat="server" Class="form-control" placeholder="Contact" ReadOnly="false" ></asp:TextBox><br />
                           </div>
                   <div class="col-lg-4">
                    <asp:Label ID="lbltime" runat="server" Text="Time" style="color:darkblue"></asp:Label>
                       <asp:DropDownList ID="Ddltime" runat="server"  CssClass="form-control"></asp:DropDownList>
                           
                           </div>
                <div class="col-lg-4">
                    <div class="col-lg-7">
                    <asp:Label ID="lbldate" runat="server" Text="Date" style="color:mediumblue;"></asp:Label>
                    <asp:TextBox ID="txtdate" runat="server" Class="form-control" placeholder="Date"  OnTextChanged="txtdate_TextChanged" ReadOnly="True" ></asp:TextBox><br />
                        </div>
                    <div class="col-lg-5">
                       <asp:Label ID="lblbutton" runat="server" Text="Select" style="color:mediumblue;margin-left:-20%;"></asp:Label>
                        <asp:Button ID="btncalender" runat="server" Text="Calenda"  Class="form-control" style="margin-left:-30%;"  OnClick="btncalender_Click" />
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
            <div class="col-xs-11">
                 <div class="col-lg-8">
                <asp:Label ID="lbltest" runat="server" Text="Selected Test" style="color:blue;"></asp:Label>
                <asp:TextBox ID="txttest" runat="server" Class="form-control" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                     </div>
                <div class="col-lg-4">
                    <asp:Label ID="lblcost" runat="server" Text="Cost" style="color:blue"></asp:Label>
                            <asp:TextBox ID="txtcost" runat="server" Class="form-control" placeholder="Cost" ReadOnly="true" ></asp:TextBox><br />
                           </div>
            </div>
            <div class="col-xs-11">
                <div class="col-lg-4">
                 <asp:Label ID="lblservice" runat="server" Text="Service" style="color:blue"></asp:Label>
                <asp:DropDownList ID="Ddlservice" runat="server"  Class="form-control"></asp:DropDownList>
            </div>
                <div class="col-lg-8">
                    <asp:Label ID="lbladdress" runat="server" Text="Address" style="color:blue"></asp:Label>
                     <asp:TextBox ID="txtaddress" runat="server" Class="form-control" placeholder="Address" ReadOnly="false" ></asp:TextBox><br />
                </div>
                </div>
            <div class="col-xs-11"> <br />
               <br /> <asp:Button ID="btnbook" runat="server" Text="Book Appointment" OnClick="btnbook_Click" style="margin-left:30%; color:mediumblue;" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" style="margin-left:40px; color:darkblue;" OnClick="btncancel_Click" />
                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
            </div><br />
        </div>
        
                   
        </div><br />
        <footer>
        <div class="container">
            <p class="pull-right"><a href="#"> Back To Top</a></p>
            <p>.......&copy; 2017 AMblin Lab.Diagnos.com &middot; <a href="#" style="color:dodgerblue;">SERVICE</a> &middot; <a href="location.aspx" style="color:dodgerblue;">LOCATION</a> &middot; <a href="contac.aspx" style="color:dodgerblue;">CONTACT</a> &middot; </p> 
               
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

