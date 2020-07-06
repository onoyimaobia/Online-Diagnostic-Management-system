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
    public partial class signup : System.Web.UI.Page
    {
        //private object MemebershipCreateStatus;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                dropdoen();
                
            }

        }


        protected void Btncreate_Click(object sender, EventArgs e) 
        {
            if (Page.IsValid)
            {
                MembershipCreateStatus CreateStatus;
                string sUserName = txtusername.Text;
                string sPassword = txtpassword.Text;
                string sEmail = txtemail.Text;
             
                   
                Membership.CreateUser(HttpUtility.HtmlEncode(sUserName.Trim()),
                    HttpUtility.HtmlEncode(sPassword.Trim()),
                    HttpUtility.HtmlEncode(sEmail.Trim()),
                    null,
                    null,
                    true,
                    out CreateStatus
                    );
                
                if(CreateStatus.ToString() == "Success")
                {
                    if (txtname.Text != "" && txtage.Text != "" && txtemail.Text != "" && txtaddress.Text != "" && txtcontact.Text != "" && Ddlsex.SelectedValue != "" && Ddlblood.SelectedValue != "" && Ddlgenotype.SelectedValue != "" && txtusername.Text != "" && txtpassword.Text != "" && txtconfirm.Text != "")
                    {
                        if (txtpassword.Text == txtconfirm.Text)
                        {
                            string cs = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                            using (SqlConnection conn = new SqlConnection(cs))
                            {
                                SqlCommand com = new SqlCommand("insert into biodata (name,age,email,address,contact,sexid,bloodid,genotypeid,username,password) values('" + txtname.Text + "','" + txtage.Text + "','" + txtemail.Text + "','" + txtaddress.Text + "','" + txtcontact.Text + "','" + Ddlsex.SelectedValue + "','" + Ddlblood.SelectedValue + "','" + Ddlgenotype.SelectedValue + "','" + txtusername.Text + "','" + txtpassword.Text + "')", conn);
                                conn.Open();
                                com.ExecuteNonQuery();
                                Application["name"] = txtname.Text;
                                Application["contact"] = txtcontact.Text;
                                Application["email"] = txtemail.Text;
                                Application["sex"] = Ddlsex.SelectedItem;
                                Application["blood"] = Ddlblood.SelectedItem;
                                Application["genotype"] = Ddlgenotype.SelectedItem;
                                Application["age"] = txtage.Text;
                                Application["address"] = txtaddress.Text;
                               
                                Response.Redirect("profile.aspx");
                               // Response.Redirect("login.aspx");
                            }
                        }

                        else
                        {
                            lblmsg.ForeColor = Color.Red;
                            lblmsg.Text = "Both password do not match";
                        }

                    }
                    else
                    {
                        lblmsg.ForeColor = Color.Red;
                        lblmsg.Text = " All fields are Mandatory";
                    }
                }
               
            }

           /* if (txtname.Text !="" & txtage.Text !="" && txtemail.Text != "" && txtaddress.Text !="" && txtcontact.Text !="" && Ddlsex.SelectedValue != "" && Ddlblood.SelectedValue != "" && Ddlgenotype.SelectedValue != "" && txtusername.Text != "" && txtpassword.Text != "" && txtconfirm.Text != "")
            {
                if (txtpassword.Text == txtconfirm.Text)
                {
                    string cs = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(cs))
                    {
                        SqlCommand com = new SqlCommand("insert into biodata (name,age,email,address,contact,sexid,bloodid,genotypeid,username,password) values('"+ txtname.Text + "','" + txtage.Text + "','" + txtemail.Text + "','" + txtaddress.Text + "','" + txtcontact.Text + "','" + Ddlsex.SelectedValue + "','" + Ddlblood.SelectedValue + "','" + Ddlgenotype.SelectedValue + "','" + txtusername.Text + "','" + txtpassword.Text + "')", conn);
                        conn.Open();
                        com.ExecuteNonQuery();
                        Response.Redirect("login.aspx");
                    }
                }

                else
                {
                    lblmsg.ForeColor = Color.Red;
                    lblmsg.Text = "Both password do not match";
                }
            
            }
        else {
                lblmsg.ForeColor = Color.Red;
                lblmsg.Text = " All fields are Mandatory";
            */
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
            string command3 = "select * from blood";
            string command1 = "Select * from sex";
            string comman2 = "select * from genotype";
            //string command4 = "select * from marital";
            //string command6 = "select * from autonomous";
            //DataSet ds1 = populatedropdown(command0);
            DataSet ds2 = populatedropdown(command1);
            DataSet ds3 = populatedropdown(comman2);
            DataSet ds4 = populatedropdown(command3);
            //DataSet ds5 = populatedropdown(command4);
            //DataSet ds0 = populatedropdown(command6);
            Ddlsex.Items.Clear();
            Ddlgenotype.Items.Clear();
            //Ddlmarital.Items.Clear();
            Ddlgenotype.Items.Add(new ListItem("Select genotype", ""));
            Ddlsex.Items.Add(new ListItem("Select sex", ""));
            if (ds2 != null && ds2.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                {
                    string sexname = Convert.ToString(ds2.Tables[0].Rows[i]["name"]);
                    string sexid = Convert.ToString(ds2.Tables[0].Rows[i]["sexid"]);
                    Ddlsex.Items.Add(new ListItem(sexname, sexid));
                }
            }
            if (ds3 != null && ds3.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds3.Tables[0].Rows.Count; i++)
                {
                    string genotypename = Convert.ToString(ds3.Tables[0].Rows[i]["name"]);
                    string genotypeid = Convert.ToString(ds3.Tables[0].Rows[i]["genotypeid"]);
                    Ddlgenotype.Items.Add(new ListItem(genotypename, genotypeid));

                }
            }
            Ddlblood.Items.Add(new ListItem("Select blood", ""));
            if (ds4 != null && ds4.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds4.Tables[0].Rows.Count; i++)
                {
                    string bloodname = Convert.ToString(ds4.Tables[0].Rows[i]["name"]);
                    string bloodid = Convert.ToString(ds4.Tables[0].Rows[i]["bloodid"]);
                    Ddlblood.Items.Add(new ListItem(bloodname, bloodid));
                }
            }
        }

        protected void txtpassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}