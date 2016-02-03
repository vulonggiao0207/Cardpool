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
    protected void Page_Load(object sender, EventArgs e)
    {
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