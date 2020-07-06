<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="text.aspx.cs" Inherits="diagnostic.text" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
         #contain {
             background-color:lightskyblue;
             min-height: 400px !important;
             min-width: 40px !important;
             margin-top: 70px;
             opacity:0.6;
         }
         
         #ros{
             margin-top:20px;
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
       
          
        <div class="container" id="contain">
            <div class="row" id="ros">

                <div class=" col-lg-6 col-lg-offset-3" style="background-color:; margin-top:80px;">
                    <h3 style="color:#EEEEEE;">Selected Test From the Test Page</h3>
                    <asp:GridView ID="xselected" runat="server" AutoGenerateColumns="False"
                        OnDataBound="xselected_DataBound" OnRowDataBound="xselected_RowDataBound"
                        ShowFooter="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="5px" CellPadding="8"  GridLines="Vertical" ForeColor="#0000CC">
                        <AlternatingRowStyle BackColor="#DCDCDC" Font-Names="arial" Font-Size="Medium" />
                        <Columns>
                            <asp:BoundField DataField="TestName" HeaderText="TestName" />
                            <asp:BoundField DataField="Price" HeaderText="Price" />
                            <%--  --%>
                        </Columns>

                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="blue" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />

                    </asp:GridView>
                </div>
            </div>
            <div class="row" style="margin-top:20px;">
                <div class="flashingTextcss">
                <h3 style="margin-left: 20px; color:#EEEEEE;">Missed test?</h3>
                     </div>
                <asp:Button ID="btnadd" runat="server" Text="ADD NOW" Style="margin-left:20px; color:dodgerblue;" OnClick="btnadd_Click"/>
            </div>
               
            <div class="row">
                
                <asp:Button ID="btnsend" runat="server" Text="BOOK A TEST" OnClick="btnsend_Click" Style="float:right; color:dodgerblue;margin-right:50px;margin-top:50px;height:30px !important;" />
            </div>
        </div>
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jequery-1.8.3.js"></script>
    <script type="text/javascript">
        var speed = 500;
        function effectFadeIn(classname) {
            $("." + classname).fadeOut(speed).fadeIn(speed,effectFadeOut(classname))
        }
        function effectFadeOut(classname) {
            $("." + classname).fadeIn(speed).fadeOut(speed,effectFadeIn(classname))
        }
        $(document).ready(function () {
            effectFadeIn('flashingTextcss');
        });
    </script>
</body>
</html>
