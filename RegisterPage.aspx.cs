using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace E_Commerce_Site
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=Premkumar;DataBase=ECommerceDataBase;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text=="" && TextBox2.Text=="" && TextBox3.Text=="" && TextBox4.Text=="" && TextBox5.Text=="" && TextBox6.Text=="" && TextBox7.Text == "")
            {
                Response.Write("<script>window.alert('Mandatory to fill all Fields')</script>");
            }
            else {
                con.Open();
                SqlCommand cmd1 = new SqlCommand("select * from ECommerceUser where Mail_ID='" + TextBox3.Text + "'", con);
                SqlDataReader dr1 = cmd1.ExecuteReader();
                if (dr1.Read())
                {
                    con.Close();
                    Response.Write("<script>window.alert('This EmailID is already exists .. Proceed to Login')</script>");
                }
                else
                {
                    con.Close();
                    con.Open();
                    SqlCommand cmd2 = new SqlCommand("select * from ECommerceUser where UserID='" + TextBox6.Text + "'", con);
                    SqlDataReader dr2 = cmd2.ExecuteReader();
                    if (dr2.Read())
                    {
                        con.Close();
                        Response.Write("<script>window.alert('This UserID is already exists .. Proceed to Login')</script>");
                    }
                    else
                    {
                        con.Close();
                        con.Open();
                        SqlCommand cmd = new SqlCommand("insert into ECommerceUser values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                        TextBox4.Text = "";
                        TextBox5.Text = "";
                        TextBox6.Text = "";
                        TextBox7.Text = "";
                        Response.Write("<script>window.alert('Registered Successfully .. Proceed to Login')</script>");
                        string ReturnUrl = Convert.ToString(Request.QueryString["url"]);
                        if (!string.IsNullOrEmpty(ReturnUrl))
                        {
                            Response.Redirect(ReturnUrl);
                        }
                        else
                        {
                            Response.Redirect("LoginPage.aspx?msgs=" + "SuccessLogin");
                        }
                    }
                }
            }
        }
    }
}