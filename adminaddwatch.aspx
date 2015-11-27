<%@ Page Language="C#" MasterPageFile="~/thired.master" AutoEventWireup="true" CodeFile="adminaddwatch.aspx.cs" Inherits="adminaddwatch1" Title="Untitled Page" %>
<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            width: 670px;
        }
        .style3
        {
            width: 804px;
        }

input{
	font-size:12px;
	font-family:Georgia, "Times New Roman", Times, serif;
	}

    select{
	font-size:12px;
	font-family:Georgia, "Times New Roman", Times, serif;
	}

    textarea{
	font-size:12px;
	font-family:Georgia, "Times New Roman", Times, serif;
	}

    .style4
    {
        width: 670px;
        height: 13px;
    }
    .style5
    {
        width: 804px;
        height: 13px;
    }
    .style6
    {
        width: 1042px;
        height: 13px;
    }
    .style7
    {
        width: 670px;
        height: 9px;
    }
    .style8
    {
        width: 804px;
        height: 9px;
    }
    .style9
    {
        width: 1042px;
        height: 9px;
    }
    .style10
    {
        width: 670px;
        height: 23px;
    }
    .style11
    {
        width: 804px;
        height: 23px;
    }
    .style12
    {
        width: 1042px;
        height: 23px;
    }
    .style13
    {
        width: 670px;
        height: 29px;
    }
    .style14
    {
        width: 804px;
        height: 29px;
    }
    .style15
    {
        width: 1042px;
        height: 29px;
    }
    .style16
    {
        width: 670px;
        height: 2px;
    }
    .style17
    {
        width: 804px;
        height: 2px;
    }
    .style18
    {
        width: 1042px;
        height: 2px;
    }
    .style21
    {
        width: 1042px;
    }
    .style22
    {
        width: 670px;
        height: 41px;
    }
    .style23
    {
        width: 804px;
        height: 41px;
    }
    .style24
    {
        width: 1042px;
        height: 41px;
    }
    .style25
    {
        width: 273px;
        height: 13px;
    }
    .style26
    {
        width: 273px;
        height: 9px;
    }
    .style27
    {
        width: 273px;
        height: 23px;
    }
    .style28
    {
        width: 273px;
        height: 29px;
    }
    .style29
    {
        width: 273px;
        height: 2px;
    }
    .style30
    {
        width: 273px;
    }
    .style31
    {
        width: 273px;
        height: 41px;
    }
    .style32
    {
        width: 273px;
        height: 115px;
    }
</style>
</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 689px" class="backgroundmidle scrollbar">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="55px" 
            ImageUrl="~/tital/add watch.jpg.bmp" Width="335px" />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="height: 43px">
            <tr>
                <td class="style4">
                    </td>
                <td class="style5">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Watch Id"></asp:Label>
                </td>
                <td class="style25">
                    <asp:Label ID="lbl_watchid" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black"></asp:Label>
                </td>
                <td class="style6">
                    </td>
            </tr>
            <tr>
                <td class="style7">
                    </td>
                <td class="style8">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Model Id"></asp:Label>
                </td>
                <td class="style26">
                    <asp:TextBox ID="txt_modelid" runat="server" Width="172px"></asp:TextBox>
                </td>
                <td class="style9">
                    </td>
            </tr>
            <tr>
                <td class="style10">
                    </td>
                <td class="style11">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Category"></asp:Label>
                </td>
                <td class="style27">
                    <asp:DropDownList ID="txt_category" runat="server" Width="175px">
                        <asp:ListItem>man</asp:ListItem>
                        <asp:ListItem>woman</asp:ListItem>
                        <asp:ListItem>child</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style12">
                    </td>
            </tr>
            <tr>
                <td class="style13">
                    </td>
                <td class="style14">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Company Name"></asp:Label>
                </td>
                <td class="style28">
                    <asp:DropDownList ID="txt_company" runat="server" Width="175px">
                        <asp:ListItem>rado</asp:ListItem>
                        <asp:ListItem>sonata</asp:ListItem>
                        <asp:ListItem>titan</asp:ListItem>
                        <asp:ListItem>swatch</asp:ListItem>
                        <asp:ListItem>omega</asp:ListItem>
                        <asp:ListItem>rolex</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style15">
                    </td>
            </tr>
            <tr>
                <td class="style16">
                    </td>
                <td class="style17">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Price"></asp:Label>
                </td>
                <td class="style29">
                    <asp:TextBox ID="txt_price" runat="server" Width="172px"></asp:TextBox>
                </td>
                <td class="style18">
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    </td>
                <td class="style3">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Color"></asp:Label>
                </td>
                <td class="style30">
                    <asp:DropDownList ID="ddl_color" runat="server" Width="175px">
                        <asp:ListItem>black</asp:ListItem>
                        <asp:ListItem>blue</asp:ListItem>
                        <asp:ListItem>darkblue</asp:ListItem>
                        <asp:ListItem>green</asp:ListItem>
                        <asp:ListItem>kathai</asp:ListItem>
                        <asp:ListItem>marun</asp:ListItem>
                        <asp:ListItem>morpich</asp:ListItem>
                        <asp:ListItem>pink</asp:ListItem>
                        <asp:ListItem>red</asp:ListItem>
                        <asp:ListItem>yello</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style21">
                    </td>
            </tr>
            <tr>
                <td class="style22">
                    </td>
                <td class="style23">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Black" Text="Description"></asp:Label>
                    </td>
                <td class="style31">
                        <asp:TextBox ID="txt_description" runat="server" Height="116px" Width="321px" 
                            TextMode="MultiLine"></asp:TextBox>
                    </td>
                <td class="style24">
                    </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Black" Text="Watch Image"></asp:Label>
                    </td>
                <td class="style32">
                    <eo:AJAXUploader ID="AJAXUploader1" runat="server" AllowedExtension=".jpg" 
                        FinalFileLocation="~/watchadd" MaxFileCount="1" TempFileLocation="~/temp" 
                        Width="420px">
                    </eo:AJAXUploader>
                </td>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style32">
                    <asp:Button ID="btn_submit" runat="server" onclick="btn_submit_Click" 
                        Text="Submit" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_back" runat="server" onclick="btn_back_Click" Text="Back" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_clear" runat="server" onclick="btn_clear_Click" 
                        Text="Clear" />
                </td>
                <td class="style1">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
</asp:Content>

