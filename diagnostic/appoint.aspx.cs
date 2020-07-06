using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Web.Security;
using System.Drawing;

namespace diagnostic
{
    public partial class appoint : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (!Request.IsAuthenticated)
                {
                    Response.Redirect("login.aspx");
                }
                MembershipUser men = Membership.GetUser(User.Identity.Name);
                if (men != null)
                {
                    string mu = Membership.GetUser(User.Identity.Name).ToString();
                    //txtname.Text = mu;
                    string tre = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(tre))
                    {
                        SqlCommand com = new SqlCommand("select name,age,email,contact,address from biodata where username= +('" + mu + "')", con);
                        con.Open();
                        SqlDataReader read = com.ExecuteReader();

                        while (read.Read())
                        {
                            txtname.Text += read["name"].ToString();
                            txtage.Text += read["age"].ToString();
                            txtemail.Text += read["email"].ToString();
                            txtcontact.Text += read["contact"].ToString();
                            txtadd.Text += read["address"].ToString();
                            //message.Text += "<br/>";

                        }
                        //string userid = men.ProviderUserKey.ToString();
                        //txtid.Text = userid;
                    }

                    Calendar1.Visible = false;
                    txtdate.Text = Calendar1.TodaysDate.ToString("d");


                    //bind time
                    torchi();
                    dropdoen();
                }

            }
        }
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {

            if (e.Day.Date.CompareTo(DateTime.Today) < 0 || e.Day.IsWeekend)
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = System.Drawing.Color.GhostWhite;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtdate.Text = Calendar1.SelectedDate.ToString("d");

            Calendar1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Calendar1.Visible)
            { Calendar1.Visible = false; }
            else { Calendar1.Visible = true; }
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
        public void torchi()
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

        protected void btnbook_Click(object sender, EventArgs e)
        {
            if ( txtname.Text != "" && txtage.Text != "" && txtemail.Text != "" && Ddltime.SelectedValue != "" && txtcontact.Text != "" && txtdate.Text != "" && txtadd.Text != "" && Ddlservice.SelectedValue != "" && txtdoc.Text != "" && txthos.Text != "")
            {
                string yes = "No";
                HttpPostedFile postedFile = FileUpload1.PostedFile;
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                //if (filename != "")
                //{
                    string contentType = FileUpload1.PostedFile.ContentType;
                    using (Stream fs = FileUpload1.PostedFile.InputStream)
                    {
                        using (BinaryReader br = new BinaryReader(fs))
                        {
                            byte[] bytes = br.ReadBytes((Int32)fs.Length);
                            string cs = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                            using (SqlConnection com = new SqlConnection(cs))
                            {// stored procedure name
                                
                                SqlCommand cam = new SqlCommand("savereferral", com);
                                // declare command type as a stored procedure
                                cam.CommandType = CommandType.StoredProcedure;
                                //adding parameter to sqlcommand below
                                cam.Parameters.AddWithValue("@name", txtname.Text.ToString());
                                cam.Parameters.AddWithValue("@age", txtage.Text.ToString());
                                cam.Parameters.AddWithValue("@email", txtemail.Text.ToString());
                                cam.Parameters.AddWithValue("@time", Ddltime.SelectedItem.ToString());
                                cam.Parameters.AddWithValue("@contact", txtcontact.Text.ToString());
                            cam.Parameters.AddWithValue("@addrress", txtadd.Text.ToString());
                                cam.Parameters.AddWithValue("@date", txtdate.Text.ToString());
                            cam.Parameters.AddWithValue("@service", Ddlservice.SelectedItem.ToString());
                                cam.Parameters.AddWithValue("@doctor", txtdoc.Text.ToString());
                            cam.Parameters.AddWithValue("@fileName", SqlDbType.NVarChar).Value = filename; 
                                cam.Parameters.AddWithValue("@contentType", SqlDbType.NVarChar).Value = contentType;
                                cam.Parameters.AddWithValue("@data",SqlDbType.VarBinary).Value = bytes;
                                cam.Parameters.AddWithValue("@hospital", txthos.Text.ToString());
                            cam.Parameters.AddWithValue("@doneTest", SqlDbType.NVarChar).Value = yes;
                            cam.Parameters.AddWithValue("@specimen", SqlDbType.NVarChar).Value = yes;
                            cam.Parameters.AddWithValue("@result", SqlDbType.NVarChar).Value = yes; ;
                            SqlParameter paramId = new SqlParameter()
                                {
                                    ParameterName = "@referralId",
                                    Value = -1,
                                    Direction = ParameterDirection.Output
                                };
                                cam.Parameters.Add(paramId);

                                com.Open();
                                cam.ExecuteNonQuery();


                            }
                        }
                    }


                    Application["username"] = txtname.Text;
                    Application["email"] = txtemail.Text;
                    Application["contact"] = txtcontact.Text;
                    Application["date"] = txtdate.Text;
                    Application["time"] = Ddltime.SelectedItem;
                    Application["doctor"] = txtdoc.Text;
                    Application["hospital"] = txthos.Text;
                    Response.Redirect("print.aspx");

                //}
                //else {
                //    lblmsg.Text = "please select a file";
                //    lblmsg.ForeColor = Color.Red;
                //}
               
            }
            else
            {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = " All fields are Mandatory";
           }
            



            txtname.Text = string.Empty;
            txtcontact.Text = string.Empty;
            txtage.Text = string.Empty;
            txthos.Text = string.Empty;
            txtdoc.Text = string.Empty;
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("appoint.aspx");
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
    }
}