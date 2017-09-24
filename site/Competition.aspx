<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Competition.aspx.cs" Inherits="Competition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:TextBox ID="Question"
        TextMode="MultiLine" Rows="10"
        ReadOnly="true"
        Font-Names="Verdana" 
           Font-Size="14pt"
           Width="500"
           runat="server"/>

    <br />

    <asp:TextBox ID="Hint"
        ReadOnly="true"
        Font-Names="Verdana" 
           Font-Size="14pt"
        Width="500"
           runat="server"/>

    <br />

    <asp:TextBox ID="UserInput"
        TextMode="MultiLine" Rows="10"
        Font-Names="Verdana" 
           Font-Size="14pt" 
           runat="server"
        Width="500"/>

    <br />

    <asp:LinkButton id="SubmitQuestion" 
           Text="Submit Question" 
           Font-Names="Verdana" 
           Font-Size="14pt" 
        Width="500"
           OnClick="SubmitQuestion_Click"
           runat="server"/>

    <br />

    <asp:TextBox ID="Output"
        ReadOnly="true"
        Font-Names="Verdana" 
           Font-Size="14pt" 
        Width="500"
           runat="server"/>
</asp:Content>

