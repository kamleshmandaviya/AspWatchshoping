<%@ Page Language="C#" MasterPageFile="~/thired.master" AutoEventWireup="true" CodeFile="adminaddvideo.aspx.cs" Inherits="adminaddvideo1" Title="Untitled Page" %>
<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style3
        {
            width: 199px;
            height: 30px;
        }
        .style4
        {
            width: 267px;
            height: 30px;
        }
        .style5
        {
            height: 30px;
        }
        .style2
        {
            width: 267px;
        }
        .style6
        {
            height: 133px;
        }

input{
	font-size:12px;
	font-family:Georgia, "Times New Roman", Times, serif;
	}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 670px" class="backgroundmidle scrollbar">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" Height="55px" 
            ImageUrl="~/tital/add video.jpg" Width="333px" />
        <br />
        <br />
        <br />
        <table style="width: 981px; height: 210px">
            <tr>
                <td class="style3">
                </td>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black" Text="Addvertise Id"></asp:Label>
                </td>
                <td class="style5">
                    <asp:Label ID="lbl_addid" runat="server" Font-Bold="True" Font-Size="Large" 
                        ForeColor="Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1" rowspan="2">
                    &nbsp;</td>
                <td class="style2">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                            ForeColor="Black" Text="Addvertise video"></asp:Label>
                </td>
                <td class="style6">
                    <eo:AJAXUploader ID="AJAXUploader1" runat="server" AllowedExtension=".flv" 
                        FinalFileLocation="~/watchvideo" MaxFileCount="1" TempFileLocation="~/temp" 
                        Width="420px" AutoPostBack="True" 
                        onfileuploaded="AJAXUploader1_FileUploaded">
                    </eo:AJAXUploader>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_submit" runat="server" 
                        Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_back" runat="server"  
                        Text="Back" onclick="btn_back_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
</asp:Content>

