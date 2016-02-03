using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using BUS;
public partial class how_it_works : System.Web.UI.Page
{
    CardBUS cardBUS = new CardBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
            LoadCategory();
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

    /// <summary>
    /// //////////Load all category
    /// </summary> 
    protected void LoadCategory()
    {
        CategoryGridView.DataSource = cardBUS.GetCategoryList();
        string []key={"CatID"};
        CategoryGridView.DataKeyNames = key;
        CategoryGridView.DataBind();
    }
    /// <summary>
    /// //////////Insert new category
    /// </summary> 
    public string GetFileName(string Image)
    {
        try
        {
            string duongdan = Server.MapPath("..\\images\\CardImages\\");
            string tenfile = Image;
            if (System.IO.Path.GetFileName(tenfile).ToString() != "")
            {
                while (System.IO.File.Exists(duongdan + tenfile) == true)
                    tenfile = tenfile.Split('.')[0] + "1" + "." + tenfile.ToString().Split('.')[1];
            }
            return tenfile;
        }
        catch
        {
            return string.Empty;
        }
    }
    protected void AddCatButton_Click(object sender, EventArgs e)
    {
        string catname = CatNameTextBox.Text;       
        string description = CatDescriptionTextBox.Text;
        string imagefile = "";  
        //Save Image to DATABASE    
        bool hasimage = true;
        if (CatImageFileUp.PostedFile != null && CatImageFileUp.PostedFile.FileName != "")
            imagefile = "~/images/CardImages/" + GetFileName(CatImageFileUp.PostedFile.FileName);
        else
        {
            imagefile = "~/images/CardImages/no_images.jpg";
            hasimage = false;
        }
        bool addres = cardBUS.AddCategory(catname,imagefile,description);
        if (addres == true)//If save to DATABASE success
        {
            //Save Image to DIRECTORY
            if(hasimage==true)
                CatImageFileUp.SaveAs(Server.MapPath("..\\images\\CardImages\\") + System.IO.Path.GetFileName(imagefile));
            //Reload
            LoadCategory();          
        }              
        
    }
    protected void AddCatButton1_Click(object sender, EventArgs e)
    {
        string catname = CatNameTextBox0.Text;
        string description = CatDescriptionTextBox0.Text;
        string imagefile = "";
        //Save Image to DATABASE    
        bool hasimage = true;
        if (CatImageFileUp0.PostedFile != null && CatImageFileUp0.PostedFile.FileName != "")
            imagefile = "~/images/CardImages/" + GetFileName(CatImageFileUp0.PostedFile.FileName);
        else
        {
            imagefile = "~/images/CardImages/no_images.jpg";
            hasimage = false;
        }
        bool addres = cardBUS.AddCategory(catname, imagefile, description);
        if (addres == true)//If save to DATABASE success
        {
            //Save Image to DIRECTORY
            if (hasimage == true)
                CatImageFileUp0.SaveAs(Server.MapPath("..\\images\\CardImages\\") + System.IO.Path.GetFileName(imagefile));
            //Reload
            LoadCategory();
        }   
    }

    /// <summary>
    /// ///////////////Paging category
    /// </summary>
    protected void CategoryGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        CategoryGridView.PageIndex = e.NewPageIndex;
        LoadCategory();
    }
    /// <summary>
    /// ///////////////Update category
    /// </summary>
    protected void CategoryGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        CategoryGridView.EditIndex = e.NewEditIndex;
        LoadCategory();
    }
    protected void CategoryGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string catid = CategoryGridView.DataKeys[e.RowIndex].Values[0].ToString();
        TextBox catname = (TextBox)CategoryGridView.Rows[e.RowIndex].FindControl("CatNameTextBox");
        TextBox description = (TextBox)CategoryGridView.Rows[e.RowIndex].FindControl("CatDesTextBox");
        AjaxControlToolkit.AsyncFileUpload image = (AjaxControlToolkit.AsyncFileUpload)CategoryGridView.Rows[e.RowIndex].FindControl("CatImage");
        //Save Image
        bool hasimage = true;
        string imagefile = "";
        if (image.PostedFile != null && image.PostedFile.FileName != "")
            imagefile = "~/images/CardImages/" + image.PostedFile.FileName;
        else
        {
            imagefile = "";
            hasimage = false;
        }
        //Execute query
        bool Upres = cardBUS.EditCategory(catid, catname.Text,imagefile,description.Text);
        if (Upres == true)
        {
            //UPDATE IMAGE TO DIRECTORY
            //Save Image to DIRECTORY
            if (hasimage == true)
            {
                if (System.IO.File.Exists(imagefile))//if exist
                    System.IO.File.Delete(imagefile);//delete it
                image.SaveAs(Server.MapPath("..\\images\\CardImages\\") + System.IO.Path.GetFileName(imagefile));
            }            
            CategoryGridView.EditIndex = -1;
            LoadCategory();
        }
        else
        {
            string myStringVariable = "Cannot Edit Category! Please try again";
            System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert(" + myStringVariable + ")</SCRIPT>");
        }
    }
    protected void CategoryGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        CategoryGridView.EditIndex = -1;
        LoadCategory();
    }
    /// <summary>
    /// ////////////////////
    /// </summary>
    protected void CategoryGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {      

        string catid = CategoryGridView.DataKeys[e.RowIndex].Values[0].ToString();
        //get image path
        Image image = (Image)CategoryGridView.Rows[e.RowIndex].FindControl("CatImage");
        bool Delres = cardBUS.RemoveCategory(catid);
        if (Delres == true)
        {
            if (System.IO.File.Exists(image.ImageUrl))//if exist
                System.IO.File.Delete(image.ImageUrl);
            LoadCategory();
        }
    }

   
}