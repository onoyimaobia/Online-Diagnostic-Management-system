<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="learning.aspx.cs" Inherits="diagnostic.learning" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <div>
     <%--<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                         </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="image/med2.png" class="img-responsive" alt="...." />
                            <div class="carousel-caption">
                               <h2>...</h2>
                            </div>
                        </div>
                        <div class="item">
                            <img src="image/gruop3.png" class="img-responsive" alt="..."/>
                            <div class="carousel-caption">
                                <h2>...</h2>
                            </div>
                        </div>
                        <div class="item">
                            <img src="image/slide2.fw.png" class="img-responsive" alt="..."/>
                            <div class="carousel-caption">
                                <h2>...</h2>
                                <
                            </div>
                        </div>
                        <div class="item">
                            <img src="image/slide5.fw.png" class="img-responsive" alt="..."/>
                            <div class="carousel-caption">
                               <h2>...</h2>
                            </div>
                        </div>
                        <div class="item">
                            <img src="image/med3.png" class="img-responsive" alt="..."/>
                            <div class="carousel-caption">
                                <h2>....</h2>
                                
                            </div>
                        </div>
                       <div class="item">
                            <img src="image/slide4.fw.png" class="img-responsive" alt="..."/>
                            <div class="carousel-caption">
                                <h2>...</h2>
                                
                            </div>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>--%>


        <div class="header-banner">
                <!---<img class="img-responsive header_logo" src="image/rest.fw.png" alt="site_logo" />---->
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="image/med2.png" class="img-responsive" alt="...." />
                            <div class="carousel-caption">
                                <h2>Making Transaction Easy</h2>
                            </div>
                        </div>
                        <div class="item">
                            <img src="~/image/slide2.fw.png" class="img-responsive" alt="..." />
                            <div class="carousel-caption">
                                <h2>Why Choose the Diamond Credit and Debit Card</h2>
                            </div>
                        </div>
                        <div class="item">
                            <img src="~/image/slide3.fw.png" class="img-responsive" alt="..." />
                            <div class="carousel-caption">
                                <h2>YOU HAVE JUST ARRIVED</h2>
                                <h3> DIAMOND BANK INTRODUCES "MAGIC CASH". THE CARDLESS ATM TRANSACTION.</h3>
                            </div>
                        </div>
                        <div class="item">
                            <img src="~/image/slide4.fw.png" class="img-responsive" alt="..." />
                            <div class="carousel-caption">
                                <h2>Fintech Deployes Bindle - ATM Machine</h2>
                            </div>
                        </div>
                        <div class="item">
                            <img src="~/image/slide5.fw.png" class="img-responsive" alt="..." />
                            <div class="carousel-caption">
                                <h2>Looking for that Multi-purpose ATM for all your transactions?</h2>
                                <h3> Diamond Bank provides you that ONE-STOP ATM</h3>
                            </div>
                        </div>
                        <div class="item">
                            <img src="~/image/slide6.fw.png" class="img-responsive" alt="..." />
                            <div class="carousel-caption">
                                <h2>Debit Card &nbsp;&nbsp; Credit Card</h2>
                                <h3>Diamon Bank</h3>
                            </div>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
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
