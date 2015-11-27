<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="forgetpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>PhotoFolio | Full Width</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
<link rel="stylesheet" href="back.css" type="text/css" />
    <style type="text/css">

    * { margin:0;
    padding:0;
}

        .style9
        {
            width: 140px;
        }
        </style>
</head>
<body id="top">
    <form id="form1" runat="server">
<div class="wrapper col1">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="#">OnliOnline Watch Shoping</a></h1>
          </div>
    <div class="fl_right"></div>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col1">
  <div id="topbar" class="clear">
    <ul id="topnav">
      <li><a href="home.aspx">Home</li>
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
          <li><a href="watch.aspx?company_name=rolax">Rolax</a></li>
          <li><a href="watch.aspx?company_name=adidas">Adidas</a></li>
		  <li><a href="watch.aspx?company_name=titan">Titan</a></li>
		  <li><a href="watch.aspx?company_name=swatch">Swatch</a></li>
          <li><a href="watch.aspx?company_name=omega">Omega</a></li>
        </ul>
      </li>
      <li><a href="contactus.aspx">Contact Us</a></li>
      <li><a href="aboutus.aspx">Adout Us</a></li>
	  <li><a href="advertise.aspx">Advertise</a></li>
	  <li><a href="cartdetail.aspx">Cart</a></li>
      <li class="last"><a href="galary.aspx">Gallery</a></li>
    </ul>
      &nbsp;</div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper col2">
  <div id="container" class="clear">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;
      <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Larger" 
          ForeColor="Black" Text="Forgot Password"></asp:Label>
      <br />
      <table>
          <tr>
              <td align="left" class="style9">
                  &nbsp;</td>
              <td align="left" class="style9">
                  &nbsp;</td>
                    <td align="left" class="style9">
                        <asp:Label ID="lblsecurity_question" runat="server" Font-Bold="True" 
                            ForeColor="Black" Text="Security Question :"></asp:Label>
                    </td>
                    <td align="left">
                        <asp:Label ID="lblrecord_security_question" runat="server" Font-Bold="True" 
                            ForeColor="Black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style9">
                        &nbsp;</td>
                    <td align="left" class="style9">
                        &nbsp;</td>
                    <td align="left" class="style9">
                        <asp:Label ID="lblanswer" runat="server" Font-Bold="True" ForeColor="Black" 
                            Text="Answer :"></asp:Label>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txtanswer" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtanswer" ErrorMessage="*" 
                            ValidationGroup="forget password"></asp:RequiredFieldValidator>
                        <asp:Label ID="lblmessage" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="lbtsubmit" runat="server" CssClass="linkbutton" 
                Font-Bold="True" ForeColor="White" onclick="lbtsubmit_Click" 
                ValidationGroup="forget password">Submit</asp:LinkButton>
      <br />
      
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblpassword" runat="server" ForeColor="Red"></asp:Label>
            <br />
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="footer" class="clear"></div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper">
  <div id="copyright" class="clear">
    <p class="fl_left">Copyright © 2011 - All Rights Reserved - >
      <div id="copyright" class="clear">
    <p class="fl_left">Copyright © 2011 - All Rights Reserved - >
    </form>
</body>
</html>