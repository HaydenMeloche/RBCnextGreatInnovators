<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gitTutorial2.aspx.cs" Inherits="gitTutorials_gitTutorial1" %>

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
    <div class="modern_margin">
        <h2>Git Tutorial - Branches</h2>
        <hr />
        <h4>Commits</h4>
        <asp:Panel ID="Panel1" runat="server">A branch at its simplest level is a series of commits</asp:Panel>
        <asp:Image ID="Image1" runat="server" Height="250" ImageUrl="~/images/Git Branch off example.png" />
        <!-- use button tag for on page actions -->
        <br />
        <asp:Panel ID="Panel2" runat="server">A branch is normally associated with a product
    So this raises the question how does a team of developers work on a branch while not getting in each other’s way? <br />
            The answer is simple, everyone creates their own branch for working on a feature and then when that feature is complete their branch is merged back into the main branch.
    </asp:Panel>
        <br />
        <asp:Image ID="Image2" runat="server" Height="150" ImageUrl="https://www.visualstudio.com/en-us/docs/integrate/api/git/_img/ahead-behind.png" />
        <br />
        <asp:Button ID="Button1" class="button button-rounded-hover" OnClick="Button4_Click" runat="server" Style="display:none;" />
        <a href="#" onclick="document.getElementById('<%= Button1.ClientID %>').click()" class="box-link">
            <div class="link-box">
                <b>Next</b>
            </div>
        </a>
    </div>
</asp:Content>

