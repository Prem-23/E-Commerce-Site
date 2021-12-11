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
    public partial class Home : System.Web.UI.Page
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
                bind();
            }
            else
            {
                Session.Clear();
                Session.RemoveAll();
                Master.login.Visible = true;
                Master.reg.Visible = true;
                Master.outlink.Visible = false;
                Master.greet.Visible = false;
                bind();
            }
        }

        protected void bind()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from ECommerceProducts", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
            con.Close();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
        }
    }
}