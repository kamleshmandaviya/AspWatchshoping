<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteorder.aspx.cs" Inherits="deleteorder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register assembly="EO.Web" namespace="EO.Web" tagprefix="eo" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link rel="stylesheet" href="back.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" class="deleteorder">
    <div style="height: 763px">
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <eo:MsgBox ID="MsgBox1" runat="server" AllowResize="True" 
            CloseButtonUrl="00020440" ControlSkinID="None" HeaderHtml="Dialog Title" 
            HeaderHtmlFormat="&lt;div style=&quot;padding-top:4px&quot;&gt;{0}&lt;/div&gt;" 
            HeaderImageHeight="27" HeaderImageUrl="00020441" Height="64px" MinHeight="100" 
            MinWidth="150" Width="320px" BackShadeColor="White" BackShadeOpacity="50" 
            onbuttonclick="MsgBox1_ButtonClick1">
            <HeaderStyleActive CssText="background-image:url(00020442);color:#444444;font-family:'trebuchet ms';font-size:10pt;font-weight:bold;padding-bottom:7px;padding-left:8px;padding-right:0px;padding-top:0px;" />
            <BorderImages BottomBorder="00020409,00020429" 
                BottomLeftCorner="00020408,00020428" BottomRightCorner="00020410,00020430" 
                LeftBorder="00020406,00020426" RightBorder="00020407,00020427" 
                TopBorder="00020402,00020422" TopLeftCorner="00020401,00020421" 
                TopLeftCornerBottom="00020404,00020424" TopRightCorner="00020403,00020423" 
                TopRightCornerBottom="00020405,00020425" />
            <FooterStyleActive CssText="background-color:#f0f0f0; padding-right: 4px; padding-left: 4px; font-size: 8pt; padding-bottom: 4px; padding-top: 4px; font-family: tahoma" />
            <ContentStyleActive CssText="background-color:#f0f0f0;font-family:tahoma;font-size:8pt;padding-bottom:4px;padding-left:4px;padding-right:4px;padding-top:4px" />
            <CloseEffect Type="GlideTopToBottom" />
        </eo:MsgBox>
    </div>
    </form>
</body>
</html>
