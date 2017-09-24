﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="javascriptTut4.aspx.cs" Inherits="javascriptTut4" %>

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

    pre code {
        background-color: #eee;
        border: 1px solid #999;
        display: block;
        padding: 20px;
    }   

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:TopMenu runat="server" ID="TopMenu" />
    <div class="modern_margin">
        <h2>Learn Javascript - Functions</h2>
        <hr />
        <asp:Panel ID="Panel1" runat="server">
            <h4>Python</h4> Functions in Python are declared like so.
        ex.
                <pre>
                    <code>
                        def functionName(functionArg):
	                        return "hello " + functionArg
                    </code>
                </pre>
            <h4>JavaScript</h4>
         While functions in JavaScript are declared like this.
        ex.
            <pre>
                <code>
                    function (functionArg) {
                        return "hello " + functionArg ;
                    };
                </code>
            </pre>
        <h3>Main function</h3>
         <h4>Python</h4>   
            Includes the main to indicate which function to run first.
        ex. 
            <pre>
                <code>
                 def main():
	                #code goes here

                 if __name__ == '__main__':
	                    main()
                </code>
            </pre>
            <h4>JavaScript</h4>
            Javascript does not have a main function and runs starting from first level of scope.</asp:Panel>
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