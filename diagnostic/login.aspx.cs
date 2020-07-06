using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Web.Security;
namespace diagnostic
{
    public partial class login : System.Web.UI.Page
    {
        public static int userid { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            /*if(Request.Cookies["UNAME"] !=null && Request.Cookies["PSWD"] != null)
            { TextBoxusername.Text = Request.Cookies["UNAME"].Value;
                TextBoxpassword.Attributes["value"] = Request.Cookies["PSWD"].Value;
                CheckBox1.Checked = true;
            }*/
            
        }

        protected void Buttonlogin_Click(object sender, EventArgs e)
        {
            //string cs = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            //using (SqlConnection conn = new SqlConnection(cs))

            //{
            //    SqlCommand com = new SqlCommand("select * from biodata where username = @username and password = @password", conn);
            //    com.CommandType = System.Data.CommandType.StoredProcedure;
            //    com.Parameters.AddWithValue("@username", TextBoxusername.Text);
            //    com.Parameters.AddWithValue("@password", TextBoxpassword.Text);
            //    conn.Open();
            //    try
            //    {
            //        SqlDataAdapter ad = new SqlDataAdapter(com);
            //        DataSet ds = new DataSet();
            //        ad.Fill(ds);
            //        int count = 0;
            //        count = ds.Tables[0].Rows.Count;
            //        if(count == 1)
            //        {
            //            string a = TextBoxusername.Text;
            //            string[] username = a.Split('@');
            //            string fname = username[0];
            //            username = fname.Split('.');
            //            Session["fname"] = username[0];
            //            FormsAuthentication.RedirectFromLoginPage(TextBoxusername.Text, true);
            //            Response.Redirect("~/home.aspx");
            //        }
            //    }
            //    catch (Exception ex)
            //    {
            //        throw ex;
            //    }
            //}

                if (Membership.ValidateUser(TextBoxusername.Text, TextBoxpassword.Text))
                {

                    FormsAuthentication.SetAuthCookie(TextBoxusername.Text, true);
                Response.Redirect("Home.aspx");

                }
                else
                {
                    lblmessage.ForeColor = Color.Red;
                    lblmessage.Text = "username or password  is incorrect";
                }

                /* if (TextBoxusername.Text != "" & TextBoxpassword.Text != "")
                 { Response.Write("we are good");
                     try
                     {
                         DataSet ds = new DataSet();

                         string cs = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                         using (SqlConnection conn = new SqlConnection(cs))

                         {
                           SqlCommand com = new SqlCommand("select * from biodata where username ='"+TextBoxusername.Text+"' and password='"+TextBoxpassword.Text+"'", conn);
                             conn.Open();
                             SqlDataAdapter ad = new SqlDataAdapter(com);
                             ad.Fill(ds);
                             if (ds.Tables[0].Rows.Count != 0)
                             {
                                 string usernumber = ds.Tables[0].Rows[0]["id"].ToString();
                                 userid = Int32.Parse(usernumber);
                                 if (CheckBox1.Checked)
                                 {
                                     Response.Cookies["UNAME"].Value = TextBoxusername.Text;
                                     Response.Cookies["PSWD"].Value = TextBoxpassword.Text;

                                     Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(20);
                                     Response.Cookies["PSWD"].Expires = DateTime.Now.AddDays(20);

                                 }
                                 else { Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                                     Response.Cookies["PSWD"].Expires = DateTime.Now.AddDays(-1);
                                 }
                                 Session["USERNAME"] = TextBoxusername.Text;

                                 Response.Redirect("Home.aspx");
                             }
                             else
                             {
                                 lblmessage.ForeColor = Color.Red;
                                 lblmessage.Text = "username or password  is incorrect";
                             }

                         }

                     }


                     catch (Exception ex)
                     {
                         throw ex;
                     }
                 }
                 else {
                     lblmessage.ForeColor = Color.Red;
                     lblmessage.Text = "All field are mandatory"; }*/
            }
    }
}