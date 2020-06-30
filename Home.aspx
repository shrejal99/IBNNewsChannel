<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html>
<head>
    <title></title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>

<style>
  
.ttop
{
min-height:45px;
background:#1c2331;
color:white;
font-size:21px;
font-family:'Bookman Old Style';
font-weight:bold;
padding-top:.8%;
}
#menu
{
background:rgb(243, 250, 250);
border:none;
box-shadow:none;
}
.ufooter{
min-height:250px;
background:rgba(0,0,0,0.88);
}
.bfooter
{
min-height:50px;
background:black;
margin-top:2px;
color:white;
padding-top:1%;
text-align:center;
}
.main
{
background:transparent;
min-height:500px;
}
    .news {
        min-height:45px;
        background:#ed1d25;
        color:white;
    }
    .slider {
        background-image:url('images/cover12.jpg');
        background-attachment:fixed;
        background-size:100% 100%;
    }
    .u {
        color:white;
        text-align:center;
        font-size:20px;
        font-family:'Bookman Old Style';
    }
</style>
</head>
<body>
    <form runat="server">
<div class="container-fluid">
   
<div class="row">
<div class="col-sm-12 ttop">
<div class="col-sm-4">
<span class="fa fa-mobile"></span> +91-
</div>
<div class="col-sm-4">WELCOME TO IBN LIVE NEWS</div>
<div class="col-sm-4" style="text-align:center;">
<a href="https:\\www.facebook.com"><span class="fa fa-facebook"></span></a>
<a href="https:\\www.twitter.com"><span class="fa fa-twitter"></span></a>
<a href="https:\\www.youtube.com"><span class="fa fa-youtube"></span></a>
<a href="Home.aspx"><span class="fa fa-home"></span></a>
</div>
</div>
<div class="col-sm-12 header">
<div class="col-sm-3 logo">
<img src="images/newpng.png" class="img-responsive" style="max-height:60px;">
</div>
<div class="col-sm-9 menu">
<nav class="navbar navbar-default" id="menu">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
  
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Home.aspx"><span class="fa fa-home"></span>HOME</a></li>
        <li><a href="Aboutus.aspx">ABOUT US</a></li>
        <li><a href="Suggestion.aspx">SUGESSTION</a></li>
        <li><a href="Video.aspx">VIDEO GALLERY</a></li>
        <li><a href="Login.aspx">LOGIN</a></li>
        <li><a href="Developers.aspx">DEVELOPER</a></li>
       
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
</div>
<div class="col-sm-12 slider" >
    <div class="row">
        <div class="col-sm-12" style="padding:1%;background:rgba(255, 255, 255, 0.7);">
   
    <div class="col-sm-9">
        <div class="row">
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/SLIDER (1).jpg" alt="...">
      <div class="carousel-caption">
     <b style="font-size:25px; color:white; font-family:'Times New Roman'">LOANS COULD GET CHEAPER AS RBI CUTS REPO RATE TO 7-YEARS..</b>
      </div>
    </div>
    <div class="item">
         <img src="images/SLIDER (3).jpg" alt="...">
      <div class="carousel-caption">
        <b style="font-size:25px; color:white; font-family:'Times New Roman'">CAR TRACKER :FINALLY YOU CAN TRACK YOUR CAR WITH THE HELP OF SMARTPHONES..</b>
      </div>
    </div>
    <div class="item">
         <img src="images/SLIDER (2).jpg" alt="...">
      <div class="carousel-caption">
        <b style="font-size:25px; color:black; font-family:'Times New Roman'">SENSEX RISES 205 POINTS, AND ALL RECORD ARE HIGH ; SBI SURGES 4.5%</b>
      </div>
    </div>
       <div class="item">
         <img src="images/SLIDER (4).jpg" alt="...">
      <div class="carousel-caption">
        <b style="font-size:25px; color:white; font-family:'Times New Roman'">US BOSSES THROW WEIGHT BEHIND NEW DRIVE TO COURT INDIA</b>
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
    <div class="col-sm-3">
        <div class="row">
        <asp:Label runat="server" ID="lbladv"></asp:Label>
            </div>
    </div>
             </div>
    </div>

</div>
    <div class="col-sm-12 news"  >
        
      
    </div> 
<div class="col-sm-12 main">
    <div class="col-sm-12">
<div class="col-sm-8">
    <asp:Label runat="server" ID="lblnews"></asp:Label>
</div>
    <div class="col-sm-4" style="margin-top:3%;border:2px solid black;" >
       <asp:Label ID="lblvideo" runat="server"></asp:Label>

    </div>
        </div>
</div>
<div class="col-sm-12 ufooter">
    <div class="col-sm-4 u" >
  <H2 style="color:red;">SOCIAL WEBSITES</H2>
<a href="https:\\www.facebook.com"><span class="fa fa-facebook"></span></a>
<a href="https:\\www.twitter.com"><span class="fa fa-twitter"></span></a>
<a href="https:\\www.youtube.com"><span class="fa fa-youtube"></span></a>
<a href="https:\\www.instagram.com"><span class="fa fa-instagram"></span></a>
<a href="https:\\www.google.com"><span class="fa fa-google-plus-square"></span></a>
    </div>  
    <div class="col-sm-4 u" >
        <H2 style="color:red;">OUR LINKS</H2>
   <ul style="list-style: none;">
<li><a href="Aboutus.aspx"> ABOUT THE IBN LIVE </a></li>
<li><a href="#"> ADVERTISE WITH US </a></li>
<li><a href="Suggestion.aspx"> CONTACT US </a></li>
<li><a href="Home.aspx"> TERMS OF USE</a></li>
</ul>
    </div>
     <div class="col-sm-4 u" >
   <H2 style="color:red;">ADDRESS </H2>
   <ul style="list-style: none;">
<li> Near Hanuman Temple,</li>
<li> Kapporthala, Aliganj, Lucknow-226024 </li>
<li> Query Helpline No.: 7080102006/7</li>
</ul>
    </div>  
</div>
<div class="col-sm-12 bfooter">
<div class="col-sm-6 b"><b>COPYRIGHT</b>&copy;<b> SOFTPRO INDIA COMPUTER TECHNOLOGIES (P) LTD.</b></div>
<div class="col-sm-6 b"><b>DEVELOPED BY :  </b></div>
</div>
</div>
</div>
        </form>
</body>
</html>