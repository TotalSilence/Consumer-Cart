using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace ConsumerCart
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();

            SqlCommand ctgcommand = new SqlCommand("select * from products where pcategory=@ctg", con);

            ctgcommand.Parameters.AddWithValue("@ctg", ctglist.SelectedValue);
            productrepeater.DataSource=ctgcommand.ExecuteReader();
            productrepeater.DataBind(); //Binding Repeater to Data fetched from the

            for (int i = 1; i<=5; i++)
            { quantityddl.Items.Add(i.ToString()); }
        }

        protected void addtocart_Click (object sender, EventArgs e)
        {
            LinkButton atcbtn = (LinkButton)sender;
            string[] arg = atcbtn.CommandArgument.ToString().Split(';');
            int pid = int.Parse(arg[0]);
            int sid = int.Parse(arg[1]);
            string uemail = Session["email"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();

            SqlCommand ucmd = new SqlCommand("select uid from users where uemail=@email", con);
            SqlCommand pcmd = new SqlCommand("select pname,pprice,pimage from products where pid=@id", con);
            pcmd.Parameters.AddWithValue("@id", pid);
            SqlDataReader drt = pcmd.ExecuteReader();
            string pname = "";
            string pimage = "";
            float pprice = 0.0f;
            while (drt.Read())
            {
                pname=drt["pname"].ToString();
                pprice=Convert.ToSingle(drt["pprice"].ToString());
                pimage=drt["pimage"].ToString();
            }
            drt.Close();

            ucmd.Parameters.AddWithValue("@email", uemail);
            SqlDataReader dr = ucmd.ExecuteReader();
            int uid = 0;
            while (dr.Read())
            {
                uid=int.Parse(dr["uid"].ToString());
            }
            SqlCommand cartcmd = new SqlCommand("insert into cart values (@pid,@uid,@sid,@quant,@pname,@pprice,@pimage)", con);
            cartcmd.Parameters.AddWithValue("@pid", pid);
            cartcmd.Parameters.AddWithValue("@uid", uid);
            cartcmd.Parameters.AddWithValue("@sid", sid);
            cartcmd.Parameters.AddWithValue("@quant", quantityddl.SelectedValue);
            cartcmd.Parameters.AddWithValue("@pname", pname);
            cartcmd.Parameters.AddWithValue("@pprice", pprice);
            cartcmd.Parameters.AddWithValue("@pimage", pimage);
            dr.Close();
            cartcmd.ExecuteNonQuery();
        }
    }
}