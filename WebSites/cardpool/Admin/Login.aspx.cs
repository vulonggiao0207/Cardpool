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
     
    }
    AdminBUS adBUS = new AdminBUS();
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        bool res=adBUS.AdminLogin(IdTextBox.Text, PasswordTextBox.Text);
        if (res ==false)
        {
            Session["Login"] = IdTextBox.Text;
            bool issuper = false;
            issuper = adBUS.IsSupper(IdTextBox.Text);
            if(issuper==true)
                Session["Super"] = "OK";
            Response.Redirect("Index.aspx");
            WrongPassLabel.Visible = false;
        }
        else
        {
            WrongPassLabel.Visible = true;
        }
    }
}