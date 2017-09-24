<%@ Control Language="C#" AutoEventWireup="true" CodeFile="TopMenu.ascx.cs" Inherits="TopMenu" %>

<link href="foundation-icons/foundation-icons.css" rel="stylesheet" />
<link href="site/css/navigation.css" rel="stylesheet" />

<div class="top-menu-wrapper">
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
</div>