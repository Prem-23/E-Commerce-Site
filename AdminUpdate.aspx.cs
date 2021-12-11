using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace E_Commerce_Site
{
    public partial class AdminUpdate : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminID"] == null)
            {
                Response.Redirect("./AdminLogin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from ECommerceProducts where ProductID='" + TextBox1.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox2.Text = dr.GetString(1);
                TextBox3.Text = dr.GetString(2);
                TextBox4.Text = dr.GetString(4);
                TextBox5.Text = dr.GetString(5);
                con.Close();
            }
            else
            {
                con.Close();
                Response.Write("<script>window.alert('That Product ID you enter is not in a list')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string imgPath = Server.MapPath("~/imgs/");
            FileUpload1.SaveAs(imgPath + Path.GetFileName(FileUpload1.FileName));
            string imgFile = "~/imgs/" + FileUpload1.FileName;
            con.Open();
            SqlCommand cmd1 = new SqlCommand("update ECommerceProducts set ProductCategory='" + TextBox2.Text + "', ProductName='" + TextBox3.Text + "', ProductImagePath='" + imgFile + "', ProductPrice='" + TextBox4.Text + "', ProductDescription='" + TextBox5.Text + "' where ProductID='"+TextBox1.Text+"'", con);
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>window.alert('Successfully Updated')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
    }
}