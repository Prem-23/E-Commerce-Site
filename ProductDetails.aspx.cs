using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace E_Commerce_Site
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        Cart DA = new Cart();
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
            string UID = Session["userID"].ToString();
            string ProductID = Request.QueryString["ProductID"];
            string Quantity = TextBox1.Text;
            string Added_Date = DateTime.Today.ToString("yyddMM");

            DA.addProductItemToCart(UID, ProductID, Quantity/*, Added_Date*/);
            Response.Redirect("./Cart.aspx");
        }
    }
}