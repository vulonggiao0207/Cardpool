using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using BO;
public partial class how_it_works : System.Web.UI.Page
{
    AdminBUS adBUS = new AdminBUS();
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
        if (Session["Super"] == null)
        {
            ErrorTextBox.Visible = true;
            MainPanel.Visible = false;
        }
        else
        {
            ErrorTextBox.Visible = false;
            MainPanel.Visible = true;
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
    protected void AddnewuserButton_Click(object sender, EventArgs e)
    {
        string adid = IDTextBox.Text;
        string adpass = PasswordTextBox.Text;
        bool Insres = adBUS.AddUser(adid, adpass) ;
        if (Insres == true)
        {           
            ErrorTextBox.Text = "You have no right to manage user";
            ErrorTextBox.Visible = false;
            AdminGridview.DataSourceID = "AdminSource";
            AdminGridview.DataBind();
        }
        else
        {            
            ErrorTextBox.Text = "User ID is exist";
            ErrorTextBox.Visible = true;
        }

    }
    protected void AdminGridview_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = AdminGridview.DataKeys[e.RowIndex].Value.ToString();
        bool Delres = adBUS.RemoveUser(id);
        if (Delres == true)
        {
            AdminGridview.DataSourceID = "AdminSource";
            AdminGridview.DataBind();
        }
    }
}