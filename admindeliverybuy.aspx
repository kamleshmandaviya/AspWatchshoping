<%@ Page Language="C#" MasterPageFile="~/thired.master" AutoEventWireup="true" CodeFile="admindeliverybuy.aspx.cs" Inherits="admindeliverybuy1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            vertical-align: top;
            border-collapse: collapse;
            width: 222px;
            border-left: 1px solid #CCCCCC;
            border-right: 1px solid #CCCCCC;
            padding: 5px;
        }
        .style4
        {
            vertical-align: top;
            border-collapse: collapse;
            width: 461px;
            border-left: 1px solid #CCCCCC;
            border-right: 1px solid #CCCCCC;
            padding: 5px;
        }
        .style5
        {
            width: 993px;
        }
        .style6
        {
            vertical-align: top;
            border-collapse: collapse;
            border-left: 1px solid #CCCCCC;
            border-right: 1px solid #CCCCCC;
            padding: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 700px" class="backgroundmidle scrollbar">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="63px" 
            ImageUrl="~/tital/admin delivery BUY.JPG" Width="334px" />
        <br />
        <br />
        <table style="width: 998px">
            <tr>
                <td align="left" class="style3">
                    &nbsp;</td>
                <td align="left" class="style3">
                    <asp:Label ID="lbluser_id" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="User ID :"></asp:Label>
                </td>
                <td align="left" height="30">
                    <asp:Label ID="lblrecord_user_id" runat="server" Font-Bold="False" 
                        ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" class="style3">
                    &nbsp;</td>
                <td align="left" class="style3">
                    <asp:Label ID="lblname" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Name :"></asp:Label>
                </td>
                <td align="left" height="30">
                    <asp:Label ID="lblrecord_name" runat="server" Font-Bold="False" 
                        ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" class="style3">
                    &nbsp;</td>
                <td align="left" class="style3">
                    <asp:Label ID="lbladdress" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Address :"></asp:Label>
                </td>
                <td align="left" height="30">
                    <asp:Label ID="lblrecord_address" runat="server" Font-Bold="False" 
                        ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" class="style3">
                    &nbsp;</td>
                <td align="left" class="style3">
                    <asp:Label ID="lblphone_no" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Phone No :"></asp:Label>
                </td>
                <td align="left" height="30">
                    <asp:Label ID="lblrecord_phone_no" runat="server" Font-Bold="False" 
                        ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="left" class="style3">
                    &nbsp;</td>
                <td align="left" class="style3">
                    <asp:Label ID="lblorder_date" runat="server" Font-Bold="True" 
                        ForeColor="Black" Text="Order Date :"></asp:Label>
                </td>
                <td align="left">
                    <asp:Label ID="lblrecord_order_date" runat="server" Font-Bold="False" 
                        ForeColor="Black"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table>
            <tr>
                <td align="left" class="style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblorder_no" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Order No :"></asp:Label>
                    &nbsp;<asp:Label ID="lblrecord_order_no" runat="server" Font-Bold="False" 
                        ForeColor="Black"></asp:Label>
                </td>
                <td align="right" height="30">
                    <asp:Label ID="lbldelivery_date" runat="server" Font-Bold="True" 
                        ForeColor="Black" Text="Delivery Date :"></asp:Label>
                    &nbsp;<asp:Label ID="lblrecord_delivery_date" runat="server" Font-Bold="False" 
                        ForeColor="Black"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Table ID="Table1" runat="server" Width="1007px">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="150px">Watch id</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="200px">Model Id</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black"  
                    Width="150px">Compay Name</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black"  Width="150px">Qty</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black"  
                    Width="150px">Amount</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="150px">Total amount</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <table>
            <tr>
                <td align="right" class="style5">
                    <asp:Label ID="lbltotal_amount" runat="server" Font-Bold="True" 
                        ForeColor="Black"  Text="Total Amount :"></asp:Label>
                    &nbsp;<asp:Label ID="lblrecord_total_amount" runat="server" Font-Bold="False" 
                        ForeColor="Black"></asp:Label>
                    </td>
            </tr>
        </table>
        <br />
        <table>
            <tr>
                <td class="style6" width="400">
                    &nbsp;</td>
                <td class="style6" width="50">
                    <asp:LinkButton ID="lbtsubmit" runat="server" CssClass="linkbutton" 
                        ForeColor="White" onclick="lbtsubmit_Click">Submit</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="lbtback" runat="server" CssClass="linkbutton" 
                        ForeColor="White" PostBackUrl="~/AdminBuy.aspx">Back</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

