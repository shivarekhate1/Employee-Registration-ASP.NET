using System;

namespace ITP11AM
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btn_EmployeeRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EmployeeRegistration.aspx");
        }

        protected void btn_EmployeeDashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EmployeeDashboard.aspx");
        }

        protected void btn_AdminDashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AdminDashboard.aspx");
        }

        protected void btn_Logout_Click(object sender, EventArgs e)
        {
            
           
        }
    }
}
