using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvProject
{
    public partial class UpdateExperience : System.Web.UI.Page
    {
        CvProjectEntities db = new CvProjectEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["ID"]);
            if (Page.IsPostBack == false)
            {
                var experience = db.Experience.Find(id);
                TxtCompName.Text = experience.CompanyName.ToString();
                TxtTitle.Text = experience.Title.ToString();
                TxtDescription.Text = experience.Description.ToString();
                TxtYear.Text = experience.Year.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["ID"]);
            var experience = db.Experience.Find(id);
            experience.CompanyName = TxtCompName.Text;
            experience.Title = TxtTitle.Text;
            experience.Description = TxtDescription.Text;
            experience.Year = TxtYear.Text;
            db.SaveChanges();
            Response.Redirect("Experience.aspx");
        }
    }
}