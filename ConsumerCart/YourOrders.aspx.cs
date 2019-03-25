using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ConsumerCart
{
    public partial class YourOrders : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {
            int id = 0;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from orders where uid=@id", con);
            SqlCommand umd = new SqlCommand("select uid from Users where uemail=@email", con);
            string email = (string)Session["email"];

            umd.Parameters.AddWithValue("@email", email);

            SqlDataReader dr = umd.ExecuteReader();
            while (dr.Read())
            {
                id=int.Parse(dr["uid"].ToString());
            }

            cmd.Parameters.AddWithValue("@id", id);
            dr.Close();
            cmd.ExecuteNonQuery();

            ordersrepeater.DataSource=cmd.ExecuteReader();
            ordersrepeater.DataBind();
        }

        protected void logoutbtn_Click (object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Server.Transfer("HomePage.aspx");
        }
    }
}