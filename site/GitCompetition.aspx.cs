using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GitCompetition : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["CompetitionFileName"] = "Git.txt";
        Session["CompetitionName"] = "Git";
        Server.Transfer("CompetitionStart.aspx");
    }
}