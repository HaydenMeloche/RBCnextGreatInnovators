<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FunFacts.aspx.cs" Inherits="Issues" %>

<%@ Register Src="~/TopMenu.ascx" TagPrefix="uc1" TagName="TopMenu" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <uc1:TopMenu runat="server" ID="TopMenu" />
    <div class="modern_margin">
    <h3>RBC Workspace Envronment:</h3>
<hr />
        <p>Important things to know</p>
<ul>
<li>Know your non disclosure agreement inside and out. Violations will result in potentialy being fired</li>
<li>Know how to interact with people who dont speak your language well or who dont pronounce your language well. Often times they will be smarter than you and you will feel dumb when they show it.</li>
<li>You will potentially be working on a windows environment. More tools and frameworks to be added by your manager.</li>
</ul>
        <asp:Image ID="Image1" runat="server" Height="400" ImageUrl="http://kmai.com/sites/default/files/styles/thoughts_700/public/images/thoughts/rbc_waterpark_interiors_21.jpg?itok=WObVICaP" ImageAlign="Right" />

<p>Dress code</p>
<ul>
<li>Depending on the job you were assigned you may dress differently. Typically you will usually dress in a nice t-shirt and jeans. However, some days might require a suit and tie. To sum it up, nice, but not fancy.</li>
</ul>
<p>Typical work day:</p>
<ul>
<li>Enter work with a mood not forced but tuned.</li>
<li>Work and hangout with your co-workers.&nbsp;</li>
<li>Dont be afraid to interact with your co-workers after hours. Maybe even go for drinks, a round of golf.... etc.</li>
<li>Also almost every announced event in RBC you can attend. Whether that be volunteer events, meetings.... etc.</li>
</ul>

<p>Benefits</p>
<ul>
<li>You get 4 vacation days for your time here. If you chose not to use all of them you get compensated appropriately.</li>
<li>Your hardware will be provided for you at work. You do not need to bring in anything but yourself.</li>
<li>Phone plans and phones will be subsidized for RBC employees.</li>
<li>Dont forget we have an HR depertmant.</li>
</ul>
    </div>
    <hr />

</asp:Content>

