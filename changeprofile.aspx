<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changeprofile.aspx.cs" Inherits="changeprofile" %>

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

        .style19
        {
            width: 244px;
        }
        .style21
        {
            width: 286px;
        }
        .style20
        {
            width: 194px;
        }
        .style16
        {
            width: 250px;
        }
        .style12
        {
            width: 219px;
        }
        .style13
        {
            width: 63px;
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
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Larger" 
          ForeColor="Black" Text="Change Profile"></asp:Label>
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <table align="left">
          <tr>
              <td align="left" class="style19">
                  &nbsp;</td>
              <td align="left" class="style21">
                  <asp:Label ID="lbluser_id" runat="server" Font-Bold="True" ForeColor="#993300" 
                      Text="User ID :"></asp:Label>
              </td>
              <td align="left" class="style20">
                  <asp:Label ID="lblrecord_user_id" runat="server" Font-Bold="False" 
                      ForeColor="#993300"></asp:Label>
              </td>
              <td align="left" class="style16">
                  &nbsp;</td>
          </tr>
          <tr>
              <td align="left" class="style19">
                  &nbsp;</td>
              <td align="left" class="style21">
                  <asp:Label ID="lblold_password" runat="server" Font-Bold="True" 
                      ForeColor="#993300" Text="Old Password :"></asp:Label>
              </td>
              <td align="left" class="style20">
                  <asp:TextBox ID="txtold_password" runat="server" Height="22px" 
                      TextMode="Password" Width="250px"></asp:TextBox>
              </td>
              <td align="left" class="style16">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                      ControlToValidate="txtold_password" ErrorMessage="*" 
                      ValidationGroup="change profile"></asp:RequiredFieldValidator>
                  <asp:Label ID="lblmessage" runat="server" ForeColor="Red"></asp:Label>
              </td>
          </tr>
          <tr>
              <td align="left" class="style19">
                  &nbsp;</td>
              <td align="left" class="style21">
                  <asp:Label ID="lblre_enter_old_password" runat="server" Font-Bold="True" 
                      ForeColor="#993300" Text="Re-Enter Old Password :"></asp:Label>
              </td>
              <td align="left" class="style20">
                  <asp:TextBox ID="txtre_enter_old_password" runat="server" TextMode="Password" 
                      Width="250px"></asp:TextBox>
              </td>
              <td align="left" class="style16">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                      ControlToValidate="txtre_enter_old_password" ErrorMessage="*" 
                      ValidationGroup="change profile"></asp:RequiredFieldValidator>
                  <asp:CompareValidator ID="CompareValidator2" runat="server" 
                      ControlToCompare="txtold_password" ControlToValidate="txtre_enter_old_password" 
                      ErrorMessage="Enter the same password" ValidationGroup="change profile"></asp:CompareValidator>
              </td>
          </tr>
          <tr>
              <td align="left" class="style19">
                  &nbsp;</td>
              <td align="left" class="style21">
                  <asp:Label ID="lblnew_password" runat="server" Font-Bold="True" 
                      ForeColor="#993300" Text="New Password :"></asp:Label>
              </td>
              <td align="left" class="style20">
                  <asp:TextBox ID="txtnew_password" runat="server" Height="22px" 
                      TextMode="Password" Width="250px"></asp:TextBox>
              </td>
              <td align="left" class="style16">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                      ControlToValidate="txtnew_password" ErrorMessage="*" 
                      ValidationGroup="change profile"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                      ControlToValidate="txtnew_password" ErrorMessage="Minimum 6 character" 
                      ValidationExpression="\w{6,50}" ValidationGroup="change profile"></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
              <td align="left" class="style19">
                  &nbsp;</td>
              <td align="left" class="style21">
                  <asp:Label ID="lblre_enter_new_password" runat="server" Font-Bold="True" 
                      ForeColor="#993300" Text="Re Enter New Password :"></asp:Label>
              </td>
              <td align="left" class="style20">
                  <asp:TextBox ID="txtre_enter_new_password" runat="server" TextMode="Password" 
                      Width="250px"></asp:TextBox>
              </td>
              <td align="left" class="style16">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                      ControlToValidate="txtre_enter_new_password" ErrorMessage="*" 
                      ValidationGroup="change profile"></asp:RequiredFieldValidator>
                  <asp:CompareValidator ID="CompareValidator3" runat="server" 
                      ControlToCompare="txtnew_password" ControlToValidate="txtre_enter_new_password" 
                      ErrorMessage="Enter the same password" ValidationGroup="change profile"></asp:CompareValidator>
              </td>
          </tr>
          <tr>
              <td align="left" class="style19">
                  &nbsp;</td>
              <td align="left" class="style21">
                  <asp:Label ID="lblname" runat="server" Font-Bold="True" ForeColor="#993300" 
                      Text="Name :"></asp:Label>
              </td>
              <td align="left" class="style20">
                  <asp:Label ID="lblrecord_name" runat="server" ForeColor="#993300"></asp:Label>
              </td>
              <td align="left" class="style16">
                  &nbsp;</td>
          </tr>
          <tr>
              <td align="left" class="style19">
                  &nbsp;</td>
              <td align="left" class="style21">
                  <asp:Label ID="lblgender" runat="server" Font-Bold="True" ForeColor="#993300" 
                      Text="Gender :"></asp:Label>
              </td>
              <td align="left" class="style20">
                  <asp:Label ID="lblrecord_gender" runat="server" ForeColor="#993300"></asp:Label>
              </td>
              <td align="left" class="style16">
                  &nbsp;</td>
          </tr>
          <tr>
              <td align="left" class="style19" valign="top">
                  &nbsp;</td>
              <td align="left" class="style21" valign="top">
                  <asp:Label ID="lbladdress" runat="server" Font-Bold="True" ForeColor="#993300" 
                      Text="Address :"></asp:Label>
              </td>
              <td align="left" class="style20">
                  <asp:TextBox ID="txtaddress" runat="server" Height="75px" TextMode="MultiLine" 
                      Width="250px"></asp:TextBox>
              </td>
              <td align="left" class="style16" valign="top">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                      ControlToValidate="txtaddress" ErrorMessage="*" 
                      ValidationGroup="change profile"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td align="left" class="style19" valign="top">
                  &nbsp;</td>
              <td align="left" class="style21" valign="top">
                  <asp:Label ID="lblcountry" runat="server" Font-Bold="True" ForeColor="#993300" 
                      Text="Country :"></asp:Label>
              </td>
              <td align="left" class="style20">
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
              <td align="left" class="style16">
                  &nbsp;</td>
          </tr>
          <tr>
              <td align="left" class="style19" valign="top">
                  &nbsp;</td>
              <td align="left" class="style21" valign="top">
                  <asp:Label ID="lblemail_id" runat="server" Font-Bold="True" ForeColor="#993300" 
                      Text="Email ID :"></asp:Label>
              </td>
              <td align="left" class="style20">
                  <asp:TextBox ID="txtemail_id" runat="server" Width="250px"></asp:TextBox>
              </td>
              <td align="left" class="style16">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                      ControlToValidate="txtemail_id" ErrorMessage="*" 
                      ValidationGroup="change profile"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                      ControlToValidate="txtemail_id" ErrorMessage="Enter the valid email id" 
                      ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                      ValidationGroup="change profile"></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
              <td align="left" class="style19" valign="top">
                  &nbsp;</td>
                    <td align="left" class="style21" valign="top">
                        <asp:Label ID="lblphone_no" runat="server" Font-Bold="True" ForeColor="#993300" 
                            Text="Phone No :"></asp:Label>
                    </td>
                    <td align="left" class="style20">
                        <asp:TextBox ID="txtphone_no" runat="server" Width="250px"></asp:TextBox>
                    </td>
                    <td align="left" class="style16">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                            ControlToValidate="txtphone_no" ErrorMessage="*" 
                            ValidationGroup="change profile"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                            ControlToValidate="txtphone_no" ErrorMessage="Minimum 10 digit" 
                            ValidationExpression="\d{10,}" ValidationGroup="change profile"></asp:RegularExpressionValidator>
                    </td>
                </tr>
            </table>
            <table align="left">
                <tr>
                    <td class="style12">
                    </td>
                    <td align="center" class="style13">
                        <asp:LinkButton ID="lbtsubmit" runat="server" CssClass="linkbutton" 
                            ForeColor="White" onclick="lbtsubmit_Click" ValidationGroup="change profile">Submit</asp:LinkButton>
                    </td>
                    <td align="center" class="style13">
                        <asp:LinkButton ID="lbtback" runat="server" CssClass="linkbutton" 
                            ForeColor="White" PostBackUrl="~/HomePage.aspx">Back</asp:LinkButton>
                    </td>
                </tr>
            </table>
      <br />
      
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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