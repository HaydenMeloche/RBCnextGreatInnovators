<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Competition.aspx.cs" Inherits="Competition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="site/css/navigation.css" rel="stylesheet" />

    <nav class="hover-underline-menu" data-menu-underline-from-center="">
      <ul class="menu align-center">
        <li><a href="Tutorials.aspx">Tutorials</a></li>
        <li><a href="Competition.aspx">Competition</a></li>
        <li><a href="<%= (Session["usertype"].Equals("manager") ? "LeaderBoardManager.aspx" : "LeaderBoardUser.aspx") %>">Leaderboard</a></li>
        <li><a href="Logout.aspx">Logout</a></li>
      </ul>
    </nav>

    <h1 class="welcome-heading">Competitions</h1>
    
    <h3 class="sub-heading">Source Control</h3>
    <div class="navi-box">
        <a href="gitComp.aspx">
            <div class="skill">
                <img src="site/images/logos/Git.png" width="64" height="64" /><br />
                <span>Git</span>
            </div>
        </a>
    </div>

    <h3 class="sub-heading">Programming Languages</h3>
    <div class="navi-box">
        <a href="jsComp.aspx">
            <div class="skill">
                <img src="site/images/logos/js.png" width="64" height="64" /><br />
                <span>JavaScript</span>
            </div>
        </a>
        <a href="pythonComp.aspx">
            <div class="skill">
                <img src="site/images/logos/Python.png" width="64" height="64" /><br />
                <span>Python</span>
            </div>
        </a>
    </div>
</asp:Content>

