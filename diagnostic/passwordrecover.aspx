<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passwordrecover.aspx.cs" Inherits="diagnostic.passwordrecover" %>

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
        #cont{
            margin-top:300px;
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
    <div class="container" id="cont">
        <div class="col-lg-4 col-lg-offset-4" >
    <asp:passwordrecovery runat="server" ID="Recpsswd" BackColor="#0033CC" Height="200px" Width="500px" OnSendingMail="Recpsswd_SendingMail">
        <MailDefinition BodyFileName="~/EmailTemplate/PasswordRecovery.txt" IsBodyHtml="True" Subject="Your Password has been Reset">
        </MailDefinition>
        <UserNameTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td align="center" colspan="2" style="color:white;margin-left:50px;">Forgot Your Password?</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:white;margin-left:20px;">Enter your User Name to receive your password.</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" style="color:white;">User Name:</asp:Label>&nbsp&nbsp&nbsp&nbsp
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server" Class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Recpsswd">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" ValidationGroup="Recpsswd" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </UserNameTemplate>
        </asp:passwordrecovery>
            </div>
        </div>
   
    </form>
<!-- /container -->
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
