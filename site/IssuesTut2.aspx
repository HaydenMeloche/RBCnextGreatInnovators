<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IssuesTut2.aspx.cs" Inherits="IssuesTut2" %>
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
    <h2>Project Tracking - Questions Anwsered<h2>
    <hr />
    <h4>Questions Anwsered</h4>
    <asp:Panel ID="Panel1" runat="server">1.Bugs can be logged with all necessary details. This include how reproducible a bug is (once, always, etc), steps to reproduce it, what version of the software it was found in, and many more.<br />
2.	If the person who found the bug knows the developer who is familiar with the code then it can be assigned that way. 
        Alternatively if a person doesn’t know this information, the bug can be assigned to a manger/lead dev who will then reassign it to the correct person.<br />
3.	All items within the system whether they are tasks, bugs or anything else can be assigned expected time to completion as well as remaining time. 
        It is good practice for a developer to assign the expected time to the best of their ability
        when they are assigned the item and then keep the remaining time fairly up to date.
        This allows a manager to observe the total remaining time on bugs and tasks within a product.<br />
4.	Each developer can see all tasks assigned to them, and they can tell the priority by the field. <br />
</asp:Panel>
    <!-- use button tag for on page actions -->
    <br />
    <br />
    <asp:Button ID="Button1" class="button button-rounded-hover" OnClick="Button1_Click" runat="server" Style="display:none;" />
        <a href="#" onclick="document.getElementById('<%= Button1.ClientID %>').click()" class="box-link">
            <div class="link-box">
                <b>Next</b>
            </div>
        </a>
</asp:Content>