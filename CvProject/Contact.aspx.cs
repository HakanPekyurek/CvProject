using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvProject
{
    public partial class Contact1 : System.Web.UI.Page
    {
        CvProjectEntities db = new CvProjectEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource =  db.Contact.ToList();
            Repeater1.DataBind();
        }
    }
}