<%@ Page Language="C#" MasterPageFile="~/thired.master" AutoEventWireup="true" CodeFile="adminmodifywatch.aspx.cs" Inherits="adminmodifywatch1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


input, textarea, select{
	font-size:12px;
	font-family:Georgia, "Times New Roman", Times, serif;
	}

        .style2
        {
            vertical-align: top;
            border-collapse: collapse;
            border-left: 1px solid #CCCCCC;
            border-right: 1px solid #CCCCCC;
            padding: 5px;
        }
        .style3
        {
            vertical-align: top;
            border-collapse: collapse;
            width: 278px;
            border-left: 1px solid #CCCCCC;
            border-right: 1px solid #CCCCCC;
            padding: 5px;
        }
        .style4
        {
            width: 188px;
        }
        .style5
        {
            vertical-align: top;
            border-collapse: collapse;
            width: 456px;
            border-left: 1px solid #CCCCCC;
            border-right: 1px solid #CCCCCC;
            padding: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 944px" class="backgroundmidle scrollbar">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="55px" Width="316px" 
            ImageUrl="~/tital/admin modify watch.jpg" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="img_watch" runat="server" Height="350px" Width="400px" />
        
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="lbl_description" runat="server" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="Black" Text="Watch Description"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txt_description" runat="server" Height="61px" Width="233px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2" width="200">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Watch Id"></asp:Label>
                </td>
                <td class="style2" width="250">
                    <asp:Label ID="lbl_watchid" runat="server" ForeColor="Black"></asp:Label>
                </td>
                <td class="style4">
                    <asp:Label ID="lbl_id" runat="server" ForeColor="Red" Text="Label" 
                        Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Watch Category"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txt_category" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Model Id"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txt_modelid" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:Label ID="lbl_model" runat="server" ForeColor="Red" Text="Label" 
                        Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Watch Company"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txt_company" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:Label ID="lbl_company" runat="server" ForeColor="Red" Text="Label" 
                        Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Watch Price"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txt_price" runat="server"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:Label ID="lbl_price" runat="server" ForeColor="Red" Text="Label" 
                        Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style2" colspan="2" rowspan="2">
                    <asp:Button ID="cmd_update" runat="server" onclick="cmd_update_Click" 
                        Text="Update" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="cmd_cancel" runat="server" Text="Cancel" />
                    <asp:Button ID="cmd_back" runat="server" Text="Back" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    </td>
                <td class="style4">
                    </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>

