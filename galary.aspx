<%@ Page Language="C#" AutoEventWireup="true" CodeFile="galary.aspx.cs" Inherits="galary" %>

<%@ Register Assembly="ASPNetFlash.NET3" Namespace="ASPNetFlash" TagPrefix="ASPNetFlash" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Online Watch Shoping</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<link rel="stylesheet" href="back.css" type="text/css" />
<link rel="stylesheet" href="styles/prettyPhoto.css" type="text/css" />
<script type="text/javascript" src="scripts/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts/jquery-ui-1.8.12.custom.min.js"></script>
<script type="text/javascript" src="scripts/jquery-prettyPhoto.js"></script>
<script type="text/javascript">
$(document).ready(function () {
    $("#tabcontainer").tabs({
        event: "click"
    });
    $("a[rel^='prettyPhoto']").prettyPhoto({
        theme: 'dark_rounded'
    });
});
</script>
</head>
<body id="top">
    <form id="form1" runat="server">
<div class="wrapper col1" class="backwhite">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="#">Online Watch Shoping</a></h1>
    </div>
    <div class="fl_right">
        
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
          <li><a href="watch1.aspx?company_name=rolax">Rolax</a></li>
          <li><a href="watch1.aspx?company_name=adidas">Adidas</a></li>
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
<div class="wrapper col2">
  <div id="container" class="clear">
    <!-- ####################################################################################################### -->
    <div id="tabcontainer">
      <ul id="tabnav">
        <li><a href="#tabs-1">Man's Watch</a></li>
        <li><a href="#tabs-2">Woman's Watch</a></li>
        <li><a href="#tabs-3">Children's Watch</a></li>
        <li><a href="#tabs-4">Sport Watch</a></li>
        <li><a href="#tabs-5">Action Watch</a></li>
      </ul>
      <!-- ########### -->
      <div id="tabs-1" class="gallery clear">
        <ul>
          <li><a href="images/demo/portfolioslider/rado1.jpg" rel="prettyPhoto[gallery1]" title="Image 1"><img src="images/demo/gallery/rado1.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado2.jpg" rel="prettyPhoto[gallery1]" title="Image 2"><img src="images/demo/gallery/rado2.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado3.jpg" rel="prettyPhoto[gallery1]" title="Image 3"><img src="images/demo/gallery/rado3.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado4.jpg" rel="prettyPhoto[gallery1]" title="Image 4"><img src="images/demo/gallery/rado4.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado5.jpg" rel="prettyPhoto[gallery1]" title="Image 5"><img src="images/demo/gallery/rado5.jpg" alt="" /></a></li>
          <li class="last"><a href="images/demo/portfolioslider/rado6.jpg" rel="prettyPhoto[gallery1]" title="Image 6"><img src="images/demo/gallery/rado6.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado7.jpg" rel="prettyPhoto[gallery1]" title="Image 7"><img src="images/demo/gallery/rado7.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado5.jpg" rel="prettyPhoto[gallery1]" title="Image 8"><img src="images/demo/gallery/rado5.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado3.jpg" rel="prettyPhoto[gallery1]" title="Image 9"><img src="images/demo/gallery/rado3.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado1.jpg" rel="prettyPhoto[gallery1]" title="Image 10"><img src="images/demo/gallery/rado1.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/1.gif" rel="prettyPhoto[gallery1]" title="Image 11"></a></li>
          <li class="last"><a href="images/demo/portfolioslider/1.gif" rel="prettyPhoto[gallery1]" title="Image 12"></a></li>
        </ul>
      </div>
      <!-- ########### -->
      <div id="tabs-2" class="gallery clear">
        <ul>
          <li><a href="images/demo/portfolioslider/omega1.jpg" rel="prettyPhoto[gallery2]" title="Image 1"><img src="images/demo/gallery/omega1.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/omega2.jpg" rel="prettyPhoto[gallery2]" title="Image 2"><img src="images/demo/gallery/omega2.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/omega3.jpg" rel="prettyPhoto[gallery2]" title="Image 3"><img src="images/demo/gallery/omega3.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/omega4.jpg" rel="prettyPhoto[gallery2]" title="Image 4"><img src="images/demo/gallery/omega4.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/omega5.jpg" rel="prettyPhoto[gallery2]" title="Image 5"><img src="images/demo/gallery/omega5.jpg" alt="" /></a></li>
          <li class="last"><a href="images/demo/portfolioslider/omega6.jpg" rel="prettyPhoto[gallery2]" title="Image 6"><img src="images/demo/gallery/omega6.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/omega7.jpg" rel="prettyPhoto[gallery2]" title="Image 7"><img src="images/demo/gallery/omega7.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/omega8.jpg" rel="prettyPhoto[gallery2]" title="Image 8"><img src="images/demo/gallery/omega8.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/omega9.jpg" rel="prettyPhoto[gallery2]" title="Image 9"><img src="images/demo/gallery/omega9.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/omega10.jpg" rel="prettyPhoto[gallery2]" title="Image 10"><img src="images/demo/gallery/omega10.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/1.gif" rel="prettyPhoto[gallery2]" title="Image 11"></a></li>
          <li class="last"><a href="images/demo/portfolioslider/1.gif" rel="prettyPhoto[gallery2]" title="Image 12"></a></li>
        </ul>
      </div>
      <!-- ########### -->
      <div id="tabs-3" class="gallery clear">
        <ul>
          <li><a href="images/demo/portfolioslider/titan2.jpg" rel="prettyPhoto[gallery3]" title="Image 1"><img src="images/demo/gallery/titan2.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado1.jpg" rel="prettyPhoto[gallery3]" title="Image 2"><img src="images/demo/gallery/rado1.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/titan3.jpg" rel="prettyPhoto[gallery3]" title="Image 3"><img src="images/demo/gallery/titan3.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/titan4.jpg" rel="prettyPhoto[gallery3]" title="Image 4"><img src="images/demo/gallery/titan4.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/titan5.jpg" rel="prettyPhoto[gallery3]" title="Image 5"><img src="images/demo/gallery/titan5.jpg" alt="" /></a></li>
          <li class="last"><a href="images/demo/portfolioslider/titan6.jpg" rel="prettyPhoto[gallery3]" title="Image 6"><img src="images/demo/gallery/titan6.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/titan7.jpg" rel="prettyPhoto[gallery3]" title="Image 7"><img src="images/demo/gallery/titan7.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/titan8.jpg" rel="prettyPhoto[gallery3]" title="Image 8"><img src="images/demo/gallery/titan8.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/titan9.jpg" rel="prettyPhoto[gallery3]" title="Image 9"><img src="images/demo/gallery/titan9.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/titan10.jpg" rel="prettyPhoto[gallery3]" title="Image 10"><img src="images/demo/gallery/titan10.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/1.gif" rel="prettyPhoto[gallery3]" title="Image 11"></a></li>
          <li class="last"><a href="images/demo/portfolioslider/1.gif" rel="prettyPhoto[gallery3]" title="Image 12"></a></li>
        </ul>
      </div>
      <!-- ########### -->
      <div id="tabs-4" class="gallery clear">
        <ul>
          <li><a href="images/demo/portfolioslider/r-1001.jpg" rel="prettyPhoto[gallery4]" title="Image 1"><img src="images/demo/gallery/r-1001.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/r-1002.jpg" rel="prettyPhoto[gallery4]" title="Image 2"><img src="images/demo/gallery/r-1002.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/r-1003.jpg" rel="prettyPhoto[gallery4]" title="Image 3"><img src="images/demo/gallery/r-1003.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/r-1004.jpg" rel="prettyPhoto[gallery4]" title="Image 4"><img src="images/demo/gallery/r-1004.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/r-1005.jpg" rel="prettyPhoto[gallery4]" title="Image 5"><img src="images/demo/gallery/r-1005.jpg" alt="" /></a></li>
          <li class="last"><a href="images/demo/portfolioslider/r-1006.jpg" rel="prettyPhoto[gallery4]" title="Image 6"><img src="images/demo/gallery/r-1006.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/r-1007.jpg" rel="prettyPhoto[gallery4]" title="Image 7"><img src="images/demo/gallery/r-1007.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/r-1008.jpg" rel="prettyPhoto[gallery4]" title="Image 8"><img src="images/demo/gallery/r-1008.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/r-1009.jpg" rel="prettyPhoto[gallery4]" title="Image 9"><img src="images/demo/gallery/r-1009.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/r-1010.jpg" rel="prettyPhoto[gallery4]" title="Image 10"><img src="images/demo/gallery/r-1010.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/1.gif" rel="prettyPhoto[gallery4]" title="Image 11"></a></li>
          <li class="last"><a href="images/demo/portfolioslider/1.gif" rel="prettyPhoto[gallery4]" title="Image 12"></a></li>
        </ul>
      </div>
      <!-- ########### -->
      <div id="tabs-5" class="gallery clear">
        <ul>
          <li><a href="images/demo/portfolioslider/rado1.jpg" rel="prettyPhoto[gallery5]" title="Image 1"><img src="images/demo/gallery/rado1.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado2.jpg" rel="prettyPhoto[gallery5]" title="Image 2"><img src="images/demo/gallery/rado2.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado3.jpg" rel="prettyPhoto[gallery5]" title="Image 3"><img src="images/demo/gallery/rado3.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado4.jpg" rel="prettyPhoto[gallery5]" title="Image 4"><img src="images/demo/gallery/rado4.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado5.jpg" rel="prettyPhoto[gallery5]" title="Image 5"><img src="images/demo/gallery/rado5.jpg" alt="" /></a></li>
          <li class="last"><a href="images/demo/portfolioslider/rado6.jpg" rel="prettyPhoto[gallery5]" title="Image 6"><img src="images/demo/gallery/rado6.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado7.jpg" rel="prettyPhoto[gallery5]" title="Image 7"><img src="images/demo/gallery/rado7.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado10.jpg" rel="prettyPhoto[gallery5]" title="Image 8"><img src="images/demo/gallery/rado10.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado8.jpg" rel="prettyPhoto[gallery5]" title="Image 9"><img src="images/demo/gallery/rado8.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/rado9.jpg" rel="prettyPhoto[gallery5]" title="Image 10"><img src="images/demo/gallery/rado9.jpg" alt="" /></a></li>
          <li><a href="images/demo/portfolioslider/1.gif" rel="prettyPhoto[gallery5]" title="Image 11"></a></li>
          <li class="last"><a href="images/demo/portfolioslider/1.gif" rel="prettyPhoto[gallery5]" title="Image 12"></a></li>
        </ul>
      </div>
      <!-- ########### -->
    </div>
    <!-- ####################################################################################################### -->
    <div class="pagination">
      <ul>
        <li class="prev"><a href="#">« Previous</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li class="splitter">&#8230;</li>
        <li><a href="#">6</a></li>
        <li class="current">7</li>
        <li><a href="#">8</a></li>
        <li><a href="#">9</a></li>
        <li class="splitter">&#8230;</li>
        <li><a href="#">14</a></li>
        <li><a href="#">15</a></li>
        <li class="next"><a href="#">Next »</a></li>
      </ul>
    </div>
    <!-- ####################################################################################################### -->
  </div>
</div>
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