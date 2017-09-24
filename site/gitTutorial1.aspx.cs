using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gitTutorials_gitTutorial1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //string username = Session["username"].ToString();
        string username = "bobTheBoy";
        UpdateScore(1,username,Competition.gitProgress);
        Response.Redirect("~/gitTutorial2.aspx");
    }
    public enum Competition { gitComp, quickCode, algorithm, totalScore, gitProgress, issuesProgress };

    public void UpdateScore(int score, string username, Competition competition)
    {
        if (readColumn(competition, username) < score)
        {
            SQLiteConnection m_dbConnection;
            m_dbConnection = new SQLiteConnection(@"Data Source=C:\Users\Jordan\Documents\RBCnextGreatInnovators\site\database.db;Version=3;");
            m_dbConnection.Open();
            string columnName = getColumn(competition);

            //sql statement
            string sql = "update Users set " + columnName + " = " + score + " where Username = '" + username + "'; ";

            SQLiteCommand command = new SQLiteCommand(sql, m_dbConnection);

            SQLiteDataReader reader = command.ExecuteReader();
            m_dbConnection.Close();
        }

    }


    public int readColumn(Competition competition, string username)
    {
        SQLiteConnection m_dbConnection;
        m_dbConnection = new SQLiteConnection(@"Data Source=C:\Users\Jordan\Documents\RBCnextGreatInnovators\site\database.db;Version=3;");
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

    private string getColumn(Competition competition)
    {
        string columnName = null;
        switch (competition)
        {
            case Competition.gitComp:
                columnName = "GitComp";
                break;
            case Competition.quickCode:
                columnName = "QuickCodeComp";
                break;
            case Competition.algorithm:
                columnName = "AlgoComp";
                break;
            case Competition.totalScore:
                columnName = "TotalScore";
                break;
            case Competition.gitProgress:
                columnName = "GitProgress";
                break;
            case Competition.issuesProgress:
                columnName = "IssuesProgress";
                break;
            default:
                break;
        }
        return columnName;
    }
}