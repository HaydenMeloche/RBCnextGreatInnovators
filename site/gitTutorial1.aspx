<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gitTutorial1.aspx.cs" Inherits="gitTutorials_gitTutorial1" %>

<%@ Register Src="~/TopMenu.ascx" TagPrefix="uc1" TagName="TopMenu" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
            .button-rounded-hover {
      border: 0;
      border-radius: 5000px;
      padding: 1rem 2rem;
      text-transform: uppercase;
      position: relative;
      overflow: hidden;
      font-size: 1rem;
      letter-spacing: 2px;
      transition: all 0.35s ease;
      -webkit-transform: translateZ(0);
              transform: translateZ(0);
    }

    .button-rounded-hover:before {
      opacity: 0;
      content: "";
      position: absolute;
      top: 0px;
      bottom: 0px;
      left: 0px;
      right: 0px;
      border-radius: inherit;
      background-color: #fefefe !important;
      transition: all 0.3s;
      -webkit-transform: translateX(-100%);
          -ms-transform: translateX(-100%);
              transform: translateX(-100%);
    }

    .button-rounded-hover:after {
      position: absolute;
      top: 0px;
      bottom: 0px;
      left: 0px;
      right: 0px;
      //border: 5px solid #115b8d;
      content: '';
      border-radius: inherit;
    }

    .button-rounded-hover:hover,
    .button-rounded-hover:focus {
      background-color: #115b8d;
    }

    .button-rounded-hover:hover:before,
    .button-rounded-hover:focus:before {
      -webkit-transform: translateX(0%);
          -ms-transform: translateX(0%);
              transform: translateX(0%);
      opacity: 0.25;
    }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:TopMenu runat="server" ID="TopMenu" />
    <div class="modern_margin">
        <h2>Git Tutorial - Commits</h2>
        <hr />
        <h4>Commits</h4>
        <asp:Panel ID="Panel1" runat="server">Git at its highest level is just a way of keeping track of changes to code. <br />
    Every change consisting of one or more files is called a commit.</asp:Panel>
        <asp:Image ID="Image1" runat="server" ImageUrl="https://3.bp.blogspot.com/-JOstLszmx1Y/VqnTd7vfUjI/AAAAAAAArJ0/r24DWMC_pUo/s1600/git-staging-diagram.png" Height="250" />
        <!-- use button tag for on page actions -->
        <br />
        <br />
        <asp:Button ID="Button1" class="button button-rounded-hover" OnClick="Button1_Click" runat="server" Style="display:none;" />
        <a href="#" onclick="document.getElementById('<%= Button1.ClientID %>').click()" class="box-link">
            <div class="link-box">
                <b>Next</b>
            </div>
        </a>
    </div>
</asp:Content>

