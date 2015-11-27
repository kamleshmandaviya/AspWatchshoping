<%@ Page Language="C#" AutoEventWireup="true" CodeFile="advertise.aspx.cs" Inherits="advertise" %>

<%@ Register namespace="ASPNetFlashVideo" tagprefix="ASPNetFlashVideo" %>
<%@ Register assembly="ASPNetFlashVideo.NET3" namespace="ASPNetFlashVideo" tagprefix="ASPNetFlashVideo" %>

<%@ Register assembly="ASPNetFlash.NET3" namespace="ASPNetFlash" tagprefix="ASPNetFlash" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>Online Watch Shoping</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<link rel="stylesheet" href="back.css" type="text/css" />
    <style type="text/css">


        .style11
        {
            width: 150px;
        }
        </style>
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
          <li><a href="watch_price.aspx?watch_price=10000">1,000-2,000</a></li>
          <li><a href="watch_price.aspx?watch_price=20000">2,000-5,000</a></li>
          <li><a href="watch_price.aspx?watch_price=50000">5,000-10,000</a></li>
          <li><a href="watch_price.aspx?watch_price=100000">10,000-15,000</a></li>
          <li><a href="watch_price.aspx?watch_price=15000">15,000-25,000</a></li>
		  <li><a href="watch_price.aspx?watch_price=25000">25,000-50,000</a></li>
		  <li><a href="watch_price.aspx?watch_price=50000">50,000-70,000</a></li>
        </ul>
      </li>
	  <li><a href="#">Category</a>
        <ul>
          <li><a href="watch_menu.aspx?set=man">Man</a></li>
          <li><a href="watch_menu.aspx?set=woman">Woman</a></li>
          <li><a href="watch_menu.aspx?set=child">Children</a></li>
        </ul>
      </li>
	  <li><a href="#">Company</a>
        <ul>
          <li><a href="watch.aspx?company_name=sonata">Sonata</a></li>
          <li><a href="watch.aspx?company_name=rado">Rado</a></li>
          <li><a href="watch.aspx?company_name=rolex">Rolex</a></li>
          <li><a href="watch.aspx?company_name=addidas">Addidas</a></li>
		  <li><a href="watch.aspx?company_name=titan">Titan</a></li>
		  <li><a href="watch.aspx?company_name=swatch">Swatch</a></li>
          <li><a href="watch.aspx?company_name=omega">Omega</a></li>
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
    <!-- ####################################################################################################### -->
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" 
          ForeColor="Black" Text="Watch Advertise"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <br />
      <table>
          <tr>
              <td align="right">
                  <eo:Downloader ID="Downloader1" runat="server" AutoHideDownloadButton="False" 
                      DownloadButtonID="lbtdownload">
                    </eo:Downloader>
                  <asp:LinkButton ID="lbtdownload" runat="server" CssClass="linkbutton" 
                      ForeColor="White" Visible="False" >Download</asp:LinkButton>
              </td>
          </tr>
      </table>

      <table>
          <tr>
              <td class="style11" valign="top">
                  <asp:Panel ID="Panel1" runat="server" Height="400px">
                  </asp:Panel>
              </td>
              <td valign="top">
                  <ASPNetFlashVideo:FlashVideo ID="FlashVideo1" runat="server" Height="400px" 
                      Width="600px">
                    </ASPNetFlashVideo:FlashVideo>
              </td>
          </tr>
      </table>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="footer" class="clear"></div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright © 2011 - All Rights Reserved - ref="#">Domain Name</a></p>
    
  </div>
</div>
    </form>
</body>
</html>