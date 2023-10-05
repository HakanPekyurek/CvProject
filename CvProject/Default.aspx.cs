using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvProject
{
    public partial class Default : System.Web.UI.Page
    {
        CvProjectEntities db = new CvProjectEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.About.ToList();
            Repeater1.DataBind();
            Repeater2.DataSource = db.About.ToList();
            Repeater2.DataBind();
            Repeater3.DataSource = db.Education.ToList();
            Repeater3.DataBind();
            Repeater4.DataSource = db.About.ToList();
            Repeater4.DataBind();
            Repeater5.DataSource = db.Experience.ToList();
            Repeater5.DataBind();
            Repeater6.DataSource = db.Skills.ToList();
            Repeater6.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Contact contact = new Contact();
            contact.NameSurname = TextBox1.Text;
            contact.Mail = TextBox2.Text;
            contact.Subject = TextBox3.Text;
            contact.Message = TextBox4.Text;
            db.Contact.Add(contact);
            db.SaveChanges();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty; 
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox4.Text = string.Empty;
        }
    }
}