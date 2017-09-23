<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Competition.aspx.cs" Inherits="Competition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LinkButton id="SubmitQuestion" 
           Text="Click Me" 
           Font-Names="Verdana" 
           Font-Size="14pt" 
           OnClick="SubmitQuestion_Click"
           runat="server"/>
</asp:Content>

