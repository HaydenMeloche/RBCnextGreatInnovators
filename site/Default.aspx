<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="site/css/intro.css" rel="stylesheet" />
    <% if (Session["username"] == null) { %>
    <h2 class="welcome-heading">Welcome</h2>
    <div class="site-box">
        <p>
            The Co-op Crash Course, sponsored by RBC, provides resources to help you, the co-op student,
            become prepared to take on excellent co-op opportunities at RBC.
        </p>
    </div>
    <a href="Login.aspx" class="box-link">
        <div class="link-box">
            <b>Login</b>
        </div>
    </a>
    <% } else { %>
    <h1>Welcome <span class="user-field"><%= Session["username"] %></span>!</h1>
    <nav class="hover-underline-menu" data-menu-underline-from-center="">
      <ul class="menu align-center">
        <li><a href="Tutorials.aspx">Tutorials</a></li>
        <li><a href="Competition.aspx">Competition</a></li>
        <li><a href="<%= (Session["usertype"].Equals("manager") ? "LeaderBoardManager.aspx" : "LeaderBoardUser.aspx") %>">Leaderboard</a></li>
        <li><a href="Logout.aspx">Logout</a></li>
      </ul>
    </nav>
    <% } %>
</asp:Content>

