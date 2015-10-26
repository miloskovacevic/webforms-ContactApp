using ContactsApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContactsApp
{
    public partial class Log : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new ContactDatabase())
            {
                MessageRepeater.DataSource = db.ContactLogs.ToArray();
                MessageRepeater.DataBind();


            }




        }
    }
}