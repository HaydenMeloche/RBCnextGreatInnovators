using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public class CompetitionQuestion
{
    public string Question;
    public string Compiler;
    public string StartingText;
    public string Hint;
    public string ExpectedOutput;
}

public partial class Competition : System.Web.UI.Page
{
    private string competitionType;
    private string pathToWorkingFolder = @"C:\Users\Jordan\Documents\RBCnextGreatInnovators\site\";

    private List<CompetitionQuestion> ParseCompetitionTextFile(string filepathToParse)
    {
        var absolutePath = pathToWorkingFolder + filepathToParse;
        string fileText = File.ReadAllText(absolutePath);
        string[] questions = fileText.Split(new string[] { "&&&&\r\n" }, StringSplitOptions.None);

        List<CompetitionQuestion> allQuestions = new List<CompetitionQuestion>();

        foreach (var question in questions)
        {
            var LinesInQuestion = question.Split(new string[] { "*\r\n" }, StringSplitOptions.None);

            for (int i = 0; i < LinesInQuestion.Count(); i++)
            {
                LinesInQuestion[i] = LinesInQuestion[i].Trim('\n').Trim('\r');
            }

            var CurQuestion = new CompetitionQuestion()
            {
                Question = LinesInQuestion[1],
                Compiler = LinesInQuestion[2],
                StartingText = LinesInQuestion[3],
                Hint = LinesInQuestion[4],
                ExpectedOutput = LinesInQuestion[5]
            };

            allQuestions.Add(CurQuestion);
        }

        return null;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        List<CompetitionQuestion> allQuestions = ParseCompetitionTextFile(@"Competition_Text_Files/Example.txt");
    }

    protected void SubmitQuestion_Click(object sender, EventArgs e)
    {

    }
}