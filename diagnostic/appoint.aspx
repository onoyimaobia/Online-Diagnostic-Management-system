<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appoint.aspx.cs" Inherits="diagnostic.appoint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Appointment</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        #content {
             min-height:400px !important;
            
            background-image:url('image/appoint.fw.png');
            background-size:cover;
            background-position:center;
            background-attachment:local;
            background-repeat:no-repeat;

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

                    <li ><a href="Home.aspx" style="color:dodgerblue;">HOME <span class="sr-only">(current)</span></a></li>
                    <li><a href="#" style="color:dodgerblue;">ABOUT</a></li>
                       <li><a href="#" style="color:dodgerblue;">SERVICE</a></li>
                       <li><a href="#" style="color:dodgerblue;">CONTACT</a></li>
                       <li><a href="Test1.aspx" style="color:dodgerblue;">TEST</a></li>
                      <li><a href="symptom.aspx" style="color:dodgerblue;">SYMPTOMS</a></li>
                       <li class="active"><a href="appoint.aspx" style="color:dodgerblue;">APPOINTMENT</a></li>
                      <li id="toochi" runat="server"><a href="logout.aspx" style="color:dodgerblue;">LOGOUT</a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
        </nav>
        <div class="img-responsive col-lg-12 col-xs-12" id="content">
            <div class="col-lg-10 col-lg-offset-1">
                 <marquee direction="left"><em style="color:lightsteelblue;">Booking Appointment Here(in this page) is made for only referrals</em>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                     <em style="color:steelblue">If you want to go for text and you did not find Text Name in our Test page kindly book for it here</em>
                  
                    </marquee>
               </div>
            <div  class="col-lg-10 col-lg-offset-1 col-xs-12">
            <div class=" col-xs-12 panel-heading" style="opacity:0.7; color:dodgerblue;">
                                <h1 class="panel-title" style="font-size: 30px !important; text-align: center !important;">Appointment</h1>
                   </div>
            <div class="col-xs-11">
                <div class="col-lg-4">
                    <asp:Label ID="lblpatientid" runat="server" Text="Patient Name" style="color:darkblue;"></asp:Label>
                            <asp:TextBox ID="txtname" runat="server" Class="form-control" placeholder="Patients Id" ReadOnly="true" ></asp:TextBox><br />
                           </div>
                <div class="col-lg-4">
                    <asp:Label ID="lblpatientname" runat="server" Text="Patient Age" style="color:blue;"></asp:Label>
                    <asp:TextBox ID="txtage" runat="server" Class="form-control" placeholder="Patients Name" ReadOnly="true" ></asp:TextBox><br />
                           </div>
                <div class="col-lg-4">
                    <asp:Label ID="lblemail" runat="server" Text="Email" style="color:mediumblue;"></asp:Label>
                            <asp:TextBox ID="txtemail" runat="server" Class="form-control" placeholder="Email" TextMode="Email" ReadOnly="false"></asp:TextBox><br />
                           </div>
                </div>
                <div class="col-xs-11">
                    <div class="col-lg-4">
                    <asp:Label ID="Time" runat="server" Text="time" style="color:mediumblue;"></asp:Label>
                    <asp:DropDownList ID="Ddltime" runat="server"  CssClass="form-control"></asp:DropDownList>
                    </div>
                    <div class="col-lg-4">
                    <asp:Label ID="contact" runat="server" Text="conatact" style="color:mediumblue;"></asp:Label>
                    <asp:TextBox ID="txtcontact" runat="server" Class="form-control"></asp:TextBox>
                    </div>
                    <div class="col-lg-4">
                        <div class="col-lg-7">
                   <asp:Label ID="date" runat="server" Text="date" style="color:mediumblue;"></asp:Label>
                    <asp:TextBox ID="txtdate" runat="server" Class="form-control"></asp:TextBox>
                    </div>
                         <div class="col-lg-5">
                    <asp:Label ID="select" runat="server" Text="Select" style="color:mediumblue;"></asp:Label>
                    <asp:Button ID="Button1" runat="server" Text="calender"  OnClick="Button1_Click"/>
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
                    <div class="col-lg-4">
                    <asp:Label ID="address" runat="server" Text="Address" style="color:mediumblue;"></asp:Label>
                    <asp:TextBox ID="txtadd" runat="server" Class="form-control"></asp:TextBox>
                        </div>
                    <div class="col-lg-4">
                        <asp:Label ID="ref" runat="server" Text="UploadReferral"  style="color:mediumblue;"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                      </div>
                    <div class="col-lg-4">
                 <asp:Label ID="lblservice" runat="server" Text="Service" style="color:blue"></asp:Label>
                <asp:DropDownList ID="Ddlservice" runat="server"  Class="form-control"></asp:DropDownList>
            </div>
                </div>
                <div class="col-xs-11">
                    <div class="col-lg-4">
                        <asp:Label ID="doctor" runat="server" Text="Doctor's Name" Style="color: mediumblue;"></asp:Label>
                        <asp:TextBox ID="txtdoc" runat="server" Class="form-control"></asp:TextBox>
                    </div>
                    <div class="col-lg-4">
                    <asp:Label ID="hospital" runat="server" Text="Hospital" style="color:mediumblue;"></asp:Label>
                    <asp:TextBox ID="txthos" runat="server" Class="form-control"></asp:TextBox>
                        </div>
                    <div class="col-lg-4 " style="margin-top:10px;">
                    
                    <asp:Label ID="lblmsg" runat="server" Text="" Style="color:red;"></asp:Label>
                    </div>
                </div>
                <div class="col-xs-11">
                    <div class="col-lg-6">

                    </div>
                <div class="col-lg-3 " style="margin-top:10px;">
                    <asp:Button ID="btnbook" runat="server" Text="Book Appointment"  OnClick="btnbook_Click"/>
                </div>
                 <div class="col-lg-3 " style="float:right;margin-top:10px;">
                    <asp:Button ID="btncancel" runat="server" Text="cancel" OnClick="btncancel_Click" />
                </div>
                    </div>
                </div>

        </div>
    </div>
    </form>
</body>
</html>
