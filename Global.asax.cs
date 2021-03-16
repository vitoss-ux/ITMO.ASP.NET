﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace ASP.net_Labs
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["Visitors"] = 0;
        }

        protected void Application_OnEndRequest()
        {
            Response.Write("<hr />Эта страница была загружена " + DateTime.Now.ToString());
        }

        void Session_Start(object sender, EventArgs e)
        {
            //Visitors counter 
            Application["Visitors"] = long.Parse(Application["Visitors"].ToString()) + 1;
        }
    }
}