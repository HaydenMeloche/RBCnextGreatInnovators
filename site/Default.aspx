<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="site/css/intro.css" rel="stylesheet" />
    <% if (Session["username"] == null) { %>
    <h2 class="welcome-heading">Co-op Recruitment at RBC</h2>
    <div class="site-box hero">

    </div>
    <div class="site-box introduction">
        <h2>About</h2>
        <p>
            The RBC Co-op Crash Course provides resources to help you, the co-op student,
            become prepared to take on excellent co-op opportunities at RBC.
        </p>
    </div>
    <div class="site-box skills">
        <h2>Learn</h2>
        <p>
            Learn important skills used to solve intriguing technical problems every day at RBC.
        </p>
        <div class="skills-box">
            <div class="skill">
                <img src="site/images/logos/Git-Black.png" /><br />
                <span>Git</span>
            </div>
            <div class="skill">
                <img src="site/images/logos/js-gray.png" /><br />
                <span>JavaScript</span>
            </div>
            <div class="skill">
                <img src="site/images/logos/Python-Black.png" /><br />
                <span>Python</span>
            </div>
        </div>
    </div>
    <div class="site-box compete">
        <h2>Compete</h2>
        <p>Got a competitive fire burning in you? Take on the challenge questions, and compete with others
            (and yourself) in the leaderboards to further reinforce your learning.</p>
    </div>
    <div class="site-box onboard">
        <h2>Onboard</h2>
        <p>Onboard effectively before you even start your first day of work with our extensive documentation regarding working at RBC.</p>
    </div>
    <div class="site-box call-to-action">
        <h2 style="text-align: center;">What are you waiting for?</h2>
        <div class="action-box">
            <a href="Login.aspx" class="box-link">
                <div class="link-box">
                    <b>Login</b>
                </div>
            </a>
            <a href="Login.aspx" class="box-link">
                <div class="link-box">
                    <b>Sign up</b>
                </div>
            </a>
        </div>
    </div>
    <div class="site-box villain">
        
    </div>
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

