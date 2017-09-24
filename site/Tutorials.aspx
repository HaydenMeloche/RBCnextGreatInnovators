<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Tutorials.aspx.cs" Inherits="Tutorials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="foundation-icons/foundation-icons.css" rel="stylesheet" />
    <link href="site/css/navigation.css" rel="stylesheet" />

    <div class="top-menu">
        <a href="Tutorials.aspx">
            <div class="menu-item">
                <i class="fi-book icon-style"></i>
                Tutorials
            </div>
        </a>
        <a href="CompetitionList.aspx">
            <div class="menu-item">
                <i class="fi-pencil icon-style"></i>
                Competition
            </div>
        </a>
        <a href="<%= (Session["usertype"] != null && Session["usertype"].Equals("manager") ? "LeaderBoardManager.aspx" : "LeaderBoardUser.aspx") %>">
            <div class="menu-item">
                <i class="fi-trophy icon-style"></i>
                Leaderboard
            </div>
        </a>
        <a href="Logout.aspx">
            <div class="menu-item">
                <i class="fi-x-circle icon-style"></i>
                Logout
            </div>
        </a>
    </div>

    <h1 class="welcome-heading">Tutorials</h1>

    <h3 class="sub-heading">Workplace Culture</h3>
    <div class="navi-box">
        <a href="funfacts.aspx">
            <div class="skill">
                <asp:Image ID="Image1" Width="64" Height="84" ImageURL="http://www.clker.com/cliparts/8/H/1/R/W/w/business-man-2-hi.png" runat="server" /><br />
                <span>RBC</span>
            </div>
        </a>
    </div>


    <h3 class="sub-heading">Source Control</h3>
    <div class="navi-box">
        <a href="gitTutorial1.aspx">
            <div class="skill">
                <img src="site/images/logos/Git.png" width="64" height="64" /><br />
                <span>Git</span>
            </div>
        </a>
    </div>

    <h3 class="sub-heading">Programming Languages</h3>
    <div class="navi-box">
        <a href="javascriptTut1.aspx">
            <div class="skill">
                <img src="site/images/logos/js.png" width="64" height="64" /><br />
                <span>JavaScript</span>
            </div>
        </a>
        <a>
            <div class="skill">
                <img src="site/images/logos/Python - Grey.png" width="64" height="64" /><br />
                <span>Python</span>
            </div>
        </a>
    </div>
</asp:Content>

