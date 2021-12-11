using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

namespace E_Commerce_Site
{
    public partial class Cart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
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


        public void addProductItemToCart(string UID, string ProductID, string Quantity)//, string Added_Date
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("addProductItemToCart", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@UID", UID);
            cmd.Parameters.AddWithValue("@ProductID", ProductID);
            cmd.Parameters.AddWithValue("@Quantity ", Quantity);
            //cmd.Parameters.AddWithValue("@Added_Date ", Added_Date);
            cmd.ExecuteNonQuery();
            con.Close();
        }


        protected void Row_Delete(object sender, GridViewDeleteEventArgs e)
        {
            /*int card_id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value[0].ToString());
            con.Open();
            SqlCommand cmd2 = new SqlCommand("delete from cartBasket where CartID='" + card_id + "'", con);
            cmd2.ExecuteNonQuery();
            con.Close();*/
        }

    }
}