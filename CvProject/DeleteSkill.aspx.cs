using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvProject
{
    public partial class DeleteSkill : System.Web.UI.Page
    {
        CvProjectEntities db = new CvProjectEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["ID"]);
            var skill = db.Skills.Find(id);
            db.Skills.Remove(skill);
            db.SaveChanges();
            Response.Redirect("Skill.aspx");
        }
    }
}