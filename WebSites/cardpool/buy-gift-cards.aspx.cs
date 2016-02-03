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
        imagebutton.PostBackUrl = "buy.aspx?cardid=" + cardbo.CardID; 
    }
    public void LoadGiftCard()
    {
        //Discount GiftCard
        GiftcardListView.DataSource = cardBUS.GetDisCountMerchant();
        GiftcardListView.DataBind();
        //Out of stock giftcard
        GiftcardListView0.DataSource = cardBUS.GetOutOfStockMerchant();
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
        CardCollection cardColl = new CardCollection();
        cardColl = cardBUS.RandomCardList(cardBUS.GetCardList(-1), 12);
        int piccount = cardColl.Count;
        if (piccount >= 1) LoadImage(CardImage0, cardColl.Index(0));
        if (piccount >= 2) LoadImage(CardImage1, cardColl.Index(1));
        if (piccount >= 3) LoadImage(CardImage2, cardColl.Index(2));
        if (piccount >= 4) LoadImage(CardImage3, cardColl.Index(3));
        if (piccount >= 5) LoadImage(CardImage4, cardColl.Index(4));
        if (piccount >= 6) LoadImage(CardImage5, cardColl.Index(5));
        if (!IsPostBack)
        {
            LoadGiftCard();           
        }
        //reload CartGridView
        //get Cart(MerchantIDList) from Session
        List<string> cart = new List<string>();
        cart = (List<string>)Session["Cart"];
        LoadShoppingCart(cart);
        CartLink.Text = "Shopping Cart (" + (((List<string>)(Session["Cart"])).Count - 1).ToString() + ")";
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