<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="javascriptTut1.aspx.cs" Inherits="javascriptTut1" %>

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
    pre code {
      background-color: #eee;
      border: 2px solid #999;
      display: block;
      padding: 20px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="modern_margin">
        <h2>Learn Javascript - Style</h2>
        <hr />
 
        <asp:Panel ID="Panel1" runat="server"><h4>Style of execution:</h4>
    Both languages are interpretted at run time and behave almost the same
            <br />
     <h4>Difference in scope</h4> 
    Python: The Scope is restricted between elements of the same spacing
    ex. </asp:Panel>

        <pre>
      <code>
        JavaScript: The scope in JavaScript is restricted between '{' and '}'.
        ex.
        if(conditional){
	        //this is in the scope of the if statement
        }
        //this is not in the scope of the if statement
      </code>
    </pre>
        <!-- use button tag for on page actions -->
        <asp:Button ID="Button1" class="button button-rounded-hover" OnClick="Button1_Click" runat="server" Style="display:none;" />
        <a href="#" onclick="document.getElementById('<%= Button1.ClientID %>').click()" class="box-link">
            <div class="link-box">
                <b>Next</b>
            </div>
        </a>
    </div>
</asp:Content>