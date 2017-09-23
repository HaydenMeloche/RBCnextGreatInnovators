using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class sqlHelper
    {
        public void UpdateScore(int score, string username, Program.Competition competition)
        {
            if (readColumn(competition, username) < score)
            {
                SQLiteConnection m_dbConnection;
                m_dbConnection = new SQLiteConnection("Data Source=database.db;Version=3;");
                m_dbConnection.Open();
                string columnName = getColumn(competition);

                //sql statement
                string sql = $"update Users set {columnName} = {score} where Username = '{username}'; ";

                SQLiteCommand command = new SQLiteCommand(sql, m_dbConnection);

                SQLiteDataReader reader = command.ExecuteReader();
                m_dbConnection.Close();
            }
            
        }


        public int readColumn(Program.Competition competition, string username)
        {
            SQLiteConnection m_dbConnection;
            m_dbConnection = new SQLiteConnection("Data Source=database.db;Version=3;");
            m_dbConnection.Open();
            string columnName = getColumn(competition);

            //sql statement
            string sql = $"select {columnName} from Users where Username = '{username}';";

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

        private string getColumn(Program.Competition competition)
        {
            string columnName = null; 
            switch (competition)
            {
                case Program.Competition.gitComp:
                    columnName = "GitComp";
                    break;
                case Program.Competition.quickCode:
                    columnName = "QuickCodeComp";
                    break;
                case Program.Competition.algorithm:
                    columnName = "AlgoComp";
                    break;
                case Program.Competition.totalScore:
                    columnName = "TotalScore";
                    break;
                case Program.Competition.gitProgress:
                    columnName = "GitProgress";
                    break;
                case Program.Competition.issuesProgress:
                    columnName = "IssuesProgress";
                    break;
                default:
                    break;
            }
            return columnName;
        }
    }
}
