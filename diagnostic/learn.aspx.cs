using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Security;

namespace diagnostic
{
    public partial class learn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txt1.Text = Session["Total"].ToString();
                DataTable dtgetselectedRows = Session["toochi"] as DataTable;
                xselected.DataSource = dtgetselectedRows;
                xselected.DataBind();


                string addstring = string.Empty;
                    for (int i=0; i<dtgetselectedRows.Rows.Count; i++)
                {
                    string m = dtgetselectedRows.Rows[i]["TestName"].ToString();
                         addstring = addstring+m;
                }


                txt2.Text = addstring;               
            }

        }

        protected void txt2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}