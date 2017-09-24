<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gitTutorial3.aspx.cs" Inherits="gitTutorials_gitTutorial1" %>

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
        <asp:Panel ID="Panel1" runat="server">But how does merging between branches work?
    Well git has a very smart algorithm for processing changes and can figure out a great deal. But if changes conflict with another then a manual resolution has to be done. There are many IDEs which help with resolving ‘merge conflicts’ easier. <br />
            Once the all the conflicts have been resolved, the branch now be merged back.
    If added security wants to be put in place, it can be made that at least one person has to approve a merge before it happens. This is a good practice because it is an additional step of stopping bugs and also keeps another team member up to date with that code
    </asp:Panel>
        <asp:Image ID="Image1" runat="server" ImageUrl="https://i.stack.imgur.com/2aJV1.png" Height="250" />
        <!-- use button tag for on page actions -->
        <br />
        <br />
        <asp:Button ID="Button1" class="button button-rounded-hover" OnClick="Button3_Click" runat="server" Style="display:none;" />
        <a href="#" onclick="document.getElementById('<%= Button1.ClientID %>').click()" class="box-link">
            <div class="link-box">
                <b>Next</b>
            </div>
        </a>
    </div>
</asp:Content>

