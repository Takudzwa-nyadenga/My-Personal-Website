using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nyadenga_Assignment1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ibLinkedin_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.linkedin.com/in/takudzwa-nyadenga-093bb017b/");
        }

        protected void ibYoutube_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.youtube.com/channel/UCpLp9Wl5zYq678Umni39j8g");
        }
    }
}