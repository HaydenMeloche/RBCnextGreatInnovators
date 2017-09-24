<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tutorials.aspx.cs" Inherits="Tutorials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Welcome <span class="user-field"><%= Session["username"] %></span>!</h1>
    
    <h2>Tutorials</h2>

    <h3>Source Control</h3>
    <ul>
        <li><a href="gitTutorial1.aspx">Git</a></li>
    </ul>

    <h3>Programming Languages</h3>
    <ul>
        <li><a href="Javascript.aspx">JavaScript</a></li>
        <li><a href="Python.aspx">Python</a></li>
    </ul>
</asp:Content>

