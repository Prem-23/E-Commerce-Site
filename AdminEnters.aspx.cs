using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace E_Commerce_Site
{
    public partial class AdminEnters : System.Web.UI.Page
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
            
            if (TextBox1.Text == "" && TextBox3.Text == "" && TextBox4.Text == "")
            {
                Response.Write("<script>window.alert('Mandatory to fill all Fields')</script>");
            }
            else
            {
                string imgPath = Server.MapPath("~/imgs/");
                FileUpload1.SaveAs(imgPath + Path.GetFileName(FileUpload1.FileName));
                string imgFile = "~/imgs/" + FileUpload1.FileName;
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into ECommerceProducts values('"+TextBox2.Text+"','" + TextBox1.Text + "','" + imgFile + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                TextBox1.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox2.Text = "";

                Response.Write("<script>window.alert('Successfully Added')</script>");
            }
        }
    }
}