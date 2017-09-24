<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IssuesTut3.aspx.cs" Inherits="IssuesTut3" %>
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
    <h2>Project Tracking - Misc benifits<h2>
    <hr />
    <h4>Misc benifits</h4>
    <asp:Panel ID="Panel1" runat="server">3This provides a clean way of developers, and test teams creating ‘Change Requests’.<br />
As developers create and testers test the software they can log any change they think may be beneficial. <br />
<br />
Managers can then asses these later and either accept for the current version, add as a good idea for a later version or decline them.<br />
Git can be linked up nicely with all these items to make clear what work is being done. <br />
Right now on the item and when an item is completed where the work was done.<br />

</asp:Panel>
    <asp:Image ID="Image1" runat="server" ImageUrl="https://3.bp.blogspot.com/-JOstLszmx1Y/VqnTd7vfUjI/AAAAAAAArJ0/r24DWMC_pUo/s1600/git-staging-diagram.png" Height="250" />
    <!-- use button tag for on page actions -->
    <br />
    <br />
    <asp:Button ID="Button1" class="button button-rounded-hover" OnClick="Button1_Click" runat="server" Width="50" Height="10" Text="Next" />
</asp:Content>
