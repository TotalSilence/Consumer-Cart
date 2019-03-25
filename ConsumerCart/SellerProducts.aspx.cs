using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace ConsumerCart
{
    public partial class SellerProducts1 : System.Web.UI.Page
    {
        protected void Page_Load (object sender, EventArgs e)
        {
        }

        protected void productadd_Click (object sender, EventArgs e)
        {
            string file="", filename = "";
            if(imageuploader.HasFile)
            {
                filename=Path.GetFileName(imageuploader.FileName);
                imageuploader.SaveAs(Server.MapPath("~/Images/"+imageuploader.FileName));
                file="~/Images/"+imageuploader.FileName;
            }
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
            con.Open();
            SqlCommand pcmd = new SqlCommand("insert into products values (@name,@price,@prating,@sname,@sid,@pcategory,@image)", con);
            SqlCommand scmd = new SqlCommand("select * from seller where semail=@semail", con);
            string semail = Session["semail"].ToString();
            scmd.Parameters.AddWithValue("@semail", semail);
            SqlDataReader dr = scmd.ExecuteReader();
            string sname = "";
            int sid = 0;
            while (dr.Read())
            {
                sname=dr["sname"].ToString();
                sid=int.Parse(dr["sid"].ToString());
            }
            dr.Close();
            pcmd.Parameters.AddWithValue("@name", nametxt.Text);
            pcmd.Parameters.AddWithValue("@price", pricetxt.Text);
            pcmd.Parameters.AddWithValue("@prating", 1);
            pcmd.Parameters.AddWithValue("@sname", sname);
            pcmd.Parameters.AddWithValue("@sid", sid);
            pcmd.Parameters.AddWithValue("@pcategory", ctgddl.SelectedValue.ToString());
            pcmd.Parameters.AddWithValue("@image", file);
            pcmd.ExecuteNonQuery();
            SqlCommand r = new SqlCommand("select pid from products where (pname=@name) and (sid=@id)", con);
            r.Parameters.AddWithValue("@name", nametxt.Text);
            r.Parameters.AddWithValue("@id", sid);
            SqlDataReader dre = r.ExecuteReader();
            int rid = 0;
            while (dre.Read())
            {
                rid=int.Parse(dre["pid"].ToString());
            }
            lblMessage.Visible=true;
            lblMessage.Text="Your product ID is: "+rid;
        }

        protected void logout_Click (object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("HomePage.aspx");
        }
    }
}