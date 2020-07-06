<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="diagnostic.register" %>

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
    <div class="container">
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
                <asp:Button ID="searchphone" runat="server" Text="Search"  OnClick="searchphone_Click" style="background-color:lightgray;color:dodgerblue;margin-left:20px;" />
                    </div>
            <div class="col-lg-4">
                <h5 style=" text-align:center;color:steelblue;">Search by Email</h5>
                        <h6 style="color:dodgerblue;float:left;margin-left:50px;">Search</h6>
                <asp:TextBox ID="txtserachemail" runat="server" style="color:dodgerblue;text-align:center;margin-left:20px;"></asp:TextBox>
                <asp:Button ID="searchemail" runat="server" Text="Search" OnClick="searchemail_Click" style="background-color:lightgray;color:dodgerblue;margin-left:20px;" />
                    </div>
             
                </div>
        <div class="row" style="margin-top:10px;">
        <div class="col-lg-8 col-lg-offset-2 col-xs-12">
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="id" style="padding:5px;"  AutoGenerateColumns="False" CellSpacing="6" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
                      OnRowEditing="GridView1_RowEditing"  OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting">
                    <AlternatingRowStyle BackColor="White" ForeColor="#000000"/>
                    <Columns>
                        <%--<asp:TemplateField>
                            <ItemTemplate>
                                <asp:Label ID="lblid" runat="server" Text='<%#Eval("appointId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:BoundField DataField="id" HeaderText=" patient Id" ReadOnly="True" />
                        
                        <asp:TemplateField HeaderText="Patient Name">
                    
                   <ItemTemplate>
                       <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                   </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtname" runat="server" Text='<%#Eval("name") %>'></asp:TextBox>
                            </EditItemTemplate>
                </asp:TemplateField>

                         <asp:TemplateField HeaderText="Age">
                    
                   <ItemTemplate>
                       <asp:Label ID="lblage" runat="server" Text='<%#Eval("age") %>'></asp:Label>
                   </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtage" runat="server" Text='<%#Eval("age") %>'></asp:TextBox>
                                <!----<asp:TextBox ID="txtr" runat="server"></asp:TextBox>--->
                            </EditItemTemplate>
                </asp:TemplateField>
                         <asp:TemplateField HeaderText="Email">
                    
                   <ItemTemplate>
                       <asp:Label ID="lblemail" runat="server" Text='<%#Eval("email") %>'></asp:Label>
                   </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtemail" runat="server" Text='<%#Eval("email") %>'></asp:TextBox>
                                
                            </EditItemTemplate>
                </asp:TemplateField>
                        <asp:TemplateField HeaderText="Contact">
                    
                   <ItemTemplate>
                       <asp:Label ID="lblcontact" runat="server" Text='<%#Eval("contact") %>'></asp:Label>
                   </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtcontact" runat="server" Text='<%#Eval("contact") %>'></asp:TextBox>
                                
                            </EditItemTemplate>
                </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address">
                    
                   <ItemTemplate>
                       <asp:Label ID="lbladdress" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                   </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtaddress" runat="server" Text='<%#Eval("address") %>'></asp:TextBox>
                                
                            </EditItemTemplate>
                </asp:TemplateField>
                        <%--<asp:TemplateField>
                           <ItemTemplate>
                               <asp:LinkButton ID="lnkremove" runat="server" CommandArgument ='<%#Eval("id") %>' OnClientClick="return confirm('Do you want to delete?')" Text="Delete"
                                    OnClick="lnkremove_Click">Delete</asp:LinkButton>
                           </ItemTemplate>
                        </asp:TemplateField>--%>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>

                    <HeaderStyle BackColor="#3AC0F2" ForeColor="White" />
                    <RowStyle BackColor="#A1DCF2" />

                </asp:GridView>
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
