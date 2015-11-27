<%@ Page Language="C#" MasterPageFile="~/thired.master" AutoEventWireup="true" CodeFile="adminbuy.aspx.cs" Inherits="adminbuy1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 689px" class="backgroundmidle scrollbar">
        &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton1" runat="server" Height="63px" 
            ImageUrl="~/tital/admin delivery report.jpg" Width="333px" />
        <br />
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" Width="70px">Order 
                no</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" Width="100px">Order 
                date</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" Width="150px">User 
                id</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" Width="100px">Watch 
                id</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="100px">Model Id</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="150px">Watch Company</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" Width="75px">Qty</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" Width="100px">Amount</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="100px">Total amount</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" Width="100px">Delivery 
                link</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" Width="100px">Cancel 
                link</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />
        <asp:Table ID="Table2" runat="server" ForeColor="Black" Width="16px">
        </asp:Table>
    </div>
</asp:Content>

