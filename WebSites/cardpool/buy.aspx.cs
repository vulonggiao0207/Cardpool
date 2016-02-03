using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using BO;
public partial class buy_gift_cards : System.Web.UI.Page
{
    CardBUS cardBUS = new CardBUS();
    public void LoadImage(ImageButton imagebutton, CardBO cardbo)
    {
        imagebutton.ImageUrl = cardbo.Image;
        imagebutton.PostBackUrl = "";
    }
    public void LoadCardInfo(string cardid)
    {
        CardBO cardBO = new CardBO();
        cardBO = cardBUS.GetOneCard(cardid);
        CardImage.ImageUrl = cardBO.Image;
        CardnameLabel.Text = cardBO.CardName;
        CardDesciptionTxt.Text = cardBO.Description;
        DiscountCardName.Text = cardBO.CardName;        
    }
    public void LoadMerchant(string cardid)
    {
        MerchantGridView.DataSource = cardBUS.GetMerchantList(cardid);
        MerchantGridView.DataBind();
    }
    public void LoadRelatedMerchant(string cardid)
    {
        GiftcardListView.DataSource = cardBUS.GetRelatedGiftCard(cardid);
        GiftcardListView.DataBind();
    }
    public void LoadShoppingCart(List<string> MerIDList)
    {
        ShoppingCartGridView.DataSource = cardBUS.GetMerchantList(MerIDList);
        ShoppingCartGridView.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string cardid = string.Empty;
        if (Request.QueryString["cardid"] == null)
            Response.Redirect("buy-gift-cards.aspx");
        else
            cardid = Request.QueryString["cardid"].ToString();
        //Category list
        CategoryListView.DataSource = cardBUS.GetCategoryList();
        CategoryListView.DataBind();
        //Merchant list
        MerchantListView.DataSource = cardBUS.GetCardList(-1);
        MerchantListView.DataBind();
        //LoadCardInfo
        LoadCardInfo(cardid);
        //Load Merchants
        LoadMerchant(cardid);
        //Load Related Gift Card
        LoadRelatedMerchant(cardid);
        //Load Shopping cart count
        CartLink.Text = "Shopping Cart (" + (((List<string>)(Session["Cart"])).Count-1).ToString() + ")";
        //Load Shopping Cart
        List<string> cart = new List<string>();
        cart=(List<string>)Session["Cart"];
        LoadShoppingCart(cart);
    }
    protected void MerchantGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "AddToCart")
        {
            Label meridTxt = (Label)MerchantGridView.Rows[Convert.ToInt32(e.CommandArgument)].FindControl("MerchantIDLabel");
            string merid = meridTxt.Text;
            List<string> cart = new List<string>();
            cart = (List<string>)Session["Cart"];
            cart.Add(merid);
            Session["Cart"] = cart;
            //reload MerchantGridView
            string cardid = string.Empty;
            if (Request.QueryString["cardid"] == null)
                Response.Redirect("buy-gift-cards.aspx");
            else
                cardid = Request.QueryString["cardid"].ToString();
            //reload MerchantGridView
            LoadMerchant(cardid);
            //reload CartGridView
            LoadShoppingCart(cart);
            CartLink.Text = "Shopping Cart (" + (((List<string>)(Session["Cart"])).Count - 1).ToString() + ")";
            ModalPopupExtender2.Show(); 

        }
    }
    protected void MerchantGridView_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (Session["Cart"] != null)
        {
            //Get Shopping card for checking
            List<string> cart = new List<string>();
            cart = (List<string>)Session["Cart"];
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

                //Get the control MerchantIDLabel
                Label meridTxt = (Label)e.Row.FindControl("MerchantIDLabel");
                //binding data           
                meridTxt.Text = (String)DataBinder.Eval(e.Row.DataItem, "Details[0].MerchantID");
                //Get merchantID
                string merid = meridTxt.Text;
                //Check.....
                for (int i = 0; i < cart.Count; i++)
                {
                    if (merid == cart[i])//if merchantID exist in Card
                    {
                        e.Row.Enabled = false;//disable this row
                        e.Row.BackColor= System.Drawing.Color.LightGray;                   
                    }
                }
            }
        }
    }
    protected void ShoppingCartGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "RemoveFromCart")
        {
            //get Cart(MerchantIDList) from Session
            List<string> cart = new List<string>();
            cart = (List<string>)Session["Cart"];  
            //remove
            Label meridTxt = (Label)ShoppingCartGridView.Rows[Convert.ToInt32(e.CommandArgument)].FindControl("MerchantIDLabel");
            string merid = meridTxt.Text;
            cart.Remove(merid);          
            Session["Cart"] = cart;
            //reload MerchantGridView
            string cardid = string.Empty;
            if (Request.QueryString["cardid"] == null)
                Response.Redirect("buy-gift-cards.aspx");
            else
                cardid = Request.QueryString["cardid"].ToString();
            //reload MerchantGridView
            LoadMerchant(cardid);
            //reload CartGridView
            LoadShoppingCart(cart);
            ModalPopupExtender2.Show();
            CartLink.Text = "Shopping Cart (" + (((List<string>)(Session["Cart"])).Count - 1).ToString() + ")";
        }
    }

    protected void CartLink_Click(object sender, EventArgs e)
    {
        ModalPopupExtender2.Show(); 
    }
}