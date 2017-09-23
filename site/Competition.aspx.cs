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
    private List<CompetitionQuestion> allQuestions;
    private int curQuestion = 0;
    bool writeOverUserInput = false;

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

        return allQuestions;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        allQuestions = ParseCompetitionTextFile(@"Competition_Text_Files/Example.txt");
        

        try
        {
            writeOverUserInput = !((bool)Session["QuestionInProgress"]);
        }
        catch
        {
            writeOverUserInput = true;
        }
        

        try
        {
            curQuestion = (int)Session["CompetitionQuestionNum"];
            if (curQuestion >= allQuestions.Count())
            {
                curQuestion = 0;
                Session["CompetitionQuestionNum"] = 0;
            }
        }
        catch
        {
            curQuestion = 0;
            Session["QuestionInProgress"] = true;
        }

        LoadCurQuestion();

        if (writeOverUserInput)
        {
            writeOverUserInput = false;
            Session["QuestionInProgress"] = true;
        }

    }

    private void LoadCurQuestion()
    {
        Question.Text = allQuestions[curQuestion].Question;
        Hint.Text = allQuestions[curQuestion].Hint;
        if (writeOverUserInput) UserInput.Text = allQuestions[curQuestion].StartingText;
        Output.Text = "Not Run";
    }

    protected void SubmitQuestion_Click(object sender, EventArgs e)
    {
        if (UserInput.Text == allQuestions[curQuestion].ExpectedOutput)
        {
            curQuestion++;
            if (curQuestion >= allQuestions.Count())
            {
                finishQuiz();
            }
            else
            {
                Session["CompetitionQuestionNum"] = curQuestion;
                Session["QuestionInProgress"] = true;
                writeOverUserInput = true;
                LoadCurQuestion();
            }
            
        }
        else//user was wrong
        {
            Output.Text = "Incorrect anwser";
        }
    }

    private void finishQuiz()
    {
        Console.WriteLine("Quiz Finished");
        Session["CompetitionQuestionNum"] = 0;
        Server.Transfer("CompetitionEnd.aspx", false);

    }
}