using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ConsumerCart
{
    public partial class AccountCheck : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {
        }

        protected void check_Click (object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from users where uemail=@email and upassword=@upassword", con);
            cmd.Parameters.AddWithValue("@email", emaitxt.Text);
            cmd.Parameters.AddWithValue("@upassword", pswdtxt.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            int uid = 0;
            while (dr.Read())
            {
                uid=int.Parse(dr["uid"].ToString());
            }
            dr.Close();
            Response.Redirect("AccountSettings.aspx?id="+uid);
        }
    }
}