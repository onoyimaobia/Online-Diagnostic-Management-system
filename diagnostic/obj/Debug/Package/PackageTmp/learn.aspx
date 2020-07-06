<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="learn.aspx.cs" Inherits="diagnostic.learn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <asp:GridView ID="xselected" runat="server"></asp:GridView>
        <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
        <asp:TextBox ID="txt2" runat="server" OnTextChanged="txt2_TextChanged" TextMode="MultiLine"></asp:TextBox>
    </div>
    </form>
</body>
</html>
