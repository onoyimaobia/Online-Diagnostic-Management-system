using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace diagnostic
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                lblname.Text = Application["name"].ToString();
                lblemail.Text = Application["email"].ToString();
                lblcontact.Text = Application["contact"].ToString();
                lblage.Text = Application["age"].ToString();
                lblsex.Text = Application["sex"].ToString();
                lblblood.Text = Application["blood"].ToString();
                lblgen.Text = Application["genotype"].ToString();
                
                lbladdress.Text = Application["address"].ToString();
                 
            }
        }

        protected void redirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}