using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    private const string NOTIFIER_LABEL_CSS = "notifier-label";
    private const string ERROR_CSS = "error";

    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void SubmitButton_Click(object sender, EventArgs e) {
        string userName = txtUsername.Text;
        string passWord = txtPassword.Text;
        Authenticator auth = Authenticator.Instance;

        if (auth.authenticateUser(userName, passWord)) {
            //Assign username to session
            Session["username"] = userName;
            //Get type of user and assign that to session
            if (userName == "bob") {
                Session["usertype"] = "student";
            } else if (userName == "larry") {
                Session["usertype"] = "manager";
            }
            //Redirect to the landing page after they log in
            Response.Redirect("~/Default.aspx");
        } else {
            //Notify user that authentication failed...
            lblNotifier.Text = "Invalid username/password combo";
            lblNotifier.CssClass = NOTIFIER_LABEL_CSS + " " + ERROR_CSS;
        }
    }
}