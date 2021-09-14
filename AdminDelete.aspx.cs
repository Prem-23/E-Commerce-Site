using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace E_Commerce_Site
{
    public partial class AdminDelete : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=Premkumar;DataBase=ECommerceDataBase;Integrated Security=true");
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
            SqlCommand cmd1 = new SqlCommand("select * from ECommerceProducts where ProductID='" + TextBox1.Text + "'", con);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                con.Close();
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from ECommerceProducts where ProductID='" + TextBox1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>window.alert('Deleted Successfully')</script>");
                TextBox1.Text = "";
            }
            else
            {
                con.Close();
                Response.Write("<script>window.alert('This Product ID does not exist in Database')</script>");
            }
        }
    }
}