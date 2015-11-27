<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newregister.aspx.cs" Inherits="newregister" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

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

        .style20
        {
            width: 159px;
        }
        .style23
        {
            width: 139px;
        }
        .style13
        {
            width: 254px;
        }
        .style17
        {
            width: 175px;
        }
        .style19
        {
            width: 110px;
        }
        .style22
        {
            height: 83px;
            width: 110px;
        }
        .style16
        {
            height: 83px;
        }
        </style>
</head>
<body id="top">
    <form id="form1" runat="server">
<div class="wrapper col1">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="#">Online Watch Shoping</a></h1>
          </div>
    <div class="fl_right"></div>
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
    <!-- ####################################################################################################### -->
    <!-- ####################################################################################################### -->
      <br />
      
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Larger" 
          ForeColor="Black" Text="New User Register"></asp:Label>
      <br />
      
            <br />
            <table>
                <tr>
                    <td align="left" class="style20" valign="top">
                        &nbsp;</td>
                    <td align="left" class="style23" valign="top">
                        <asp:Label ID="lbluser_id" runat="server" Font-Bold="True" ForeColor="#993300" 
                            Text="User ID :"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="txtuser_id" runat="server" Height="22px" Width="250px"></asp:TextBox>
                    </td>
                    <td align="left" class="style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txtuser_id" Display="Dynamic" ErrorMessage="*" 
                            ValidationGroup="new user registration"></asp:RequiredFieldValidator>
                        <asp:Label ID="lbluser_id_msg" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style20" valign="top">
                        &nbsp;</td>
                    <td align="left" class="style23" valign="top">
                        <asp:Label ID="lblpassword" runat="server" Font-Bold="True" ForeColor="#993300" 
                            Text="Password :"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="250px"></asp:TextBox>
                    </td>
                    <td align="left" class="style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                            ControlToValidate="txtpassword" Display="Dynamic" ErrorMessage="*" 
                            ValidationGroup="new user registration"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                            ControlToValidate="txtpassword" ErrorMessage="Minimum 6 character" 
                            ValidationExpression="\w{6,50}" ValidationGroup="new user registration"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style20" valign="top">
                        &nbsp;</td>
                    <td align="left" class="style23" valign="top">
                        <asp:Label ID="lblconfirm_password" runat="server" Font-Bold="True" 
                            ForeColor="#993300" Text="Confirm Password :"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="txtconfirm_password" runat="server" TextMode="Password" 
                            Width="250px"></asp:TextBox>
                    </td>
                    <td align="left" class="style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtconfirm_password" Display="Dynamic" ErrorMessage="*" 
                            ValidationGroup="new user registration"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="txtpassword" ControlToValidate="txtconfirm_password" 
                            ErrorMessage="Enter the same password" ValidationGroup="new user registration"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style20" valign="top">
                        &nbsp;</td>
                    <td align="left" class="style23" valign="top">
                        <asp:Label ID="lblname" runat="server" Font-Bold="True" ForeColor="#993300" 
                            Text="Name :"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="txtname" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td align="left" class="style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtname" ErrorMessage="*" 
                            ValidationGroup="new user registration"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style20" valign="top">
                        &nbsp;</td>
                    <td align="left" class="style23" valign="top">
                        <asp:Label ID="lblgender" runat="server" Font-Bold="True" ForeColor="#993300" 
                            Text="Gender :"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:DropDownList ID="ddlgender" runat="server" Height="20px" Width="135px">
                            <asp:ListItem>select the gender</asp:ListItem>
                            <asp:ListItem>male</asp:ListItem>
                            <asp:ListItem>female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td align="left" class="style17">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="left" class="style20" valign="top">
                        &nbsp;</td>
                    <td align="left" class="style23" valign="top">
                        <asp:Label ID="lbladdress" runat="server" Font-Bold="True" ForeColor="#993300" 
                            Text="Address :"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="txtaddress" runat="server" Height="75px" TextMode="MultiLine" 
                            Width="250px"></asp:TextBox>
                    </td>
                    <td align="left" class="style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="txtaddress" ErrorMessage="*" 
                            ValidationGroup="new user registration"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style20" valign="top">
                        &nbsp;</td>
                    <td align="left" class="style23" valign="top">
                        <asp:Label ID="lblcountry" runat="server" Font-Bold="True" ForeColor="#993300" 
                            Text="Country :"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:DropDownList ID="ddlcountry" runat="server" Height="20px" Width="139px">
                            <asp:ListItem>select the country</asp:ListItem>
                            <asp:ListItem>Afghanistan</asp:ListItem>
                            <asp:ListItem>Bangladesh</asp:ListItem>
                            <asp:ListItem>Belgium</asp:ListItem>
                            <asp:ListItem>Bhutan</asp:ListItem>
                            <asp:ListItem>Brazil</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>Chile</asp:ListItem>
                            <asp:ListItem>China</asp:ListItem>
                            <asp:ListItem>Denmark</asp:ListItem>
                            <asp:ListItem>Ethiopia</asp:ListItem>
                            <asp:ListItem>France</asp:ListItem>
                            <asp:ListItem>Germany</asp:ListItem>
                            <asp:ListItem>Honk Kong</asp:ListItem>
                            <asp:ListItem>Iceland</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>Indonesia</asp:ListItem>
                            <asp:ListItem>Iran</asp:ListItem>
                            <asp:ListItem>Iraq</asp:ListItem>
                            <asp:ListItem>Ireland</asp:ListItem>
                            <asp:ListItem>Italy</asp:ListItem>
                            <asp:ListItem>Japan</asp:ListItem>
                            <asp:ListItem>Jordan</asp:ListItem>
                            <asp:ListItem>Kenya</asp:ListItem>
                            <asp:ListItem>Korea</asp:ListItem>
                            <asp:ListItem>Lebanon</asp:ListItem>
                            <asp:ListItem>Libya</asp:ListItem>
                            <asp:ListItem>Malaysia</asp:ListItem>
                            <asp:ListItem>Mali</asp:ListItem>
                            <asp:ListItem>Malta</asp:ListItem>
                            <asp:ListItem>Mexico</asp:ListItem>
                            <asp:ListItem>Nepal</asp:ListItem>
                            <asp:ListItem>New-Zeland</asp:ListItem>
                            <asp:ListItem>Norway</asp:ListItem>
                            <asp:ListItem>Omna</asp:ListItem>
                            <asp:ListItem>Pasiktan</asp:ListItem>
                            <asp:ListItem>Philippines</asp:ListItem>
                            <asp:ListItem>Poland</asp:ListItem>
                            <asp:ListItem>Romania</asp:ListItem>
                            <asp:ListItem>Saudi-Arebia</asp:ListItem>
                            <asp:ListItem>Singapore</asp:ListItem>
                            <asp:ListItem>U.S.A</asp:ListItem>
                            <asp:ListItem>U.K.</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td align="left" class="style17">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="left" class="style20" valign="top">
                        &nbsp;</td>
                    <td align="left" class="style23" valign="top">
                        <asp:Label ID="lblemail_id" runat="server" Font-Bold="True" ForeColor="#993300" 
                            Text="Email ID :"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="txtemail_id" runat="server" Height="22px" Width="250px"></asp:TextBox>
                    </td>
                    <td align="left" class="style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                            ControlToValidate="txtemail_id" Display="Dynamic" ErrorMessage="*" 
                            ValidationGroup="new user registration"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                            ControlToValidate="txtemail_id" ErrorMessage="Enter the valid email id" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            ValidationGroup="new user registration"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style20" valign="top">
                        &nbsp;</td>
                    <td align="left" class="style23" valign="top">
                        <asp:Label ID="lblphone_no" runat="server" Font-Bold="True" ForeColor="#993300" 
                            Text="Phone No :"></asp:Label>
                        &nbsp;&nbsp;</td>
                    <td class="style13">
                        <asp:TextBox ID="txtphone_no" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td align="left" class="style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                            ControlToValidate="txtphone_no" Display="Dynamic" ErrorMessage="*" 
                            ValidationGroup="new user registration"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                            ControlToValidate="txtphone_no" ErrorMessage="Minimum 10 digit" 
                            ValidationExpression="\d{10,}" ValidationGroup="new user registration"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style20" valign="top">
                        &nbsp;</td>
                    <td align="left" class="style23" valign="top">
                        <asp:Label ID="lblsecurity_question" runat="server" Font-Bold="True" 
                            ForeColor="#993300" Text="Security Question :"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="txtsecurity_question" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td align="left" class="style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                            ControlToValidate="txtsecurity_question" Display="Dynamic" ErrorMessage="*" 
                            ValidationGroup="new user registration"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                            ControlToValidate="txtsecurity_question" ErrorMessage="Minimum 6 character" 
                            ValidationExpression="\w{6,50}" ValidationGroup="new user registration"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style20" valign="top">
                        &nbsp;</td>
                    <td align="left" class="style23" valign="top">
                        <asp:Label ID="lblanswer" runat="server" Font-Bold="True" ForeColor="#993300" 
                            Text="Answer :"></asp:Label>
                    </td>
                    <td class="style13">
                        <asp:TextBox ID="txtanswer" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td align="left" class="style17">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                            ControlToValidate="txtanswer" Display="Dynamic" ErrorMessage="*" 
                            ValidationGroup="new user registration"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                            ControlToValidate="txtanswer" ErrorMessage="Minimum 6 character" 
                            ValidationExpression="\w{6,50}" ValidationGroup="new user registration"></asp:RegularExpressionValidator>
                    </td>
                </tr>
      </table>
      <br />
      <table>
          <tr>
              <td align="center" class="style19">
                  &nbsp;</td>
              <td align="center">
                  <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#993300" 
                      Text="Please enter the spam verification number exactly as shown in left"></asp:Label>
              </td>
          </tr>
          <tr>
              <td align="center" class="style22">
                  &nbsp;</td>
                    <td align="center" class="style16">
                        <eo:Captcha ID="Captcha1" runat="server">
                        </eo:Captcha>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style19">
                        &nbsp;</td>
                    <td align="center">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="center" class="style19">
                        &nbsp;</td>
                    <td align="center">
                        <asp:Label ID="MessageLabel" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style19">
                        &nbsp;</td>
                    <td align="center">
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="linkbutton" 
                            Font-Bold="True" ForeColor="White" onclick="LinkButton1_Click">Create 
                        Account</asp:LinkButton>
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
    <p class="fl_left">Copyright © 2011 - All Rights Reserved - >
    </form>
</body>
</html>