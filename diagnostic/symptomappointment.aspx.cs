using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace diagnostic
{
    public partial class symptomappointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //MembershipUser men = Membership.GetUser(User.Identity.Name);
            //if (men != null)
            //{
                //string mu = Membership.GetUser(User.Identity.Name).ToString();
                    //txtname.Text = mu;
                    string currentUser = User.Identity.Name;
                string tre = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                using (SqlConnection con = new SqlConnection(tre))
                {
                    SqlCommand com = new SqlCommand("select name,age,email,contact,address from biodata where username= +('" + currentUser + "')", con);
                    con.Open();
                    SqlDataReader read = com.ExecuteReader();

                    while (read.Read())
                    {
                        txtname.Text += read["name"].ToString();
                        txtage.Text += read["age"].ToString();
                        txtemail.Text += read["email"].ToString();
                        txtcontact.Text += read["contact"].ToString();
                        txtaddress.Text += read["address"].ToString();
                        //message.Text += "<br/>";

                    }
                    //string userid = men.ProviderUserKey.ToString();
                    //txtid.Text = userid;
                    //}
                }
                //string userid = men.ProviderUserKey.ToString();
                //txtid.Text = userid;
            
            
               
                dropdoen();
                toochi();
                txttest.Text = Session["test"].ToString();
                txtcost.Text = Session["cost"].ToString();
                // txttest.Text = Request.QueryString["test"];
                // txttest.Text = "<br/>";
                Calendar1.Visible = false;
                txtdate.Text = Calendar1.TodaysDate.ToString("d");
               // txtname.Text = Membership.GetUser(HttpContext.Current.User.Identity.Name).ProviderUserKey.ToString();
            }

        }

        

        protected void txtdate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btncalender_Click(object sender, EventArgs e)
        {
            if (Calendar1.Visible)
            { Calendar1.Visible = false; }
            else { Calendar1.Visible = true; }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtdate.Text = Calendar1.SelectedDate.ToString("d");

            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.CompareTo(DateTime.Today) < 0 || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.GhostWhite;
            }
        }

        protected void btnbook_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtname.Text != "" & txtage.Text != "" && txtcontact.Text != "" && txtemail.Text != "" && txtdate.Text != "" && Ddlservice.SelectedValue != "" && txttest.Text != "" && txtcost.Text != "" && txtaddress.Text != "")
                {
                    string cs = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(cs))
                    {
                        SqlCommand com = new SqlCommand("insert into print1 (ptName,ptAge,ptContact,ptEmail,ptTime,ptDate,ptService,ptTest,ptCost,ptAddress) values('" + txtname.Text + "','" + txtage.Text + "','" + txtcontact.Text + "','" + txtemail.Text + "','" + Ddltime.SelectedItem + "','" + txtdate.Text + "','" + Ddlservice.SelectedItem + "','" + txttest.Text + "','" + txtcost.Text + "','" + txtaddress.Text + "')", conn);
                        conn.Open();
                        com.ExecuteNonQuery();
                        
                    }
                    Application["name"] = txtname.Text;
                    Application["contact"] = txtcontact.Text;
                    Application["email"] = txtemail.Text;
                    Application["time"] = Ddltime.SelectedItem;
                    Application["date"] = txtdate.Text;
                    Application["service"] = Ddlservice.SelectedItem;
                    Application["test"] = txttest.Text;
                    Application["cost"] = txtcost.Text;
                    Application["address"] = txtaddress.Text;
                    Response.Redirect("print1.aspx");

                }
                else { lblmsg.Text = "All Fields are mandatory"; }
            }
            catch (Exception ex)
            {
                throw ex;
            }


        }

        protected void btncancel_Click(object sender, EventArgs e)
        {

        }
        public static DataSet populatedropdown(string command)
        {
            try
            {
                DataSet ds = new DataSet();

                string cs = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = cs;

                SqlCommand com = new SqlCommand(command, conn);
                conn.Open();
                SqlDataAdapter ad = new SqlDataAdapter(com);
                ad.Fill(ds);

                conn.Close();
                return ds;
            }


            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void dropdoen()
        {
            //string command0 = "select * from village";
            string command1 = "select * from service";
            DataSet ds2 = populatedropdown(command1);
            Ddlservice.Items.Clear();
            Ddlservice.Items.Add(new ListItem("Sample Collection", ""));
            if (ds2 != null && ds2.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                {
                    string sexname = Convert.ToString(ds2.Tables[0].Rows[i]["service_name"]);
                    string sexid = Convert.ToString(ds2.Tables[0].Rows[i]["service_id"]);
                    Ddlservice.Items.Add(new ListItem(sexname, sexid));
                }
            }
        }

        public void toochi()
        {
            //string command0 = "select * from village";
            string command1 = "select * from time";
            DataSet ds2 = populatedropdown(command1);
            Ddltime.Items.Clear();
            Ddltime.Items.Add(new ListItem("Appointmet Time", ""));
            if (ds2 != null && ds2.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                {
                    string sexname = Convert.ToString(ds2.Tables[0].Rows[i]["time"]);
                    string sexid = Convert.ToString(ds2.Tables[0].Rows[i]["timeId"]);
                    Ddltime.Items.Add(new ListItem(sexname, sexid));
                }
            }
        }
    }
}