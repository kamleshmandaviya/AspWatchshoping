<%@ Page Language="C#" MasterPageFile="~/thired.master" AutoEventWireup="true" CodeFile="adminmodifyadvertise.aspx.cs" Inherits="adminmodifyadvertise1" Title="Untitled Page" %>
<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            width: 179px;
        }
        .style4
        {
            height: 26px;
            width: 412px;
        }
        .style5
        {
            width: 179px;
            height: 26px;
        }
        .style6
        {
            width: 1042px;
            height: 26px;
        }
        .style7
        {
            width: 1042px;
        }
        .style8
        {
            width: 412px;
            height: 20px;
        }
        .style9
        {
            width: 1002px;
            height: 20px;
        }
        .style10
        {
            width: 1296px;
            height: 20px;
        }
        .style11
        {
            width: 1341px;
            height: 20px;
        }
        .style12
        {
            width: 1341px;
            height: 115px;
        }
        .style13
        {
            width: 1341px;
            height: 26px;
        }
        .style14
        {
            width: 1341px;
        }
        .style15
        {
            width: 412px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 815px" class="backgroundmidle scrollbar">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="63px" 
            ImageUrl="~/tital/admin modify advertise.jpg" Width="333px" />
        <br />
        <br />
        <table style="height: 87px">
            <tr>
                <td class="style11">
&nbsp;&nbsp;</td>
                <td class="style8">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Advertise Id:"></asp:Label>
                </td>
                <td class="style9">
                    <asp:Label ID="lbl_addid" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="style10">
                    </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="250px" Width="500px" />
                </td>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style15">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Advertise Description:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_adddescription" runat="server" Height="99px" 
                        TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style13">
                    </td>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Advertise Company:"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txt_company" runat="server" Width="269px"></asp:TextBox>
                </td>
                <td class="style6">
                    </td>
            </tr>
            <tr>
                <td class="style14">
                    </td>
                <td class="style15">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Advertise Release Date:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_date" runat="server" Width="267px"></asp:TextBox>
                </td>
                <td class="style7">
                    </td>
            </tr>
            <tr>
                <td class="style14">
                    </td>
                <td class="style15">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Advertise Release Time:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_time" runat="server" Width="269px"></asp:TextBox>
                </td>
                <td class="style7">
                    </td>
            </tr>
            <tr>
                <td class="style14">
                    </td>
                <td class="style15">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Advertise Price:"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txt_price" runat="server" Width="268px"></asp:TextBox>
                </td>
                <td class="style7">
                    </td>
            </tr>
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style2" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_update" runat="server" onclick="btn_update_Click" 
                        Text="Update" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_clear" runat="server" Text="Clear" />
                </td>
                <td class="style1">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
</asp:Content>

