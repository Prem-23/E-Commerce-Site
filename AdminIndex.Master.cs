﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Site
{
    public partial class AdminIndex : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logout(object sender, EventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
        }
    }
}