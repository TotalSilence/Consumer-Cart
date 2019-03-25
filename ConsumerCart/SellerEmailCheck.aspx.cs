using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ConsumerCart
{
    public partial class SellerEmailCheck : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {
        }

        protected void check_Click (object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from seller where semail=@email", con);
            cmd.Parameters.AddWithValue("@email", con);
            SqlDataReader dr = cmd.ExecuteReader();

            string password = "";
            if (dr.HasRows)
            {
                msg.Visible=true;
                while (dr.Read())
                {
                    password=dr["spassword"].ToString();
                }
                msg.Text="Your password is: "+password;
            }
            else
            {
                msg.Text="You are not Registered with us. Please do.";
            }
        }
    }
}