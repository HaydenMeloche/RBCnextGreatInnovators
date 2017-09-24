<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CompetitionList.aspx.cs" Inherits="CompetitionList" %>

<%@ Register Src="~/TopMenu.ascx" TagPrefix="uc1" TagName="TopMenu" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:TopMenu runat="server" ID="TopMenu" />

    <h1 class="welcome-heading">Competitions</h1>
    
    <h3 class="sub-heading">Source Control</h3>
    <div class="navi-box">
        <a href="GitCompetition.aspx">
            <div class="skill">
                <img src="site/images/logos/Git.png" width="64" height="64" /><br />
                <span>Git</span>
            </div>
        </a>
    </div>

    <h3 class="sub-heading">Programming Languages</h3>
    <div class="navi-box">
        <a href="JavaScriptCompetition.aspx">
            <div class="skill">
                <img src="site/images/logos/js.png" width="64" height="64" /><br />
                <span>JavaScript</span>
            </div>
        </a>
        <a href="PythonCompetition.aspx">
            <div class="skill">
                <img src="site/images/logos/Python.png" width="64" height="64" /><br />
                <span>Python</span>
            </div>
        </a>
    </div>
</asp:Content>

