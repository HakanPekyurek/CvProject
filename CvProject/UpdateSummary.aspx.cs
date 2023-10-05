using System;
using System.Web.UI;

namespace CvProject
{
    public partial class UpdateSummary : System.Web.UI.Page
    {
        CvProjectEntities db = new CvProjectEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["ID"]);
            if (Page.IsPostBack == false)
            {
                var about = db.About.Find(id);
                TextBox1.Text = about.Summary.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["ID"]);
            var about = db.About.Find(id);
            about.Summary = TextBox1.Text;
            db.SaveChanges();
            Response.Redirect("About.aspx");
        }
    }
}