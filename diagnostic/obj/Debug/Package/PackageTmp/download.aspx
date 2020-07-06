<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="download.aspx.cs" Inherits="diagnostic.download" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Changening for Admin Ony</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <form id="form1" runat="server">
   
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
                    <li><a href="location.aspx" style="color:dodgerblue;">ABOUT</a></li>
                    
                       <li><a href="changepassword.aspx" style="color:dodgerblue;">CHANGE PASSWORD</a></li>
                       <li class="active"><a href="download.aspx" style="color:dodgerblue;">Admin ONLY</a></li>
                      <li><a href="savetogridview.aspx" style="color:dodgerblue;">ADMIN</a></li>
                       <li><a href="symptom.aspx" style="color:dodgerblue;">PRE-DIAGNOSIS</a></li>
                       <li><a href="Test1.aspx" style="color:dodgerblue;">TEST</a></li>
                      <li ><a href="appoint.aspx" style="color:dodgerblue;">APPOINTMENT</a></li>
                      <li><a href="logout.aspx" style="color:dodgerblue;">LOGOUT</a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
        </nav>
         <div class="col-lg-4">
             <asp:GridView ID="grddownload" runat="server" AutoGenerateColumns="False" 
                 BackColor="Blue" BorderColor="White" BorderStyle="Groove" 
                 BorderWidth="10px" CellPadding="5" CellSpacing="5" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                  RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
                 ForeColor="White" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                 <Columns>
                     <asp:BoundField  DataField="fileName" HeaderText="File Name" />
                     <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                         
                         <ItemTemplate>
                             <asp:LinkButton ID="lnkdownload" runat="server" Text="Download" OnClick="lnkdownload_Click" CommandArgument='<%#Eval("referralId") %>'></asp:LinkButton>
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
             </asp:GridView>
         </div>
         <div class="col-lg-6">
              <div class="row">
             <!--<div class="col-lg-6 col-lg-offset-3 col-xs-12" id="cont">-->
            <h2 style="position: center;">Create Role</h2>
            <div class="col-xs-11">
               <asp:TextBox ID="txtRoleName" runat="server" Class="form-control"></asp:TextBox><br />
                <asp:Button ID="btnCreateRole" runat="server" Text="CreateRole" OnClick="btnCreateRole_Click" Style="margin-left:5px !important;" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                <asp:Label ID="lblrole" runat="server" Text="" Style="Color:red;"></asp:Label>
            </div>
                  
              <div class="col-xs-11 too">
                     <br /><asp:GridView ID="RoleList" runat="server" OnRowDeleting="RoleList_RowDeleting1"  AutoGenerateColumns="false">
                         <Columns>
                             <asp:TemplateField HeaderText="Role">
                                 <ItemTemplate>
                                     <asp:Label runat="server" ID="RoleNameLabel" Text='<%#Container.DataItem %>'></asp:Label>
                                 </ItemTemplate>
                             </asp:TemplateField>
                             <asp:CommandField DeleteText="DeleteRole" ShowDeleteButton="True"  />
                         </Columns>
                     </asp:GridView>
                 </div>
                 <div class="col-lg-12 " style="margin-top:10px !important;">
                     <h4 style="text-align:center;">User Role Management</h4>
                     <p >
                         <asp:Label ID="lblactionstatus" runat="server" Text="" Style="color:black; text-align:center;font-size:larger;"></asp:Label>

                     </p>
                     <div class="col-lg-6 col-xs-11">
                        <p> <b>Select a User:</b>
                         <asp:DropDownList ID="UserList" runat="server" AutoPostBack="true" DataValueField="UserName" DataTextField="UserName" OnSelectedIndexChanged="UserList_SelectedIndexChanged"></asp:DropDownList>
                         </p>
                            <p><asp:Repeater ID="UsersRoleList" runat="server">
                             <ItemTemplate>
                                 <asp:CheckBox ID="RoleCheckBox" runat="server" AutoPostBack="true" OnCheckedChanged="RoleCheckBox_CheckedChanged" Text='<%#Container.DataItem %>' /><br />
                             </ItemTemplate>
                         </asp:Repeater></p>
                     </div>
                     
                     <div class="col-lg-6 col-xs-11">
                        <p> <b>Select a Role:</b>
                         <asp:DropDownList ID="RoleList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="RoleList1_SelectedIndexChanged"></asp:DropDownList></p>
                        <p> <asp:GridView ID="RoleUserList" runat="server" AutoGenerateColumns="False"
                              EmptyDataText="No users belong to this role" OnRowDeleting="RoleUserList_RowDeleting" >
                             
                             <Columns>
                                 <asp:TemplateField HeaderText="Users">
                                     <ItemTemplate>
                                         <asp:Label runat="server" ID="UserNameLabel" Text='<%#Container.DataItem %>'></asp:Label>
                                     </ItemTemplate>
                                 </asp:TemplateField>
                                 <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                             </Columns>

                         </asp:GridView></p><br />
                         <p>
                             <b>UserName:</b>
                             <asp:TextBox ID="UserNameToAddToRole" runat="server" Class="form-control"></asp:TextBox>
                             <asp:Button ID="AddUserToRole" runat="server" Text="Add User To Role" OnClick="AddUserToRole_Click" />
                         </p>
                     </div>
                 </div>
           <!--</div>-->
             </div>
         </div>
         <div class="row">
           

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
         <div class="col-lg-12"> 

             <asp:GridView ID="GridView1" runat="server" DataKeyNames="referralId" AutoGenerateColumns="False" 
                 BackColor="Blue" BorderColor="White" BorderStyle="Groove" 
                 BorderWidth="10px" CellPadding="5" CellSpacing="5" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                  RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
                 ForeColor="Black" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">

                  <AlternatingRowStyle BackColor="White" ForeColor="#000000"></AlternatingRowStyle>

                 <Columns>
                     <asp:BoundField DataField="referralId" HeaderText=" appointment " ReadOnly="True" />
                     <asp:BoundField DataField="name" HeaderText=" Name" ReadOnly="True" />
                     <asp:BoundField DataField="age" HeaderText="Age" ReadOnly="True" />
                     <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" />
                     <asp:BoundField DataField="time" HeaderText="Time" ReadOnly="True" />
                     <asp:BoundField DataField="contact" HeaderText="Contact" ReadOnly="true" />
                     <asp:BoundField DataField="date" HeaderText="Date" ReadOnly="True" />
                     <asp:BoundField DataField="addrress" HeaderText="Address" ReadOnly="True" />
                     <asp:BoundField DataField="service" HeaderText="Service" ReadOnly="True" />
                     <asp:BoundField DataField="doctor" HeaderText="Doctor" ReadOnly="True" />
                     <asp:BoundField DataField="fileName" HeaderText="File Name" ReadOnly="True" />
                     <asp:BoundField DataField="contentType" HeaderText="Content Type" ReadOnly="True" />
                     <asp:BoundField DataField="hospital" HeaderText="Hospital" ReadOnly="True" />

                     <asp:TemplateField HeaderText="Done Test">
                    
                   <ItemTemplate>
                       <asp:Label ID="lbldone" runat="server" Text='<%#Eval("doneTest") %>'></asp:Label>
                   </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtdone" runat="server" Text='<%#Eval("doneTest") %>'></asp:TextBox>
                            </EditItemTemplate>
                </asp:TemplateField>
                      <asp:TemplateField HeaderText="Specimen">
                    
                   <ItemTemplate>
                       <asp:Label ID="lbresult" runat="server" Text='<%#Eval("specimen") %>'></asp:Label>
                   </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtspecimen" runat="server" Text='<%#Eval("specimen") %>'></asp:TextBox>
                            </EditItemTemplate>
                </asp:TemplateField>
                      <asp:TemplateField HeaderText="Result">
                    
                   <ItemTemplate>
                       <asp:Label ID="lblresult" runat="server" Text='<%#Eval("result") %>'></asp:Label>
                   </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txresult" runat="server" Text='<%#Eval("result") %>'></asp:TextBox>
                            </EditItemTemplate>
                </asp:TemplateField>
                     <asp:CommandField ShowEditButton="True" />
                 </Columns>

<HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>

<RowStyle BackColor="#A1DCF2"></RowStyle>

             </asp:GridView>
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
