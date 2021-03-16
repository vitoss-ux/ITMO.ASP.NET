﻿using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ASP.net_Labs.Models;

namespace ASP.net_Labs
{
    public partial class Summary : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected string GetNoShowHtml()
        {
            StringBuilder html = new StringBuilder();
            var noData = ResponseRepository.GetRepository()
                .GetAllResponses().Where(r => !r.WillAttend.Value);
            foreach (var rsvp in noData)
            {

                html.Append(String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td>",
                                    rsvp.Name, rsvp.Email, rsvp.Phone));
            }
            return html.ToString();
        }
    }
}