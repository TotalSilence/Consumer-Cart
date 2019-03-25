using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;

namespace ConsumerCart
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {
        }

        protected void submit_Click (object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select upassword,uemail,uid from Users where (uemail=@email) ", con);
            cmd.Parameters.AddWithValue("@email", emailbox.Text.ToString());
            SqlDataReader dr = cmd.ExecuteReader();
            string pwd = "";
            int uid = 0;
            while (dr.Read())
            {
                pwd=dr["upassword"].ToString();
                uid=int.Parse(dr["uid"].ToString());
            }
            if (dr.HasRows==true)
            {
                if (pwd==passwordbox.Text.ToString())
                {
                    Session["Email"]=emailbox.Text;
                    
                    Session["uid"]=uid;

                    Server.Transfer("MainPage.aspx");
                }
                else
                {
                    lbl.Text="Password is incorrect";
                }
            }
            else
            {
                lbl.Text=emailbox.Text+" doesnot exist";
            }
        }

        protected void frgtpwd_Click (object sender, EventArgs e)
        {

            Server.Transfer("PswdRstAccCheck.aspx");
        }
    }
}
