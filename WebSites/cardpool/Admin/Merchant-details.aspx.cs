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
    CardBUS cardBUS = new CardBUS();
    public void LoadCategoryList()
    {
        CategoryDropDownList.DataSource = cardBUS.GetCategoryList();
        CategoryDropDownList.DataValueField = "CatID";
        CategoryDropDownList.DataTextField = "CatName";
        CategoryDropDownList.DataBind();

    }
    public void LoadMerchantList(int categoryid)
    {
        MerchantDropDownList.DataSource = cardBUS.GetCardList(categoryid);
        MerchantDropDownList.DataValueField = "CardID";
        MerchantDropDownList.DataTextField = "CardName";
        MerchantDropDownList.DataBind();

   
    }
    public void LoadMerchantDetails(string carid)
    {
        MerchantDetailsGridView.DataSource = cardBUS.GetOnlyMerchantList(carid);
        MerchantDetailsGridView.DataBind();
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
            //Load MerchantList
            int catid = Convert.ToInt32(CategoryDropDownList.SelectedValue);
            LoadMerchantList(catid);
            //Load Merchant Detail
            string cardid = MerchantDropDownList.SelectedValue;
            LoadMerchantDetails(cardid);
            //Load to Merchant Panel
            CardBO card = new CardBO();
            card = cardBUS.GetOneCard(cardid);
            MerchantImage.ImageUrl = card.Image;
            MechantDescriptionTextBox.Text = card.Description;
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
         int catid = Convert.ToInt32(CategoryDropDownList.SelectedValue);
         LoadMerchantList(catid);
         if (MerchantDropDownList.Items.Count > 0)
         {
             MerchantDropDownList.SelectedIndex = 0;
             string cardid = MerchantDropDownList.SelectedValue;
             LoadMerchantDetails(cardid);
             CardBO card = new CardBO();
             card = cardBUS.GetOneCard(cardid);
             MerchantImage.ImageUrl = card.Image;
             MechantDescriptionTextBox.Text = card.Description;
         }
    }
    protected void MerchantDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        string cardid = MerchantDropDownList.SelectedValue;
        LoadMerchantDetails(cardid);
        //Load to Merchant Panel
        CardBO card= new CardBO();
        card= cardBUS.GetOneCard(cardid);
        MerchantImage.ImageUrl = card.Image;
        MechantDescriptionTextBox.Text = card.Description;   
    }
    //Insert new merchant details
   
    protected void AddMerChantDetailButton_Click(object sender, EventArgs e)
    {
        string CardID = MerchantDropDownList.SelectedValue;
        decimal Value = 0;
        if (ValueTextBox.Text!="") Value = Convert.ToDecimal(ValueTextBox.Text);        
        decimal Pay = 0;
        if (PayTextBox.Text != "") Pay = Convert.ToDecimal(PayTextBox.Text);
        decimal Save = 0;
        if (SaveTextBox.Text != "") Save = Convert.ToDecimal(SaveTextBox.Text);
        string Notes = NotesTextBox.Text;
      
        bool inres = cardBUS.AddMerchant(CardID, Value, Pay, Save, Notes);
        if (inres == true)
        {
            ValueTextBox.Text = ValueTextBox0.Text = "";
            PayTextBox.Text = PayTextBox0.Text = "";
            SaveTextBox.Text = SaveTextBox0.Text = "";
            NotesTextBox.Text = NotesTextBox0.Text = "";
            string cardid = MerchantDropDownList.SelectedValue;
            LoadMerchantDetails(cardid);
        }        
    }
    protected void AddMerChantDetailButton1_Click(object sender, EventArgs e)
    {
        string CardID = MerchantDropDownList.SelectedValue;
        decimal Value = 0;
        if (ValueTextBox0.Text != "") Value = Convert.ToDecimal(ValueTextBox0.Text);
        decimal Pay = 0;
        if (PayTextBox0.Text != "") Pay = Convert.ToDecimal(PayTextBox0.Text);
        decimal Save = 0;
        if (SaveTextBox0.Text != "") Save = Convert.ToDecimal(SaveTextBox0.Text);
        string Notes = NotesTextBox0.Text;
        
        bool inres = cardBUS.AddMerchant(CardID, Value, Pay, Save, Notes);
        if (inres == true)
        {
            ValueTextBox.Text = ValueTextBox0.Text = "";
            PayTextBox.Text = PayTextBox0.Text = "";
            SaveTextBox.Text = SaveTextBox0.Text = "";
            NotesTextBox.Text = NotesTextBox0.Text = "";
            string cardid = MerchantDropDownList.SelectedValue;
            LoadMerchantDetails(cardid);
        }
    }
    //DELETE
    protected void MerchantDetailsGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string merchantid = MerchantDetailsGridView.DataKeys[e.RowIndex].Values[0].ToString();
        bool delres=cardBUS.RemoveMerchant(merchantid);
        if (delres == true)
        {
            string cardid = MerchantDropDownList.SelectedValue;
            LoadMerchantDetails(cardid);
        }
    }
    //UPDATE
    protected void MerchantDetailsGridView_RowEditing(object sender, GridViewEditEventArgs e)
    {
        MerchantDetailsGridView.EditIndex = e.NewEditIndex;
        string cardid = MerchantDropDownList.SelectedValue;
        LoadMerchantDetails(cardid);
    }
    protected void MerchantDetailsGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        MerchantDetailsGridView.EditIndex = -1;
        string cardid = MerchantDropDownList.SelectedValue;
        LoadMerchantDetails(cardid);
    }
    protected void MerchantDetailsGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string merchantid = MerchantDetailsGridView.DataKeys[e.RowIndex].Values[0].ToString();
        TextBox _value =(TextBox)(MerchantDetailsGridView.Rows[e.RowIndex].Cells[2].Controls[0]);
        decimal value = 0;
        if(_value.Text!="")value= Convert.ToDecimal(_value.Text);
        TextBox _pay = (TextBox)(MerchantDetailsGridView.Rows[e.RowIndex].Cells[3].Controls[0]);
        decimal pay = 0;
        if(_pay.Text!="") pay=Convert.ToDecimal(_pay.Text);
        TextBox _save = (TextBox)(MerchantDetailsGridView.Rows[e.RowIndex].Cells[4].Controls[0]);
        decimal save = 0;
        if(_save.Text!="") save=Convert.ToDecimal(_save.Text);
        TextBox _notes = (TextBox)MerchantDetailsGridView.Rows[e.RowIndex].Cells[5].Controls[0];
        string notes = _notes.Text;
        bool upres = cardBUS.EditMerchant(merchantid, value, pay, save, notes);
        if (upres == true)
        {
            MerchantDetailsGridView.EditIndex = -1;
            string cardid = MerchantDropDownList.SelectedValue;
            LoadMerchantDetails(cardid);
        }
    }
    //PAGING
    protected void MerchantDetailsGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        MerchantDetailsGridView.PageIndex = e.NewPageIndex;
        string cardid = MerchantDropDownList.SelectedValue;
        LoadMerchantDetails(cardid);
    }
}