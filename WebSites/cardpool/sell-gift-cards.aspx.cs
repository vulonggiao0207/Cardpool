using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using BUS;
public partial class sell_gift_cards : System.Web.UI.Page
{
    CardBUS cardBUS = new CardBUS();
    public void LoadImage(Image imagebutton, CardBO cardbo)
    {
        imagebutton.ImageUrl = cardbo.Image;
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
        if (piccount >= 7) LoadImage(CardImage6, cardColl.Index(6));
        if (piccount >= 8) LoadImage(CardImage7, cardColl.Index(7));
        if (piccount >= 9) LoadImage(CardImage8, cardColl.Index(8));
        if (piccount >= 10) LoadImage(CardImage9, cardColl.Index(9));
        if (piccount >= 11) LoadImage(CardImage10, cardColl.Index(10));
        if (piccount >= 12) LoadImage(CardImage11, cardColl.Index(11));
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