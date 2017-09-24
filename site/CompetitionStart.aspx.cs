using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CompetitionStart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Stopwatch compTimer = new Stopwatch();
        compTimer.Start();

        Session["CompetitionQuestionNum"] = 0;
        Session["QuestionInProgress"] = false;
        Session["CompTimer"] = compTimer;
        Server.Transfer("Competition.aspx", false);
    }
}