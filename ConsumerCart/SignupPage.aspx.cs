using System;
using System.Configuration;
using System.Data.SqlClient;

namespace ConsumerCart
{
    public partial class SignupPage : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {
        }

        protected void register_Click (object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Users values (@name,@address,@email,@phone,@password)", con);
            cmd.Parameters.AddWithValue("@name", nametxt.Text);
            cmd.Parameters.AddWithValue("@address", addresstxt.Text);
            cmd.Parameters.AddWithValue("@email", emailtxt.Text);
            cmd.Parameters.AddWithValue("@phone", phonetxt.Text);
            cmd.Parameters.AddWithValue("@password", pswdtxt.Text);
            cmd.ExecuteNonQuery();
            lbl.Text="Registered Successfully";
            System.Threading.Thread.Sleep(1000);
            Server.Transfer("LoginPage.aspx");
        }
    }
}