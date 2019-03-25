using System;

namespace ConsumerCart
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {
        }

        protected void loginbtn_Click (object sender, EventArgs e)
        {
            Server.Transfer("LoginPage.aspx");
        }

        protected void signupbtnn_Click (object sender, EventArgs e)
        {
            Server.Transfer("SignupPage.aspx");
        }

        protected void sellersignup_Click (object sender, EventArgs e)
        {
            Server.Transfer("SellerLogin.aspx");
        }

        protected void sellerlogin_Click (object sender, EventArgs e)
        {
            Server.Transfer("SellerSignup.aspx");
        }

        protected void Unnamed_Click (object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Server.Transfer("SignupPage.aspx");
        }
    }
}