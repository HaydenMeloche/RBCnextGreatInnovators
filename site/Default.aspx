<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Welcome</h2>
    <div class="site-box">
        <p>
            The Co-op Crash Course, sponsored by RBC, provides resources to help you, the co-op student,
            become prepared to take on excellent co-op opportunities at RBC.
        </p>
    </div>
    <a href="Login.aspx">
        <span>Login</span>
    </a>
</asp:Content>

