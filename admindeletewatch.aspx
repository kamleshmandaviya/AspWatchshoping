<%@ Page Language="C#" MasterPageFile="~/thired.master" AutoEventWireup="true" CodeFile="admindeletewatch.aspx.cs" Inherits="admindeletewatch" Title="Untitled Page" %>

<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 705px" class="backgroundmidle scrollbar">
        <br />
        <eo:MsgBox ID="MsgBox1" runat="server" AllowResize="True" 
            BackShadeColor="White" BackShadeOpacity="50" CloseButtonUrl="00020440" 
            ControlSkinID="None" HeaderHtml="Dialog Title" 
            HeaderHtmlFormat="&lt;div style=&quot;padding-top:4px&quot;&gt;{0}&lt;/div&gt;" 
            HeaderImageHeight="27" HeaderImageUrl="00020441" Height="64px" MinHeight="100" 
            MinWidth="150" onbuttonclick="MsgBox1_ButtonClick1" Width="320px">
            <headerstyleactive 
            csstext="background-image:url(00020442);color:#444444;font-family:'trebuchet ms';font-size:10pt;font-weight:bold;padding-bottom:7px;padding-left:8px;padding-right:0px;padding-top:0px;" />
            <borderimages bottomborder="00020409,00020429" 
            bottomleftcorner="00020408,00020428" bottomrightcorner="00020410,00020430" 
            leftborder="00020406,00020426" rightborder="00020407,00020427" 
            topborder="00020402,00020422" topleftcorner="00020401,00020421" 
            topleftcornerbottom="00020404,00020424" toprightcorner="00020403,00020423" 
            toprightcornerbottom="00020405,00020425" />
            <footerstyleactive 
            csstext="background-color:#f0f0f0; padding-right: 4px; padding-left: 4px; font-size: 8pt; padding-bottom: 4px; padding-top: 4px; font-family: tahoma" />
            <contentstyleactive 
            csstext="background-color:#f0f0f0;font-family:tahoma;font-size:8pt;padding-bottom:4px;padding-left:4px;padding-right:4px;padding-top:4px" />
            <closeeffect type="GlideTopToBottom" />
        </eo:MsgBox>
    
    </div>
</asp:Content>

