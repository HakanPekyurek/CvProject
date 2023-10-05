using System;
using System.Web.UI;

namespace CvProject
{
    public partial class UpdateSkill : System.Web.UI.Page
    {
        CvProjectEntities db = new CvProjectEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["ID"]);
            if (Page.IsPostBack==false)
            {
                var skill = db.Skills.Find(id);
                TextBox1.Text = skill.Skill.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request["ID"]);
            var skill = db.Skills.Find(id);
            skill.Skill = TextBox1.Text;
            db.SaveChanges();
            Response.Redirect("Skill.aspx");
        }
    }
}