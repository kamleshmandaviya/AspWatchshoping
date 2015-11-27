<%@ Page Language="C#" MasterPageFile="~/thired.master" AutoEventWireup="true" CodeFile="adminaddadvertise.aspx.cs" Inherits="adminaddadvertise1" Title="Untitled Page" %>
<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 245px;
        }
        .style3
        {
            width: 411px;
        }

textarea{
	font-size:12px;
	font-family:Georgia, "Times New Roman", Times, serif;
	}

    select{
	font-size:12px;
	font-family:Georgia, "Times New Roman", Times, serif;
	}

    input{
	font-size:12px;
	font-family:Georgia, "Times New Roman", Times, serif;
	}

        .style4
        {
            width: 460px;
        }
        .style5
        {
            width: 385px;
        }
        .style6
        {
            width: 220px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 750px" class="backgroundmidle scrollbar">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="63px" 
            ImageUrl="~/tital/add advertise.jpg" Width="334px" />
        <br />
        <br />
        <table class="style1">
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Addvertise Id"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="lbl_addid" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Addvertise Description"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_description" runat="server" Height="105px" Width="280px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Addvertise Company"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    <asp:DropDownList ID="txt_company" runat="server" Width="200px">
                        <asp:ListItem>sonata</asp:ListItem>
                        <asp:ListItem>rolex</asp:ListItem>
                        <asp:ListItem>swatch</asp:ListItem>
                        <asp:ListItem>omega</asp:ListItem>
                        <asp:ListItem>titan</asp:ListItem>
                        <asp:ListItem>addidas</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Addvertise Date"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    <asp:TextBox ID="txt_date" runat="server" Width="200px" 
                        ></asp:TextBox>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Addvertise Time"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    <asp:TextBox ID="txt_time" runat="server" Width="200px"></asp:TextBox>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Addvertise Price"></asp:Label>
                </td>
                <td class="style3">
                    <br />
                    <asp:TextBox ID="txt_price" runat="server" Width="200px"></asp:TextBox>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                        &nbsp;</td>
                <td class="style6">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Black" Text="Addvertise Photo"></asp:Label>
                </td>
                <td class="style3">
                    <eo:AJAXUploader ID="AJAXUploader1" runat="server" AllowedExtension=".jpg" 
                        FinalFileLocation="~/addimage" MaxFileCount="1" TempFileLocation="~/temp" 
                        Width="420px">
                    </eo:AJAXUploader>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" colspan="2">
                    &nbsp;</td>
                <td class="style3">
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="btn_submit" runat="server" onclick="btn_submit_Click" 
                        Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_cancel" runat="server" onclick="btn_cancel_Click" 
                        Text="Cancel" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_clear" runat="server" onclick="btn_clear_Click" 
                        Text="Clear" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_back" runat="server" onclick="btn_back_Click" Text="Back" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

