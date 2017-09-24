<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="javascriptTut5.aspx.cs" Inherits="javascriptTut5" %>

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
    <h2>Learn Javascript - Loops</h2>
    <hr />
    <h3>While Loops</h3>
    <h4>Python</h4>
    While loops in Python are declared like so:
    ex.
    <pre>
        <code>
            while (condition):
	            #repeated stuff goes here
        </code>
    </pre>
    <h4>JavaScript</h4>
    In JavaScript the condition is setup almost the same except the braces '{' and '}' denote where the code should loop
    ex.
    <pre>
        <code>
            while(condition){
	            #repeated stuff goes here
            }
        </code>
    </pre>
    <h3>Do While Loops</h3>
    <h4>Python</h4>
    These types of loops do not exist in python but can be easily mimicked by a simple while and break statement at the end.
    ex.
    <pre>
        <code>
            while(1):
	            if(!condition):
		            break;
        </code>
    </pre>
 
    <h4>JavaScript</h4>
    ex.
    <pre>
        <code>
            do{

                }while(condition);
        </code>
    </pre>

    <h3>For Loops</h3>
    <h4>Python</h4>
    Python loops will take an array and iterate through that array:
    ex.
    <pre>
        <code>
            for string in stringArray:
	            #execute operations on single string here
        </code>
    </pre>
    <h4>JavaScript</h4>
    Unlike Python, Javascript loops using a counting system.
    ex.
    <pre>
        <code>
            for(starting variable; conditional; increment){
	            string = array[variable];
            }
        </code>
    </pre>

    <!-- use button tag for on page actions -->
    <asp:Button ID="Button1" class="button button-rounded-hover" OnClick="Button1_Click" runat="server" Width="50" Height="10" Text="Next" />
</asp:Content>