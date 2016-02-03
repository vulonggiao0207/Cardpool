using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BO;
using BUS;
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
    AdminBUS adBUS = new AdminBUS();
    protected void SaveButton_Click(object sender, EventArgs e)
    {
        WrongPassLabel.Text = "";
        string id = Session["Login"].ToString();
        string password = PasswordTextBox.Text;
        string newpassword = NewPasswordTextBox.Text;
        bool res = adBUS.AdminChangePassword(id, password, newpassword);
        if (res == true)
            WrongPassLabel.Text = "Congratulation! Change password successful";
        else
            WrongPassLabel.Text = "Wrong current password! Please try again";
        
    }
    protected void HelloLabel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePassword.aspx");
    }
    protected void LogoutLink_Click(object sender, EventArgs e)
    {

        Session.Abandon();
        Response.Redirect("Login.aspx");   
    }
}