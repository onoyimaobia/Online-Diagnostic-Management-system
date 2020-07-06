<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="print.aspx.cs" Inherits="diagnostic.print" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Appointment Detail</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript">
        function PrintPanel() {
            var panel = document.getElementById("<%=pnldetail.ClientID%>");
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body>');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print()
            }, 500);
            return false;
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
        <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
<asp:Panel ID="pnldetail" runat="server" Style="background-color:red;">
 <div class=" login-panel panel panel-default" style="margin-top:20%;height:450px !important;background-color:lightblue;">
    
<div class="panel-heading" style="background-color:lightblue;color:mediumblue;">
    <h1 class="panel-title" style="font-size:30px !important;text-align:center !important; ">Appointment Details</h1>
</div>

    <div class="panel-body">
        <asp:Label ID="lblname1" runat="server" Text="Name......" Style=" color:mediumblue; font-size:20px !important; float:left;" ></asp:Label>
         <asp:Label ID="lblname" runat="server" Text="toochukwu agbo hhhh hhh hhh"  Style="color:midnightblue;margin-left:110px;"></asp:Label><br /><br />
         <asp:Label ID="Label2" runat="server" Text="Email....." Style=" color:mediumblue; font-size:20px !important;float:left;"></asp:Label>
        <asp:Label ID="lblemail" runat="server" Text="fr" Style="color:midnightblue;margin-left:110px;"></asp:Label>
        <br /> <br /><asp:Label ID="Label4" runat="server" Text="Contact......" Style=" color:mediumblue; font-size:20px !important;float:left;"></asp:Label>
       <asp:Label ID="lblcontact" runat="server" Text="ce"  Style="color:midnightblue;margin-left:90px;"></asp:Label>
        <br /><br /><asp:Label ID="Label6" runat="server" Text="Date......" Style=" color:mediumblue; font-size:20px !important;float:left;"></asp:Label>
         <asp:Label ID="lbldate" runat="server" Text="ku"  Style="color:midnightblue;margin-left:115px;"></asp:Label>
        <br /><br /><asp:Label ID="Label8" runat="server" Text="Time......" Style=" color:mediumblue; font-size:20px !important;float:left;"></asp:Label>
        <asp:Label ID="lbltime" runat="server" Text="nu"  Style="color:midnightblue;margin-left:115px;"></asp:Label>
        <br /><br /> <asp:Label ID="Label10" runat="server" Text="Doctor's Name......" Style=" color:mediumblue; font-size:20px !important;float:left;"></asp:Label>
         <asp:Label ID="lbldoc" runat="server" Text="xs"  Style="color:midnightblue;margin-left:40px;"></asp:Label>
        <br /><br /><asp:Label ID="Label12" runat="server" Text="Hospital Name......" Style=" color:mediumblue; font-size:20px !important;float:left;"></asp:Label>
        <asp:Label ID="lblhos" runat="server" Text="ty"  Style="color:midnightblue;margin-left:40px;"></asp:Label>
        
        </div>
     </div>
        </asp:Panel>
     &nbsp&nbsp&nbsp&nbsp<asp:Button ID="btnprint" runat="server" Text="Print" OnClientClick="return PrintPanel();" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Button ID="btndownload" runat="server" Text="Download" OnClick="btndownload_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <asp:Button ID="btnleave" runat="server" Text="Leave Page" OnClick="btnleave_Click" />
    </div>
            
            
        
        
    </div>
    </form>
    <script type="text/javascript" src="/js/Scripts/jquery-3.1.1.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/js/custom-script.js"></script>
</body>
</html>
