<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="home.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="ASPNetFlash.NET3" Namespace="ASPNetFlash" TagPrefix="ASPNetFlash" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Online Watch Shoping</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery-photostack.js"></script>
<script type="text/javascript" src="scripts/jquery-coin-slider.min.js"></script>
<script type="text/javascript" src="scripts/jquery-ui-1.8.12.custom.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
    $('#portfolioslider').coinslider({
        width: 480,
        height: 280,
        navigation: false,
        links: false,
        hoverPause: true
    });
    $("#tabcontainer").tabs({
        event: "click"
    });
});
</script>
</head>
<body id="top">
    <form id="form1" runat="server">
<div class="wrapper col1">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a href="#">Online Watch Shoping</a></h1>
          </div>
    
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="topbar" class="clear">
    <ul id="topnav">
      <li><a href="home.aspx">Home</a></li>
	  <li><a href="#">Price</a>
        <ul>
          <li><a href="watch_price1.aspx?watch_price=10000">1,000-2,000</a></li>
          <li><a href="watch_price1.aspx?watch_price=20000">2,000-5,000</a></li>
          <li><a href="watch_price1.aspx?watch_price=50000">5,000-10,000</a></li>
          <li><a href="watch_price1.aspx?watch_price=100000">10,000-15,000</a></li>
          <li><a href="watch_price1.aspx?watch_price=15000">15,000-25,000</a></li>
		  <li><a href="watch_price1.aspx?watch_price=25000">25,000-50,000</a></li>
		  <li><a href="watch_price1.aspx?watch_price=50000">50,000-70,000</a></li>
        </ul>
      </li>
	  <li><a href="#">Category</a>
        <ul>
          <li><a href="watch_menu1.aspx?set=man">Man</a></li>
          <li><a href="watch_menu1.aspx?set=woman">Woman</a></li>
          <li><a href="watch_menu1.aspx?set=child">Children</a></li>
        </ul>
      </li>
	  <li><a href="#">Company</a>
        <ul>
          <li><a href="watch1.aspx?company_name=sonata">Sonata</a></li>
          <li><a href="watch1.aspx?company_name=rado">Rado</a></li>
          <li><a href="watch1.aspx?company_name=rolex">Rolex</a></li>
          <li><a href="watch1.aspx?company_name=addidas">Addidas</a></li>
		  <li><a href="watch1.aspx?company_name=titan">Titan</a></li>
		  <li><a href="watch1.aspx?company_name=swatch">Swatch</a></li>
          <li><a href="watch1.aspx?company_name=omega">Omega</a></li>
        </ul>
      </li>
      <li><a href="galary.aspx">Gallery</a></li>
      <li><a href="advertise.aspx">Advertise</a></li>
      <li><a href="advertis.aspx">new Watch Advertise</a></li>
      <li><a href="contactus.aspx">Contact Us</a></li>
      <li><a href="cartdetail.aspx">Cart</a></li>
      <li class="last"><a href="signout.aspx">Sign Out</a></li>
    </ul>
      &nbsp;</div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="featured_slide">
    <!-- ####################################################################################################### -->
    <div id="slider">
      <ul id="categories">
        <li class="category">
          <h2>Wedding watch</h2>
          <a href="#"><img src="images/demo/sonata9.jpg" alt="" /></a>
          <p>Sonata is the Value for Money watch brand from Titan Industries Ltd. It is 
              targeted at consumers seeking durability and value, with a clear positioning of 
              &quot; No compromise watch&quot;. Sonata comes with the backing of being a Tata product 
              with five clear functional attributes, Affordability, looks, 1 Year Guarantee</p>
          <p class="readmore"><a href="#">Read More »</a></p>
        </li>
        <li class="category">
          <h2>Professional watch</h2>
          <a href="#"><img src="images/demo/sonata5.jpg" alt="" /></a>
          <p>Sonata comes with clear functional attributes, Affordability, looks, Waterproof 
              and Durability. It is targeted at consumers seeking durability and value, with a 
              clear positioning of &quot; No compromise watch&quot;. Sonata has a wide range in 
              different traditional designs for gents and ladies. The exclusive designs are 
              made with best quality material.</p>
          <p class="readmore"><a href="#">Read More »</a></p>
        </li>
        <li class="category">
          <h2>Children's Watch</h2>
          <a href="#"><img src="images/demo/rolex2.jpg" alt="" /></a>
          <p>Sonata is the Value for Money watch brand from Titan Industries Ltd. It is 
              targeted at consumers seeking durability and value, with a clear positioning of 
              &quot; No compromise watch&quot;. Sonata comes with the backing of being a Tata product 
              with five clear functional attributes, Affordability, looks, 1 Year Guarantee</p>
          <p class="readmore"><a href="#">Read More »</a></p>
        </li>
        <li class="category">
          <h2>Fashion Watch</h2>
          <a href="#"><img src="images/demo/swatch1.jpg" alt="" /></a>
          <p>Casio LTP-2069L-7A2VDF Calendar Watch &amp;#... Value for Money watch brand from 
              Titan Industries Ltd. It is targeted at consumers seeking durability and value.</p>
          <p class="readmore"><a href="#">Read More »</a></p>
        </li>
        <li class="category">
          <h2>Action Watch</h2>
          <a href="#"><img src="images/demo/swatch3.jpg" alt="" /></a>
          <p>MOVEMENT Caliber: Omega 2610 Self-winding Co-Axial Escapement movement with hour, 
              minute, central seconds-hands and big date at 3 o'clock, rhodium plated finish. 
              New Co-Axial Escapement for greater precision stability and durability of the 
              movement. Officially certified chronometer Power reserve.</p>
          <p class="readmore"><a href="#">Read More »</a></p>
        </li>
        <li class="category">
          <h2>Portrait Watch</h2>
          <a href="#"><img src="images/demo/addidas1.jpg" alt="" /></a>
          <p>Addidas Contain Ceramos, sapphire crystal, Automatic movement, Transparent 
              caseback, Date/Second, available in XL, L and S-size Ref.No. 658.0946.3.015 
              PIC-Code: R15 946 15 3 </p>
          <p class="readmore"><a href="#">Read More »</a></p>
        </li>
        <li class="category">
          <h2>Macro Watch</h2>
          <a href="#"><img src="images/demo/addidas2.jpg" alt="" /></a>
          <p>Addidas Contain Ceramos, sapphire crystal, Automatic movement, Transparent 
              caseback, Date/Second, available in XL, L and S-size Ref.No. 658.0946.3.015 
              PIC-Code: R15 946 15 3 </p>
          <p class="readmore"><a href="#">Read More »</a></p>
        </li>
        <li class="category">
          <h2>Underwater Watch</h2>
          <a href="#"><img src="images/demo/omega1.jpg" alt="" /></a>
          <p>MOVEMENT Caliber: Omega 2610 Self-winding Co-Axial Escapement movement with hour, 
              minute, central seconds-hands and big date at 3 o'clock, rhodium plated finish. 
              New Co-Axial Escapement for greater precision stability and durability of the 
              movement. Officially certified chronometer Power reserve.</p>
        <p class="readmore"><a href="#">Read More »</a></p>
        </li>
      </ul>
      <a class="prev disabled"></a> <a class="next disabled"></a>
      <div style="clear:both"></div>
    </div>
    <!-- ####################################################################################################### -->
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2"></div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="footer" class="clear">
      <asp:LinkButton ID="link_aboutus" runat="server" Font-Bold="True" 
          Font-Size="Large" ForeColor="White" onclick="link_aboutus_Click">About Us</asp:LinkButton>
    </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright © 2012 - All Rights Reserved - <a href="#">Domain Name</a></p>
   
  </div>
</div>
    </form>
</body>
</html>