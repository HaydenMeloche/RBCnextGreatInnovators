<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Competition.aspx.cs" Inherits="Competition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="modern_margin">

    <asp:Image ID="Checked" runat="server" ImageUrl="~/site/images/checkmark-512.png" Width="60" Height ="60" Visible="false"/>

    <asp:Image ID="Wrong" runat="server" ImageUrl="~/site/images/X.png" Width="60" Height ="60" Visible="false"/>
        

    <asp:TextBox ID="Question"
        TextMode="MultiLine" Rows="5"
        ReadOnly="true"
        Font-Names="Verdana" 
           Font-Size="14pt"
           Width="1200"
           runat="server"/>

    <br />

    <asp:TextBox ID="Hint"
        ReadOnly="true"
        Font-Names="Verdana" 
           Font-Size="14pt"
        Width="1200"
           runat="server"/>

    <br />

    <asp:TextBox ID="UserInput"
        TextMode="MultiLine" Rows="10"
        Font-Names="Verdana" 
           Font-Size="14pt" 
           runat="server"
        Width="1200"/>

    <br />

    <asp:LinkButton id="SubmitQuestion" 
           Text="Submit Question" 
           Font-Names="Verdana" 
           Font-Size="14pt" 
        Width="1200"
           OnClick="SubmitQuestion_Click"
           runat="server"/>

    <br />

    <asp:TextBox ID="Output"
        ReadOnly="true"
        Font-Names="Verdana" 
           Font-Size="14pt" 
        Width="1200"
           runat="server"/>
    <link href="site/css/navigation.css" rel="stylesheet" />

    </div>
</asp:Content>

