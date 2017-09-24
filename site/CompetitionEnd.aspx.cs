using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public enum CompetitionType { gitComp, Python, Javascript, totalScore, gitProgress, issuesProgress };

public static class FunctionAdder
{

    private static string pathToWorkingFolder = @"C:\Users\Jordan\Documents\RBCnextGreatInnovators\site\database.db;Version=3;";


    public static void UpdateScore(int score, string username, CompetitionType competition)
    {
        if (readColumn(competition, username) < score)
        {
            SQLiteConnection m_dbConnection;
            m_dbConnection = new SQLiteConnection(@"Data Source=" + pathToWorkingFolder);
            m_dbConnection.Open();
            string columnName = getColumn(competition);

            //sql statement
            string sql = "update Users set " + columnName + " = " + score + " where Username = '" + username + "'; ";

            SQLiteCommand command = new SQLiteCommand(sql, m_dbConnection);

            SQLiteDataReader reader = command.ExecuteReader();
            m_dbConnection.Close();
        }

    }


    public static int readColumn(CompetitionType competition, string username)
    {
        SQLiteConnection m_dbConnection;
        m_dbConnection = new SQLiteConnection(@"Data Source=" + pathToWorkingFolder);
        m_dbConnection.Open();
        string columnName = getColumn(competition);

        //sql statement
        string sql = "select " + columnName + " from Users where Username = '" + username + "';";

        SQLiteCommand command = new SQLiteCommand(sql, m_dbConnection);

        SQLiteDataReader reader = command.ExecuteReader();
        int output = 0;
        while (reader.Read())
        {
            output = (reader.GetInt32(0));
        }
        m_dbConnection.Close();
        return output;

    }

    private static string getColumn(CompetitionType competition)
    {
        string columnName = null;
        switch (competition)
        {
            case CompetitionType.gitComp:
                columnName = "GitComp";
                break;
            case CompetitionType.Python:
                columnName = "Python";
                break;
            case CompetitionType.Javascript:
                columnName = "JavaScript";
                break;
            case CompetitionType.totalScore:
                columnName = "TotalScore";
                break;
            case CompetitionType.gitProgress:
                columnName = "GitProgress";
                break;
            case CompetitionType.issuesProgress:
                columnName = "IssuesProgress";
                break;
            default:
                break;
        }
        return columnName;
    }
}

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

            CompetitionType currentComp;

            switch((String)Session["CompetitionName"])
            {
                default: 
                case ("Git"):
                    currentComp = CompetitionType.gitComp;
                    break;

                case ("Python"):
                    currentComp = CompetitionType.Python;
                    break;

                case ("JavaScript"):
                    currentComp = CompetitionType.Javascript;
                    break;
            }


            FunctionAdder.UpdateScore(scoreReduced, "bobTheBoy", currentComp);

            ScoreOutput.Text = "Congrats! You scored: " + scoreReduced;

            //code here to post to leaderboard
        }
        catch
        {
            ScoreOutput.Text = "Congrats! You scored: " + 50;
        }
    }
}