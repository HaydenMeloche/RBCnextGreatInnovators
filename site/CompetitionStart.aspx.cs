using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CompetitionStart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["CompetitionQuestionNum"] = 0;
        Session["QuestionInProgress"] = false;
        Server.Transfer("Competition.aspx", false);
    }
}