using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ConsumerCart
{
    public partial class SellerLogin : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {
        }

        protected void submit_Click (object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select semail,spassword from seller where semail=@email ", con);
            cmd.Parameters.AddWithValue("@email", emailbox.Text);
            Session["semail"]=emailbox.Text;
            Session["spassword"]=passwordbox.Text;
            Server.Transfer("SellerProducts.aspx");
        }

        
    }
}