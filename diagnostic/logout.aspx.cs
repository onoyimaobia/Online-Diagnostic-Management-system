using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace diagnostic
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            HttpCookie cookies1 = new HttpCookie(FormsAuthentication.FormsCookieName, "");
            cookies1.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Add(cookies1);

            Response.Redirect("login.aspx");
        }
    }
}