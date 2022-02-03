using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nyadenga_Assignment1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bttn_registerpage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void bttn_loginpage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            Response.Redirect("Delete.aspx");
        }
    }
}