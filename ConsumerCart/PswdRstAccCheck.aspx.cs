using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;

namespace ConsumerCart.CSS
{
    public partial class PswdRstAccCheck : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {
        }

        protected void SendPassword_Click (object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select upassword from Users where uemail=@email ", con);
            cmd.Parameters.AddWithValue("@email", emailbox.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            string password = "";
            while (dr.Read())
            {

                password=dr["upassword"].ToString();
            }
            if (password!=string.Empty)
            {
                sglbl.Visible=true;
                sglbl.Text="Your Password is: "+password;
            }
            else
            {
                sglbl.Visible=true;
                sglbl.Text="This is email is not registered with us.";
                emailbox.Text="";
            }
        }

        protected void Button1_Click (object sender, EventArgs e)
        {
            Server.Transfer("LoginPage.aspx");
        }
    }
}