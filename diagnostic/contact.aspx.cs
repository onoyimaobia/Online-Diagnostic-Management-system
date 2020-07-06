using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace diagnostic
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {

            }
        }

        protected void btnmessage_Click(object sender, EventArgs e)
        {
            if (txtname.Text != "" & txtcontact.Text != "" && txtemail.Text != "" && txtsubject.Text != "" && txtmessage.Text != "")
            {
               
                    string cs = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(cs))
                    {
                        SqlCommand com = new SqlCommand("insert into contact (Name,Email,Contact,Subject,Message) values('" + txtname.Text + "','" + txtemail.Text + "','" + txtcontact.Text + "','" + txtsubject.Text + "','" + txtmessage.Text + "')", conn);
                        conn.Open();
                        com.ExecuteNonQuery();
                        
                    }
                }

            else
            {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = " All fields are Mandatory";
            }
        }
    }
    }
