using System;

namespace ConsumerCart
{
    public partial class Navigator : System.Web.UI.MasterPage
    {
        protected void Page_Load (object sender, EventArgs e)
        {
        }

        protected void logoutbtn_Click (object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Server.Transfer("HomePage.aspx");
        }

        protected void orders_Click (object sender, EventArgs e)
        {
            Server.Transfer("YourOrders.aspx");
        }

        protected void acsettings_Click (object sender, EventArgs e)
        {
            Server.Transfer("AccountSettings.aspx");
        }

        protected void cart_Click (object sender, EventArgs e)
        {
            Server.Transfer("Cart.aspx");
        }

        protected void image_Click (object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Server.Transfer("HomePage.aspx");
        }
    }
}