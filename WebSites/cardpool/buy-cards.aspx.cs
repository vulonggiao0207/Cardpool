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
    public void LoadCategory(int catID)
    {
        CategoryBO catBO = new CategoryBO();
        catBO = cardBUS.GetOneCategory(catID);
        CatImage.ImageUrl = catBO.Image;
        CatnameLabel.Text = catBO.CatName;
        CatDesciptionTxt.Text = catBO.Description;
    }
    public void LoadGiftCard(int catid)
    {
        //Discount GiftCard
        GiftcardListView.DataSource = cardBUS.GetDisCountMerchant(catid);
        GiftcardListView.DataBind();
        //Out of stock giftcard
        GiftcardListView0.DataSource = cardBUS.GetOutOfStockMerchant(catid);
        GiftcardListView0.DataBind();
        //Category list
        CategoryListView.DataSource = cardBUS.GetCategoryList();
        CategoryListView.DataBind();
        //Merchant list
        MerchantListView.DataSource = cardBUS.GetCardList(-1);
        MerchantListView.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        int catid = 0;
        if (Request.QueryString["catid"] == null)
            Response.Redirect("buy-gift-cards.aspx");
        else
            catid =Convert.ToInt32(Request.QueryString["catid"].ToString());
        if (!IsPostBack)
        {
            LoadGiftCard(catid);
            LoadCategory(catid);
        }
        CartLink.Text = "Shopping Cart (" + (((List<string>)(Session["Cart"])).Count - 1).ToString() + ")";
        //reload CartGridView
        //get Cart(MerchantIDList) from Session
        List<string> cart = new List<string>();
        cart = (List<string>)Session["Cart"];
        LoadShoppingCart(cart);
    }

    public void LoadShoppingCart(List<string> MerIDList)
    {
        ShoppingCartGridView.DataSource = cardBUS.GetMerchantList(MerIDList);
        ShoppingCartGridView.DataBind();
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
            //reload CartGridView
            LoadShoppingCart(cart);
            ModalPopupExtender2.Show();
            CartLink.Text = "Shopping Cart (" + (((List<string>)(Session["Cart"])).Count - 1).ToString() + ")";
        }
    }
}