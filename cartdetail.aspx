<%@ Page Language="C#" MasterPageFile="~/first.master" AutoEventWireup="true" CodeFile="cartdetail.aspx.cs" Inherits="cartdetail" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 713px" class="scrollbar backwhite">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="lbtconform" runat="server" Font-Bold="True" 
            ForeColor="Black" onclick="lbtconform_Click">Conform</asp:LinkButton>
        <br />
        <br />
        <asp:Table ID="Table2" runat="server" ForeColor="Black">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="150px">Watch photo</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="150px">Watch Company</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="100px">Watch price</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="100px">Qty</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="100px">Total</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="100px">Update link</asp:TableCell>
                <asp:TableCell runat="server" Font-Bold="True" ForeColor="Black" 
                    Width="100px">Delete link</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Label ID="lblmassage" runat="server" Font-Bold="True" Font-Size="Larger" 
            ForeColor="Black" Text="Label"></asp:Label>
        <br />
    <asp:Table ID="Table1" runat="server" ForeColor="Black" Width="16px">
    </asp:Table>
        
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        
                <asp:Label ID="lbltotal" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="Black"></asp:Label>
    </div>
</asp:Content>

