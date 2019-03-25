using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ConsumerCart
{
    public partial class AccountSettings : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {
            string uemail = (string)Session["Email"];
            SqlConnection usercon = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            usercon.Open();
            SqlCommand cmd = new SqlCommand("select * from Users", usercon);
        }

        protected void changebtn_Click (object sender, EventArgs e)
        {
            string uemail = (string)Session["Email"];
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("update Users set uname=@name,upassword=@upassword,uaddress=@uaddress,uphone=@uphone where uemail=@email", con);

            cmd.Parameters.AddWithValue("@name", nametxt.Text);
            cmd.Parameters.AddWithValue("@upassword", pswdtxt.Text);
            cmd.Parameters.AddWithValue("@uaddress", addrtxt.Text);
            cmd.Parameters.AddWithValue("@email", uemail);
            cmd.Parameters.AddWithValue("@uphone", phonetxt.Text);
            cmd.ExecuteNonQuery();
        }
    }
}