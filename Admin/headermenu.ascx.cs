using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ALAFAQKWT.Admin
{
    public partial class headermenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin_id"]==null)
            {
                Response.Redirect("Default.aspx");
            }
            if (Session["admin_id"] != null)
            {
                lbl_admin.Text = Session["admin_name"].ToString();

            }
            else
            {
                lbl_admin.Text = "Guest";
            }


        }

    }
}