<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="savetogridview.aspx.cs" Inherits="diagnostic.savetogridview" %>

<!DOCTYPE html>


    <html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>ADMIN</title>

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
    <div class="container"> <div class="container">
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

                    <li><a href="Home.aspx" style="color:dodgerblue;">HOME <span class="sr-only">(current)</span></a></li>
                    <li><a href="location.aspx" style="color:dodgerblue;">ABOUT</a></li>
                       
                       <li><a href="Test1.aspx" style="color:dodgerblue;">TEST</a></li>
                      <li><a href="symptom.aspx" style="color:dodgerblue;">PRE-DIAGNOSIS</a></li>
                       <li><a href="appoint.aspx" style="color:dodgerblue;">APPOINTMENT</a></li>
                      <li class="active"><a href="savetogridview.aspx" style="color:dodgerblue;">ADMIN</a></li>
                       <li><a href="changepassword.aspx" style="color:dodgerblue;">CHANGE PASSWORD</a></li>
                       <li id="uka" runat="server"><a href="download.aspx" style="color:dodgerblue;">ADMIN ONLY</a></li>
                      <li id="toochi" runat="server"><a href="logout.aspx" style="color:dodgerblue;">LOGOUT</a></li>

                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
        </nav>
        <div class="row">
                <h4 style=" text-align:center;color:steelblue;">Record Keeping</h4>

                    <div class="col-lg-4">
                        <h5 style=" text-align:center;color:steelblue;">Search by Name</h5>
                        <h6 style="color:dodgerblue;float:left;margin-left:50px;">Search</h6>
                <asp:TextBox ID="txtsearch" runat="server" style="color:dodgerblue;text-align:center;margin-left:20px;"></asp:TextBox>
                <asp:Button ID="search" runat="server" Text="Search" OnClick="search_Click" style="background-color:lightgray;color:dodgerblue;margin-left:20px;" />
                    </div>
            <div class="col-lg-4">
                <h5 style=" text-align:center;color:steelblue;">Search by Contact</h5>
                        <h6 style="color:dodgerblue;float:left;margin-left:50px;">Search</h6>
                <asp:TextBox ID="txtsearchphone" runat="server" style="color:dodgerblue;text-align:center;margin-left:20px;"></asp:TextBox>
                <asp:Button ID="searchphone" runat="server" Text="Search" OnClick="searchphone_Click" style="background-color:lightgray;color:dodgerblue;margin-left:20px;" />
                    </div>
            <div class="col-lg-4">
                <h5 style=" text-align:center;color:steelblue;">Search by Email</h5>
                        <h6 style="color:dodgerblue;float:left;margin-left:50px;">Search</h6>
                <asp:TextBox ID="txtserachemail" runat="server" style="color:dodgerblue;text-align:center;margin-left:20px;"></asp:TextBox>
                <asp:Button ID="searchemail" runat="server" Text="Search" OnClick="searchemail_Click" style="background-color:lightgray;color:dodgerblue;margin-left:20px;" />
                    </div>
                </div>
        <div class="row">
            <div class="col-lg-12 col-xs-12">
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="appointId"  AutoGenerateColumns="False" CellSpacing="6" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
                     OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">
                    <AlternatingRowStyle BackColor="White" ForeColor="#000000"/>
                    <Columns>
                        <%--<asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblid" runat="server" Text='<%#Eval("appointId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:BoundField DataField="appointId" HeaderText=" patient Id" ReadOnly="True" />
                        <asp:BoundField DataField="ptName" HeaderText="patient Name" ReadOnly="True" />
                        <asp:BoundField DataField="ptContact" HeaderText="Contact" ReadOnly="True" />
                        <asp:BoundField DataField="ptEmail" HeaderText=" Mail" ReadOnly="True" />
                        <asp:BoundField DataField="ptDate" HeaderText=" Date" ReadOnly="True" />
                        <asp:BoundField DataField="ptTime" HeaderText=" Time" ReadOnly="True" />
                        <asp:BoundField DataField="ptService" HeaderText=" Service" ReadOnly="True" />
                        <asp:BoundField DataField="ptCost" HeaderText="Cost" ReadOnly="True" />
                        <asp:BoundField DataField="ptTest" HeaderText="Test" ReadOnly="True" />
                        <asp:BoundField DataField="ptAddress" HeaderText="address" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Done Test">
                    
                   <ItemTemplate>
                       <asp:Label ID="lbldone" runat="server" Text='<%#Eval("ptDoneTest") %>'></asp:Label>
                   </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtdone" runat="server" Text='<%#Eval("ptDoneTest") %>'></asp:TextBox>
                            </EditItemTemplate>
                </asp:TemplateField>

                         <asp:TemplateField HeaderText="Specimen">
                    
                   <ItemTemplate>
                       <asp:Label ID="lblspacimen" runat="server" Text='<%#Eval("specimen") %>'></asp:Label>
                   </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtspecimen" runat="server" Text='<%#Eval("specimen") %>'></asp:TextBox>
                                <asp:TextBox ID="txtr" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                </asp:TemplateField>
                         <asp:TemplateField HeaderText="Result">
                    
                   <ItemTemplate>
                       <asp:Label ID="lblresult" runat="server" Text='<%#Eval("result") %>'></asp:Label>
                   </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtresult" runat="server" Text='<%#Eval("result") %>'></asp:TextBox>
                                
                            </EditItemTemplate>
                </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                    </Columns>

                    <HeaderStyle BackColor="#3AC0F2" ForeColor="White" />
                    <RowStyle BackColor="#A1DCF2" />

                </asp:GridView>
            </div>
        </div>
    <footer>
        <div class="container">
            <p class="pull-right"><a href="#"> Back To Top</a></p>
            <p>&copy; 2017 AMblin Lab.Diagnos.com &middot; <a href="service.aspx" style="color:dodgerblue;">SERVICE</a> &middot; <a href="location.aspx" style="color:dodgerblue;">LOCATION</a> &middot; <a href="contact.aspx" style="color:dodgerblue;">CONTACT</a> &middot; </p> 
               
        </div>
    </footer>
    </div>
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
