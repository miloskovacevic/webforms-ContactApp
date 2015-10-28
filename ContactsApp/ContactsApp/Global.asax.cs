using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;

namespace ContactsApp
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegistrujRute(RouteTable.Routes);
        }

        private void RegistrujRute(RouteCollection routes)
        {
           // http://localhost/contact.aspx
           // http://localhost/contact/

            routes.MapPageRoute("ContactForm", "contact", "~/Contact.aspx");
            routes.MapPageRoute("ContactLog", "contact/log", "~/Log.aspx");
            routes.MapPageRoute("ContactDetail", "contact/log/{contactLogId}", "~/ContactDetail.aspx");
           
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}