using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace ConsumerCart
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {
            paymentddl.Visible=false;
            intro.Visible=false;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();
            SqlCommand ucmd = new SqlCommand("select uid from Users where uemail=@email", con);
            string email = (string)Session["email"];
            ucmd.Parameters.AddWithValue("@email", email);
            SqlDataReader udr = ucmd.ExecuteReader();
            int uid = 0;
            while (udr.Read())
            {
                uid=int.Parse(udr["uid"].ToString());
            }
            udr.Close();
            SqlCommand cartcmd = new SqlCommand("select * from cart where uid=@id", con);
            cartcmd.Parameters.AddWithValue("@id", uid);
            cartrepeater.DataSource=cartcmd.ExecuteReader();
            cartrepeater.DataBind();
            if (cartrepeater.Items.Count>0)
            {
                paymentddl.Visible=true;
                intro.Visible=true;
            }
        }

        protected void orderbtn_Click (object sender, EventArgs e) //Finalising the order
        {
            LinkButton orderbtn = (LinkButton)sender;
            string[] args = orderbtn.CommandArgument.ToString().Split(';');
            int pid = int.Parse(args[0].ToString());
            int uid = int.Parse(args[1].ToString());
            int sid = int.Parse(args[2].ToString());
            string pname = (args[3].ToString());
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into orders values (@pid,@uid,@sid,@pay,@ddate,@odate,@pname,@pprice,@quant,@total,@pimage)", con);
            SqlCommand pcmd = new SqlCommand("select * from products where pid=@id", con);
            SqlCommand ccmd = new SqlCommand("select * from cart where pid=@id", con);
            SqlCommand cartcmd = new SqlCommand("delete from cart where uid=@uid and pid=@pid", con);
            pcmd.Parameters.AddWithValue("@id", pid);
            ccmd.Parameters.AddWithValue("@id", pid);
            cartcmd.Parameters.AddWithValue("@pid", pid);
            cartcmd.Parameters.AddWithValue("@uid", uid);
            SqlDataReader cdr = ccmd.ExecuteReader();
            int quant = 0;
            while (cdr.Read())
            {
                quant=int.Parse(cdr["quantity"].ToString());
            }
            cdr.Close();
            SqlDataReader pdr = pcmd.ExecuteReader();
            string pame = "";
            string pimage = "";
            float pprice = 0.0f;
            while (pdr.Read())
            {
                pame=pdr["pname"].ToString();
                pprice=Convert.ToSingle(pdr["pprice"].ToString());
                pimage=pdr["pimage"].ToString();
            }
            pdr.Close();
            cmd.Parameters.AddWithValue("@pid", pid);
            cmd.Parameters.AddWithValue("@uid", uid);
            cmd.Parameters.AddWithValue("@sid", sid);
            cmd.Parameters.AddWithValue("@pay", paymentddl.SelectedValue);
            cmd.Parameters.AddWithValue("@pname", pame);
            cmd.Parameters.AddWithValue("@pprice", pprice);
            string ddate = DateTime.Today.AddDays(1).ToShortDateString();
            string odate = DateTime.Today.ToShortDateString();
            cmd.Parameters.AddWithValue("@ddate", ddate);
            cmd.Parameters.AddWithValue("@odate", odate);
            cmd.Parameters.AddWithValue("@quant", quant);
            cmd.Parameters.AddWithValue("@total", (quant*pprice));
            cmd.Parameters.AddWithValue("@pimage", pimage);
            cmd.ExecuteNonQuery();
            cartcmd.ExecuteNonQuery();
        }

        

        protected void removebtn_Click (object sender, EventArgs e)
        {
            LinkButton rmvbtn = (LinkButton)sender;
            string[] args = rmvbtn.CommandArgument.ToString().Split(';');
            int pid = int.Parse(args[0].ToString());
            int uid = int.Parse(args[1].ToString());
            int sid = int.Parse(args[2].ToString());
            string pname = (args[3].ToString());
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();
            SqlCommand rmvcmd = new SqlCommand("delete cart where pid=@pid and uid=@uid and sid=@sid", con);
            rmvcmd.Parameters.AddWithValue("@pid", pid);
            rmvcmd.Parameters.AddWithValue("@uid", uid);
            rmvcmd.Parameters.AddWithValue("@sid", sid);
            rmvcmd.ExecuteNonQuery();
        }
    }
}