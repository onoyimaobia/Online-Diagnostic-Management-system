<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="symptom.aspx.cs" Inherits="diagnostic.symptom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Pre-Diagnosis</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
   <script type="text/javascript">
        $('#txtfirst').unbind('paste', function () {
            var self = this;
            setTimeout(function () {
                if (!/^[a-zA-Z]+$/.test($(self).val()))
                    $(self).val('');
            }, 0);
        });
    </script>
     <script type="text/javascript">
        function isNumeric(keyCode)
        {
            if (keyCode == 16)
                isShift = true;
            return ((keyCode >= 48 && keyCode <= 57 || keyCode == 8 || (keyCode >= 96 && keyCode <= 105)) && isShift == false);
        
        }
       
    </script>

    <script type="text/javascript">
       
    function Validate() {
        var CheckBoxList = document.getElementById("<%=chkbl3.ClientID%>");
        var checkbox = CheckBoxList.getElementsByTagName("input");
        var counter = 0;
        for (var i = 0; i < checkbox.length; i++) {
            if (checkbox[i].checked) {
                counter++;
            }
        }
        if (counter != 4)  {
            alert("You must select  only four checkboxes");
            return false;
        }
        else {
            return true;
        }
        //alert(counter);
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
                    <li><a href="Home.aspx" style="color:dodgerblue;">HOME <span class="sr-only">(current)</span></a></li>
                    <li><a href="about.aspx" style="color:dodgerblue;">ABOUT</a></li>
                      <!--<li><a href="#" style="color:dodgerblue;">SERVICE</a></li>
                       <li><a href="#" style="color:dodgerblue;">CONTACT</a></li>--->
                       <li><a href="Test1.aspx" style="color:dodgerblue;">TEST</a></li>
                       
                       
                       <li class="active"><a href="#" style="color:dodgerblue;">PRE-DIAGNOSIS</a></li>
                       <li><a href="appoint.aspx" style="color:dodgerblue;">APPOINTMENT</a></li>
                      <li><a href="logout.aspx" style="color:dodgerblue;">LOGOUT</a></li>
                  </ul>
                </div><!-- /.navbar-collapse -->
              </div><!-- /.container-fluid -->
        </nav>
        <div id="content" class="row">
        <!--<div class="col-lg-3 sidebar">
           <div class=" login-panel panel panel-default" style="margin-top: 0px; height: 400px !important ;background-color:#EEEEEE; border-radius:3px;border-color:lightskyblue;">
             <div class="panel-heading" style=" color:dodgerblue;">
               <h1 class="panel-title" style="font-size: 20px !important; text-align: center !important;">Contact</h1>
            </div>
               <span class="glyphicon  glyphicon-home" style="float:left;margin-left:10px;background-color:dodgerblue;"></span><strong style="float:left;margin-left:5px;color:dimgray;">ADDRESS</strong><br />
               <p style="float:left;margin-left:10px;color:dodgerblue">AMBLIN  Laboratory  Diagnostic Center<br />3, Nwosu Terrace,<br />Enugu North,Ogui,Enugu State </p><br />
               <span class="glyphicon   glyphicon-phone-alt" style="float:left;margin-left:10px; background-color:dodgerblue;"></span><strong style="float:left;margin-left:5px;color:dimgray;">TELEPHONE</strong>
              <br /><p style="float:left; margin-left:20px;color:dodgerblue;">08103449953</p><p style="float:right;margin-right:40px;color:dodgerblue;">08103449953</p><br />
               <p style="margin-top:55px; margin-left:10px;"><span class="glyphicon glyphicon-envelope" style="background-color:dodgerblue"></span><strong style="margin-left:5px;color:dimgrey;">EMAIL</strong></p>
                <p style="margin-left:10px;"><a href="#">Amblinlabservice@gmail.com</a></p>
               <img src="image/twitter.fw.png" /><strong style="color:dimgray;">TWITTER</strong>
               <p style="margin-left:10px;"><a href="#"> @Amblinlabservice</a></p>
               <p style="margin-left:10px;"><img src="image/facebook.fw.png" /><strong style="margin-left:5px; color:dimgray;">FACEBOOK</strong></p>
               <p style="margin-left:10px;"><a href="#">www.faceboo/Amblinlabservice</a></p>
               
           </div>
            </div>--->
             <div class="col-lg-3 sidebar">
            <div class=" login-panel panel panel-default" style="margin-top: 0px; height: 400px !important;overflow:scroll">
             <div class="panel-heading" style="background-color: #EEEEEE; color: dodgerblue;">
               <h1 class="panel-title" style="font-size: 20px !important; text-align: center !important;">Symptoms</h1>
            </div>
                <h3 style="font-size:20px; text-align:center;color:dodgerblue;">Select Only Four Symptoms</h3>

                
                
                <asp:CheckBoxList ID="chkbl3" runat="server" style="float:left;color:dodgerblue;margin-left:10px;"></asp:CheckBoxList><br />
                <asp:Button ID="btnrefresh" runat="server" Text="REFRESH" OnClick="btnrefresh_Click" style="margin-left:10px;color:lightgray;background-color:dodgerblue;"/>
                <asp:Button ID="btnok" runat="server" Text="OK" OnClientClick="return Validation" OnClick="btnok_Click" UseSubmitBehavior="true"  Style="float:right;margin-right:15px; color:lightgray;background-color:dodgerblue;" />
                <!--<strong class="pull-right"><a href="#"> Back To Top</a></strong>-->
            </div>
          </div>
            <div class="col-lg-6">
               <div class=" login-panel panel panel-default" style="margin-top: 0px; height: 400px !important">
                <div class="panel-heading" style="background-color: #EEEEEE; color:dodgerblue;">
                    <h4 class="panel-title" style="font-size: 20px !important; text-align: center !important;">Disease,Medicine Description & Suggested Test</h4>
               </div>
                   <div class="row">
                       <div class="col-lg-12">
                           <div class="col-lg-6">
                   <div class="col-xs-11">
                       <h4 style="color:dodgerblue;">Suspected Disease</h4>
                            <asp:TextBox ID="txtfirst" runat="server" Class="form-control" onkeypress="return false" onkeyup="return false" onkeydown="return false" onpaste="return true;"  placeholder=" "  Style="color:steelblue;" TextMode="MultiLine"></asp:TextBox><br />
                           </div>
                               </div>
                           <div class="col-lg-6">
                   <div class="col-xs-11">
                       <h4 style="color:dodgerblue;">Suggested Prescription</h4>
                            <asp:TextBox ID="txtsecond" runat="server" Class="form-control" onkeypress="return false" onkeyup="return false" onkeydown="return false"  onpaste="return true;" Style="color:steelblue;" TextMode="MultiLine"></asp:TextBox><br />
                           </div>
                               </div>
                       </div>
                       </div>
                   
                   <div class="col-xs-11">
                       <h3 style="color:dodgerblue;">Suggested Test</h3>
                            <asp:TextBox ID="txtthird" runat="server" Class="form-control" onkeypress="return false" onkeyup="return false" onkeydown="return false" Style="color:steelblue;" TextMode="MultiLine" ></asp:TextBox><br />
                           </div>
                   <div class="col-xs-11">
                        <h4><asp:Label ID="lblcost" runat="server" Text="Cost" Style="color:dodgerblue;"></asp:Label></h4>
                    <asp:TextBox ID="txtcost" runat="server" Class="form-control" Width="142px" ></asp:TextBox>
                  
                   </div>
                  
                   <asp:Button ID="run" runat="server" Text="RUN TEST" OnClick="run_Click" Style="color:dodgerblue;float:right;margin-top:0px;margin-right:10px;" />
                   <asp:Button ID="Btnyes" runat="server" Text="OK"  OnClick="Btnyes_Click" Style="color:dodgerblue;float:right;"/>
                   <asp:Label ID="lblmsg" runat="server" Text="" Style="  float:left;margin-left:15px;margin-top:5px;color:red;"></asp:Label>
                   
              </div>
            </div>
                
            <div class="col-lg-3">
                <p style="margin-left:20px;"><img src="image/warning.fw.png" /></p><br />
                <p style="color:dodgerblue;"> This diagnosis is not considered guinene. the reason being that it is based on research and assumption.
                    we kindly implore you to run a Test to be sure of what you sufferring from.
                    !!!!Because we Care!!!!
                </p>
                <p style="margin-right:10px;color:dodgerblue;">Signed <img src="image/amb.fw.png" />Managemment</p>
            </div>

           
        </div>
        
    </div>
    
    
     <footer>
        <div class="container">
            <p class="pull-right"><a href="#"> Back To Top</a></p>
            <p>&copy; 2017 AMblin Lab.Diagnos.com &middot; <a href="#" style="color:dodgerblue;">SERVICE</a> &middot; <a href="#" style="color:dodgerblue;">LOCATION</a> &middot; <a href="#" style="color:dodgerblue;">CONTACT</a> &middot; </p> 
               
        </div>
    </footer>
        
    <!-- /container -->
    </form>
    <script type="text/javascript" src="/js/Scripts/jquery-3.1.1.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/js/custom-script.js"></script>
</body>
</html>
