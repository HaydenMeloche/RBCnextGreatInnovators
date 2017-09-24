<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <link href="site/css/login.css" rel="stylesheet" />
        <h2 class="login-header">Login</h2>
        <asp:Label ID="lblNotifier" runat="server" CssClass="notifier-label"></asp:Label><br />
        <label for="<%= txtUsername.ClientID %>">Username:</label><br />
        <div class="input-box">
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        </div>
        <label for="<%= txtPassword.ClientID %>">Password:</label><br />
        <div class="input-box password-wrapper">
            <asp:TextBox ID="txtPassword" runat="server" cssClass="password" type="password" Visible="True"></asp:TextBox>
            <button class="unmask" type="button" title="Mask/Unmask Password">Unmask</button>
        </div>
        <asp:Button runat="server" ID="submit" OnClick="SubmitButton_Click" Style="display:none;" />
        <a href="#" onclick="document.getElementById('<%= submit.ClientID %>').click()" class="box-link submit-button">
            <div class="link-box">
                <b>Submit</b>
            </div>
        </a>
        <script src="site/js/login-form.js"></script>
</asp:Content>
