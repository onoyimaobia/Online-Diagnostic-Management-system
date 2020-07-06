using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Drawing;
using System.Data.SqlClient;
using System.Configuration;

namespace diagnostic
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                if(Request.IsAuthenticated)
                { if(User.IsInRole("Admin"))
                    {
                        uka.Visible = true;
                        savetogridview.Visible = true;
                        service.Visible = false;
                        contact.Visible = false;
                    }
                    else { uka.Visible = false;
                        savetogridview.Visible = false;
                        service.Visible = true;
                        contact.Visible = true;
                    }
                    
                    string currentUser = User.Identity.Name;
                    string tre = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(tre))
                    {
                        SqlCommand com = new SqlCommand("select name from biodata where username= +('" +currentUser+"')", con);
                        con.Open();
                        SqlDataReader read = com.ExecuteReader();

                        while (read.Read())
                        {
                            message.Text += "Welcome"+ "&nbsp;&nbsp;" + read["name"].ToString();
                            //message.Text += "<br/>";
                           
                        }
                    }
                   // message.Text = "Welcome" + "&nbsp;&nbsp;&nbsp; "  + currentUser + "!" + " ";
                    //message.ForeColor = Color.White;
                    message.ForeColor = Color.DodgerBlue;
                    Panel1.Visible = true;
                    agbo.Visible = false;
                    Panel2.Visible = false;
                    toochi.Visible = true;
                    tst.Visible = true;
                    appoint.Visible = true;
                    pre.Visible = true;
                    changepassword.Visible = true;
                }
                else
                {
                    Panel2.Visible = true;
                    msg.Text = "Welcome"+"&nbsp;&nbsp; " + " "+ "anonymous" + " " ;
                    msg.ForeColor = Color.DodgerBlue;
                    agbo.Visible = true;
                    Panel1.Visible = false;
                    toochi.Visible = false;
                    uka.Visible = false;
                    tst.Visible = false;
                    appoint.Visible = false;
                    pre.Visible = false;
                    savetogridview.Visible = false;
                    changepassword.Visible = false;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}