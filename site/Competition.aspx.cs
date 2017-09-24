using ConsoleApp1;
using System;
using System.Collections.Generic;
using System.Data.SQLite;
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



namespace ConsoleApp1
{
   

    public static class Compiler
    {
        private static string pathToWorkingFolder = @"C:\Users\Jordan\Documents\RBCnextGreatInnovators\site\";

        public static string Compile(string code, bool isJavscript, out double CompileTime)
        {
            string fileName = (isJavscript) ? "script.js" : "script.py";
            fileName = pathToWorkingFolder + fileName;
            ///Create script file
            try
            {
                // Check if file already exists. If yes, delete it. 
                if (File.Exists(fileName))
                {
                    File.Delete(fileName);
                }

                

                // Create a new file 
                
                using (StreamWriter sw = File.CreateText(fileName))
                {
                    if (isJavscript)
                    {
                        //sw.WriteLine("console.time('time');");
                        sw.WriteLine(code);
                        //sw.WriteLine("console.timeEnd('time');");
                    }
                    else
                    {
                        //sw.WriteLine("import time");
                        //sw.WriteLine("t0 = time.time()");
                        sw.WriteLine(code);
                        //sw.WriteLine("t1 = time.time()");
                        //sw.WriteLine("print(t1-t0)");
                    }

                }

                var debugTest = File.ReadAllText(fileName);


                //// Write file contents on console. 
                //using (StreamReader sr = File.OpenText(fileName))
                //{
                //    string s = "";
                //    while ((s = sr.ReadLine()) != null)
                //    {
                //        Console.WriteLine(s);
                //    }
                //}
            }
            catch (Exception Ex)
            {
                Console.WriteLine(Ex.ToString());
            }

            //Run script
            System.Diagnostics.Process proc = new System.Diagnostics.Process();
            string cmd = fileName;
            if (isJavscript)
            {
                proc.StartInfo.FileName = @"C:\Program Files\nodejs\node.exe";
            }
            else
            {
                proc.StartInfo.FileName = @"C:\Python34\python.exe";
            }

            proc.StartInfo.Arguments = cmd;
            proc.StartInfo.UseShellExecute = false;
            proc.StartInfo.RedirectStandardOutput = true;
            proc.Start();

            var allOutput = proc.StandardOutput.ReadToEnd();

            try
            {
                CompileTime = 0;
                return allOutput;
            }
            catch
            {
                CompileTime = 1000000;
                return allOutput;
            }
        }
    }
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
        //allQuestions = ParseCompetitionTextFile(@"Competition_Text_Files/Example.txt");
        allQuestions = ParseCompetitionTextFile(@"Competition_Text_Files/" + (string)Session["CompetitionFileName"]);


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
        var userAnwser = UserInput.Text;
        double compileTime;

        switch (allQuestions[curQuestion].Compiler.Trim(' ').ToLower())
        {
            case "java":
                userAnwser = Compiler.Compile(userAnwser, true, out compileTime);
                break;

            case "python":
                userAnwser = Compiler.Compile(userAnwser, false, out compileTime);
                break;

        }

        if (userAnwser.Trim('\n').Trim('\r').ToLower() == allQuestions[curQuestion].ExpectedOutput.ToLower())
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
                Checked.Visible = true;
                Wrong.Visible = false;
            }
            
        }
        else//user was wrong
        {
            Output.Text = "Incorrect anwser";
            Checked.Visible = false;
            Wrong.Visible = true;
        }
    }

    private void finishQuiz()
    {
        Console.WriteLine("Quiz Finished");
        Session["CompetitionQuestionNum"] = 0;
        Server.Transfer("CompetitionEnd.aspx", false);

    }
}