using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Compiler
    {
        public string Compile(string code, bool isJavscript)
        {
            string fileName = (isJavscript) ? "script.js" : "script.py";
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
                        sw.WriteLine("console.time('time');");
                        sw.WriteLine(code);
                        sw.WriteLine("console.timeEnd('time');");
                    }
                    else
                    {
                        sw.WriteLine("import time");
                        sw.WriteLine("t0 = time.time()");
                        sw.WriteLine(code);
                        sw.WriteLine("t1 = time.time()");
                        sw.WriteLine("print(t1-t0)");
                    }

                }

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
            string cmd = "";
            if (isJavscript)
            {
                cmd = @"script.js";
                proc.StartInfo.FileName = @"C:\Program Files\nodejs\node.exe";
            }
            else
            {
                proc.StartInfo.FileName = @"C:\Python34\python.exe";
                cmd = @"script.py";
            }

            proc.StartInfo.Arguments = cmd;
            proc.StartInfo.UseShellExecute = false;
            proc.StartInfo.RedirectStandardOutput = true;
            proc.Start();

            return proc.StandardOutput.ReadToEnd();
        }
    }
}
