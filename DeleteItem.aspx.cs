using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace E_Commerce_Site
{
    public partial class DeleteItem : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=Premkumar;DataBase=ECommerceDataBase;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null && Session["userID"] != null)
            {
                Master.username.Text = (string)Session["user"];
                Master.useeid.Text = (string)Session["userID"];
                Master.login.Visible = false;
                Master.reg.Visible = false;
                Master.outlink.Visible = true;
                Master.greet.Visible = true;
                Session.Timeout = 10;
            }
            else
            {
                Session.Clear();
                Session.RemoveAll();
                Response.Redirect("./LoginPage.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string usercheckID = (string)Session["userID"];
            con.Open();
            SqlCommand cmd1 = new SqlCommand("select * from cartBasket where UID='"+usercheckID+"' and CartID='" + TextBox1.Text + "'", con);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                con.Close();
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from cartBasket where CartID='" + TextBox1.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Cart.aspx");
                TextBox1.Text = "";
            }
            else
            {
                con.Close();
                Response.Write("<script>window.alert('You do not have any Item like you Entered Cart ID..')</script>");
            }
        }
    }
}