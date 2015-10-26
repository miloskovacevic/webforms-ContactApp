using ContactsApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContactsApp
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            using (var db = new ContactDatabase())
            {
                Response.Write(db.ContactLogs.Count().ToString());
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                using (var db = new ContactDatabase())
                {
                    var log = new ContactLog()
                    {
                        Name = txtName.Text,
                        Email = txtEmail.Text,
                        Subject = txtSubject.Text,
                        Message = txtMessage.Text,
                        DateSent = DateTime.Now
                    };

                    db.ContactLogs.Add(log);
                    db.SaveChanges();

                    pnlFormFields.Visible = false;
                    pnlSuccessMessage.Visible = true;
                }
            }
            else 
            {

            }
        }
    }
}