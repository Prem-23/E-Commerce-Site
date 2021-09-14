using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Site
{
    public partial class index : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public Label username
        {
            get
            {
                return this.Label1; 
            }
        }

        public Label useeid
        {
            get
            {
                return this.Label2;
            }
        }
        public Label cartCount
        {
            get
            {
                return this.Label3;
            }
        }
        public LinkButton login
        {
            get
            {
                return this.LinkButton3;
            }
        }
        public LinkButton reg
        {
            get
            {
                return this.LinkButton1;
            }
        }

        public LinkButton greet
        {
            get
            {
                return this.LinkButton2;
            }
        }

        public LinkButton outlink
        {
            get
            {
                return this.LinkButton5;
            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
        }
    }
}