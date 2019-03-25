using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ConsumerCart
{
    public partial class SellerProducts : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {
        }

        protected void register_Click (object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into seller values (@sname,@semail,@sphone,@spassword)", con);
            cmd.Parameters.AddWithValue("@sname", nametxt.Text);
            cmd.Parameters.AddWithValue("@semail", emailtxt.Text);
            cmd.Parameters.AddWithValue("@sphone", phonetxt.Text);
            cmd.Parameters.AddWithValue("@spassword", pswdtxt.Text);
            cmd.ExecuteNonQuery();
            lbl.Text="You have been registered as an authorized seller on Consumer Cart";
            System.Threading.Thread.Sleep(2000);
            Server.Transfer("SellerLogin.aspx");
        }
    }
}