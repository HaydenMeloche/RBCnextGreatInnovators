using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CompetitionEnd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Stopwatch stopWatch = (Stopwatch)Session["CompTimer"];
            stopWatch.Stop();
            // Get the elapsed time as a TimeSpan value.
            TimeSpan ts = stopWatch.Elapsed;

            //TestOutput.Text = ts.TotalSeconds.ToString();

            double score = ((360-ts.TotalSeconds)/360 * 100);
            int scoreReduced = (int)score;

            if (scoreReduced < 5) scoreReduced = 5;

            //code here to post to leaderboard
        }
        catch
        {
            //code here to post to leaderboard
        }
    }
}