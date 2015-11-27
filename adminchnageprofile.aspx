<%@ Page Language="C#" MasterPageFile="~/thired.master" AutoEventWireup="true" CodeFile="adminchnageprofile.aspx.cs" Inherits="adminchnageprofile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


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
        .style22
        {
            width: 632px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 391px" class="backgroundmidle scrollbar">
        <br />
        <br />
        <br />
&nbsp;<table align="left">
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
                        ValidationGroup="admin change profile"></asp:RequiredFieldValidator>
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
                        ValidationGroup="admin change profile"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                        ControlToCompare="txtold_password" ControlToValidate="txtre_enter_old_password" 
                        ErrorMessage="Enter the same password" ValidationGroup="admin change profile"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="left" class="style19">
                    &nbsp;</td>
                <td align="left" class="style21">
                    <asp:Label ID="lblnew_user_id" runat="server" Font-Bold="True" 
                        ForeColor="#993300" Text="New User ID :"></asp:Label>
                </td>
                <td align="left" class="style20">
                    <asp:TextBox ID="txtnew_user_id" runat="server" Width="250px"></asp:TextBox>
                </td>
                <td align="left" class="style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtnew_user_id" ErrorMessage="*" 
                        ValidationGroup="admin change profile"></asp:RequiredFieldValidator>
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
                        ValidationGroup="admin change profile"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="txtnew_password" ErrorMessage="Minimum 6 character" 
                        ValidationExpression="\w{6,50}" ValidationGroup="admin change profile"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="left" class="style19">
                    &nbsp;</td>
                <td align="left" class="style21">
                    <asp:Label ID="lblre_enter_new_password" runat="server" Font-Bold="True" 
                        ForeColor="#993300" Text="Re-Enter New Password :"></asp:Label>
                </td>
                <td align="left" class="style20">
                    <asp:TextBox ID="txtre_enter_new_password" runat="server" TextMode="Password" 
                        Width="250px"></asp:TextBox>
                </td>
                <td align="left" class="style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtre_enter_new_password" ErrorMessage="*" 
                        ValidationGroup="admin change profile"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" 
                        ControlToCompare="txtnew_password" ControlToValidate="txtre_enter_new_password" 
                        ErrorMessage="Enter the same password" ValidationGroup="admin change profile"></asp:CompareValidator>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <table align="left" style="width: 929px">
            <tr>
                <td class="style12">
                    &nbsp;</td>
                <td class="style22" align="center">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lbtsubmit" runat="server" CssClass="linkbutton" 
                        ForeColor="White" onclick="lbtsubmit_Click" 
                        ValidationGroup="admin change profile">Submit</asp:LinkButton>
                </td>
                <td class="style13" align="center">
                    <asp:LinkButton ID="lbtback" runat="server" CssClass="linkbutton" 
                        ForeColor="White" PostBackUrl="~/adminhome.aspx" 
                        >Back</asp:LinkButton>
                </td>
            </tr>
        </table>
      
    </div>
</asp:Content>

