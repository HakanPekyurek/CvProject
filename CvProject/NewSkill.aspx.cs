using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvProject
{
    public partial class NewSkill : System.Web.UI.Page
    {
        CvProjectEntities db = new CvProjectEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Skills skills = new Skills();
            skills.Skill = TextBox1.Text;
            db.Skills.Add(skills);
            db.SaveChanges();
            Response.Redirect("Skill.aspx");
        }
    }
}