using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class how_it_works : System.Web.UI.Page
{
    CardBUS cardBUS = new CardBUS();
    /// <summary>
    /// ///////////FUNCTION
    /// </summary>
    public void LoadCategoryList()
    {
        CategoryDropDownList.DataSource = cardBUS.GetCategoryList();
        CategoryDropDownList.DataValueField = "CatID";
        CategoryDropDownList.DataTextField = "CatName";
        CategoryDropDownList.DataBind();

        AddCategoryDropDown.DataSource = cardBUS.GetCategoryList();
        AddCategoryDropDown.DataValueField = "CatID";
        AddCategoryDropDown.DataTextField = "CatName";
        AddCategoryDropDown.DataBind();
    }
    public void LoadCardList(int categoryid)
    {
        MerchantGridView.DataSource = cardBUS.GetCardList(categoryid);
        MerchantGridView.DataBind();
    }
  
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
        if (!IsPostBack)
        {
            //Load Category Dropdownlist
            LoadCategoryList();
            //Load CardList
            int catid =Convert.ToInt32(CategoryDropDownList.SelectedValue);
            LoadCardList(catid);         
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

   

    protected void CategoryDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        int catid =Convert.ToInt32(CategoryDropDownList.SelectedValue);
        LoadCardList(catid);
    }
    /// <summary>
    /// /////////Merchant gridview/////////////////
    /// </summary>
    /// Paging
    protected void MerchantGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        MerchantGridView.PageIndex= e.NewPageIndex;
        MerchantGridView.EditIndex = -1;
        int catid = Convert.ToInt32(CategoryDropDownList.SelectedValue);
        LoadCardList(catid);
    }
    protected void MerchantGridView_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DropDownList tempdr = (DropDownList)e.Row.FindControl("CatDropDownList");
            tempdr.DataSource = cardBUS.GetCategoryList();
            tempdr.DataValueField = "CatID";
            tempdr.DataTextField = "CatName";
            tempdr.DataBind();
            tempdr.SelectedValue = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "CatID"));
        }
    }
    //Update
    protected void MerchantGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        MerchantGridView.EditIndex = e.NewEditIndex;
        int catid = Convert.ToInt32(CategoryDropDownList.SelectedValue);
        LoadCardList(catid);
    }

    protected void MerchantGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        MerchantGridView.EditIndex = -1;
        int catid = Convert.ToInt32(CategoryDropDownList.SelectedValue);
        LoadCardList(catid);
    }
    protected void MerchantGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string cardid = MerchantGridView.DataKeys[e.RowIndex].Values[0].ToString();
        TextBox catname = (TextBox)MerchantGridView.Rows[e.RowIndex].FindControl("CardNameTextBox");
        DropDownList catid = (DropDownList)MerchantGridView.Rows[e.RowIndex].FindControl("CatDropDownList");
        TextBox description = (TextBox)MerchantGridView.Rows[e.RowIndex].FindControl("DescriptionTextBox");
        AjaxControlToolkit.AsyncFileUpload image = (AjaxControlToolkit.AsyncFileUpload)MerchantGridView.Rows[e.RowIndex].FindControl("CardImage");
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
        bool Upres = cardBUS.EditCard(cardid, catname.Text,Convert.ToInt32(catid.SelectedValue), description.Text, imagefile);
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
            MerchantGridView.EditIndex = -1;
            int _catid = Convert.ToInt32(CategoryDropDownList.SelectedValue);
            LoadCardList(_catid);
        }
        else
        {
            string myStringVariable = "Cannot Edit Category! Please try again";
            System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert(" + myStringVariable + ")</SCRIPT>");
        }
      
    }
    //Delete
    protected void MerchantGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string _catid = MerchantGridView.DataKeys[e.RowIndex].Values[0].ToString();
        //get image path
        Image image= (Image)MerchantGridView.Rows[e.RowIndex].FindControl("CardImage");
        bool Delres = cardBUS.RemoveCard(_catid);
        if (Delres == true)
        {
            if (System.IO.File.Exists(image.ImageUrl))//if exist
                System.IO.File.Delete(image.ImageUrl);
            int catid = Convert.ToInt32(CategoryDropDownList.SelectedValue);
            LoadCardList(catid);
        }
    }
    //Insert
    protected void AddMerchantButton_Click(object sender, EventArgs e)
    {
        
    }
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
    protected void OKButton_Click(object sender, EventArgs e)
    {
        string adid = Session["Login"].ToString();
        string cardname = AddNameTextBox.Text;
        int category =Convert.ToInt32(AddCategoryDropDown.SelectedValue);
        string description = AddDescriptionTextBox.Text;
        string imagefile = "";  
        //Save Image to DATABASE    
        bool hasimage = true;
        if (AddImageFileUpLoad.PostedFile != null && AddImageFileUpLoad.PostedFile.FileName != "")
            imagefile = "~/images/CardImages/" + GetFileName(AddImageFileUpLoad.PostedFile.FileName);
        else
        {
            imagefile = "~/images/CardImages/no_images.jpg";
            hasimage = false;
        }
        bool addres = cardBUS.AddCard(adid, cardname, category, description,  imagefile);
        if (addres == true)//If save to DATABASE success
        {
            //Save Image to DIRECTORY
            if(hasimage==true)
                AddImageFileUpLoad.SaveAs(Server.MapPath("..\\images\\CardImages\\") + System.IO.Path.GetFileName(imagefile));
            //Reload
            int catid = Convert.ToInt32(CategoryDropDownList.SelectedValue);
            LoadCardList(catid);
        }              
    }

    protected void CancelButton_Click(object sender, EventArgs e)
    {

    }
}