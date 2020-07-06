using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace diagnostic
{
    public partial class gridwiew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Calendar1.Visible = false;
            txt1.Text = Calendar1.TodaysDate.ToString();


            string too = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection con = new SqlConnection(too))
            {
                SqlCommand com = new SqlCommand("select * from test", con);
                con.Open();
                SqlDataAdapter dr = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                dr.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.GhostWhite;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txt1.Text = Calendar1.SelectedDate.ToString();

            Calendar1.Visible = false;

        }

        protected void btn2_Click(object sender, EventArgs e)
        {

            if (Calendar1.Visible)
            { Calendar1.Visible = false; }
            else { Calendar1.Visible = true; }
        }
    }
}