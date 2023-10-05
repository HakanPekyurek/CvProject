using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvProject
{
    public partial class AddNewExperience : System.Web.UI.Page
    {
        CvProjectEntities db = new CvProjectEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Experience newExperience = new Experience();
            newExperience.CompanyName = TxtCompName.Text;
            newExperience.Title = TxtTitle.Text;
            newExperience.Description = TxtDescription.Text;
            newExperience.Year = TxtYear.Text;
            db.Experience.Add(newExperience);
            db.SaveChanges();
            Response.Redirect("Experience.aspx");
        }
    }
}