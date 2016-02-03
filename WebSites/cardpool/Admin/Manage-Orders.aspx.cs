using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class how_it_works : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            HelloLabel.Text = "Hi! " + Session["Login"].ToString();
        }
    }
    protected void LogoutLink_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");   
    }
    protected void HelloLabel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
}