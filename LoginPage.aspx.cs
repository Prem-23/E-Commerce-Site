using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace E_Commerce_Site
{ 
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" && TextBox2.Text == "")
            {
                Response.Write("<script>window.alert('Without UserID and Password You could not Login')</script>");
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from ECommerceUser where UserID='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Session["User"] = TextBox1.Text;
                    con.Close();

                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("select * from ECommerceUser where UserID='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", con);
                    SqlDataReader dr1 = cmd.ExecuteReader();
                    if (dr1.Read())
                    {
                        Session["userID"] = dr1.GetValue(0).ToString();
                        con.Close();
                    }
                    else
                    {
                        con.Close();
                        Response.Write("<script>window.alert('you login credentials not have id')</script>");
                    }

                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("<script>window.alert('Invalid Credentials')</script>");
                    con.Close();
                }
            }
        }
    }
}