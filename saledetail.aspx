<%@ Page Language="C#" MasterPageFile="~/thired.master" AutoEventWireup="true" CodeFile="saledetail.aspx.cs" Inherits="saledetail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 699px" class="backgroundmidle">
        <br />
        <br />
        <br />
        <asp:Table ID="Table2" runat="server" Width="1292px">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" Width="90px">Order 
                no</asp:TableCell>
                
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" Width="70px">conform Order date</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" Width="70px">Delivery Date</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="70px">User Name</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="150px">Total Amount</asp:TableCell>
                
                
            </asp:TableRow>
        </asp:Table>
        <br />
        <br />
        <br />
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
    </div>
</asp:Content>

