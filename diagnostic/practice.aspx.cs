using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace diagnostic
{
    public partial class practice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                string t = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                using (SqlConnection con = new SqlConnection(t))
                {
                    SqlCommand com = new SqlCommand("select name from biodata where username= 'chigozie'" , con);
                    con.Open();
                    SqlDataReader read = com.ExecuteReader();
                    while (read.Read())
                    {
                        lbltext.Text += read["name"].ToString();
                        lbltext.Text += "<br/>";
                    }
                }
            }
        }

        protected void btndownload_Click(object sender, EventArgs e)
        {

        }
    }
}