using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace ContactsApp.Models
{
    public class ContactDatabase : DbContext
    {
        public DbSet<ContactLog> ContactLogs { get; set; }


    }
}