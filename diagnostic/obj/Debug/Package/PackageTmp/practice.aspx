<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="practice.aspx.cs" Inherits="diagnostic.practice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
<asp:Panel ID="pnldetail" runat="server" Style="background-color:red;">
 <div class=" login-panel panel panel-default" style="margin-top:20%;height:415px !important;background-color:lightblue" id="grid">
    
<div class="panel-heading" style="background-color:lightblue;color:white;">
    <h1 class="panel-title" style="font-size:30px !important;text-align:center !important; ">Appointment Details</h1>
</div>

    <div class="panel-body">
        <asp:Label ID="lblname1" runat="server" Text="Name" Style=" color:white; font-size:20px !important;" ></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
         <asp:Label ID="lblname" runat="server" Text="ee"></asp:Label><br /><br />
         <asp:Label ID="Label2" runat="server" Text="Email" Style=" color:white; font-size:20px !important;"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:Label ID="lblemail" runat="server" Text="fr" Style="color:midnightblue"></asp:Label>
        <br /> <br /><asp:Label ID="Label4" runat="server" Text="Contact" Style=" color:white; font-size:20px !important;"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
       <asp:Label ID="lblcontact" runat="server" Text="ce"  Style="color:midnightblue"></asp:Label>
        <br /><br /><asp:Label ID="Label6" runat="server" Text="Date" Style=" color:white; font-size:20px !important;"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
         <asp:Label ID="lbldate" runat="server" Text="ku"  Style="color:midnightblue"></asp:Label>
        <br /><br /><asp:Label ID="Label8" runat="server" Text="Time" Style=" color:white; font-size:20px !important;"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:Label ID="lbltime" runat="server" Text="nu"  Style="color:midnightblue"></asp:Label>
        <br /><br /> <asp:Label ID="Label10" runat="server" Text="Doctor's Name" Style=" color:white; font-size:20px !important;"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
         <asp:Label ID="lbldoc" runat="server" Text="xs"  Style="color:midnightblue"></asp:Label>
        <br /><br /><asp:Label ID="Label12" runat="server" Text="Hospital Name" Style=" color:white; font-size:20px !important;"></asp:Label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <asp:Label ID="lblhos" runat="server" Text="ty"  Style="color:midnightblue"></asp:Label>
        <asp:Label ID="lbltext" runat="server" Text=""></asp:Label>
        </div>
     </div>
        </asp:Panel>
     
    <asp:Button ID="btndownload" runat="server" Text="Download" OnClick="btndownload_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Button ID="btnleave" runat="server" Text="Leave Page" />
    </div>
    </div>
    </form>
    <script type="text/html">

    </script>
</body>
</html>
