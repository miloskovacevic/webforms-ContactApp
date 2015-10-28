using ContactsApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContactsApp
{
    public partial class ContactDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new ContactDatabase())
            {
                // CONTACT/LOG/1/
                var id = RouteData.Values["contactLogId"];
                var intId = Convert.ToInt32(id);
                var message = db.ContactLogs.SingleOrDefault(l => l.ID == intId);

                if (message != null)
                {
                    Name.Text = message.Name;
                    Email.Text = message.Email;
                    DateSent.Text = message.DateSent.ToString();
                    Subject.Text = message.Subject;
                    Message.Text = message.Message;
                }
                else
                {
                    error.Text = "Cannt find a message with that id";
                }
            }


        }
    }
}