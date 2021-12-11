using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace E_Commerce_Site
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text=="" && TextBox2.Text == "")
            {
                Response.Write("<script>window.alert('Incase your userid and password field is empty how could we find you are my Administator')</script>");
            }
            else { 
                if(TextBox1.Text=="Admin" && TextBox2.Text == "Admin@1234")
                {
                    Session["AdminID"] = TextBox1.Text;
                    Response.Redirect("AdminEnters.aspx");
                }
                else
                {
                    Response.Write("<script>window.alert('Invalid Administrator Credentials')</script>");
                }
            }
        }
    }
}