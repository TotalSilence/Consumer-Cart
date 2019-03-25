using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace ConsumerCart
{
    public partial class EditSellerProducts : System.Web.UI.Page
    {
        public SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnection"].ConnectionString);
        
        protected void Page_Load (object sender, EventArgs e)
        {
       
        }

        protected void updtbtn_Click (object sender, EventArgs e)
        {
            con.Open();
            string file = "", filename = "";
            if (imageuploader.HasFile)
            {
                filename=Path.GetFileName(imageuploader.FileName);
                imageuploader.SaveAs(Server.MapPath("~/Images/"+imageuploader.FileName));
                file="~/Images/"+imageuploader.FileName;
            }
            SqlCommand upd = new SqlCommand("update products set pname=@name,pprice=@price,pcategory=@ctg,pimage=@image where pid=@id", con);

            upd.Parameters.AddWithValue("@id", idtxt.Text);
            upd.Parameters.AddWithValue("@name", nametxt.Text);
            upd.Parameters.AddWithValue("@price", pricetxt.Text);
            upd.Parameters.AddWithValue("@ctg", ctgddl.SelectedValue);
            upd.Parameters.AddWithValue("@image", file);
            upd.ExecuteNonQuery();
            con.Close();
        }

        protected void deletebtn_Click (object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("delete products where pid=@id", con);
            
            cmd.Parameters.AddWithValue("@id",idtxt.Text);
            cmd.ExecuteNonQuery();


        }
    }
}