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
    public partial class symptom : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
        SqlCommand uka;
        string afu;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //if (!Request.IsAuthenticated)
                //{
                //    Response.Redirect("login.aspx");
                //}
                txtfirst.Text = "";
               
                DataSet ds = new DataSet();
                 ds = bindcheckbox();
                if (ds.Tables[0].Rows.Count != 0)
                {
                    chkbl3.DataSource = ds;
                    
                    chkbl3.DataTextField = "symptoms";
                    chkbl3.DataValueField = "id";
                    chkbl3.DataBind();
                }

               
                }
        }
        private DataSet bindcheckbox()
        {
            DataSet ds = new DataSet();
            string cs = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                try
                {

                    SqlCommand com = new SqlCommand("Select * from symptom ", con);
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter(com);
                    da.Fill(ds);
                    return ds;
                }
                catch (Exception ex)
                {
                    throw ex;
                }

            
        }
    }
        protected void chkbl1_SelectedIndexChanged(object sender, EventArgs e)
        { }

        protected void buttonok_Click(object sender, EventArgs e)
        {
            txtfirst.Text = "you are welcome";
          
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            
            List<string> itemvalues = new List<string>();

            foreach(ListItem Item in chkbl3.Items )
            {
                if(Item.Selected)
                {
                    itemvalues.Add(Item.Value);
                    
                }
            }
           if(itemvalues.Count !=4)
            { 
                txtfirst.Text = "you selected more than four symptoms";
                txtsecond.Text = "Or you selected less than four symptoms";
            }
                //string myitems = String.Join(";", itemvalues.ToArray());
                //txtfirst.Text = myitems;
                else { 
                if (itemvalues.Contains("1") && itemvalues.Contains("2") && itemvalues.Contains("3") && itemvalues.Contains("4"))
            {
                string too = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                using (SqlConnection con = new SqlConnection(too))
                {
                    SqlCommand com = new SqlCommand("select Disease from disease where id = 1", con);
                    con.Open();
                    SqlDataReader reader = com.ExecuteReader();
                    if (reader.Read())
                    {
                        txtfirst.Text = reader["Disease"].ToString();
                    }
                   
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (disease.Drug1+', '+disease.Drug2+', '+disease.Drug3+', '+disease.Drug4) as Drug from disease where id = 1";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtsecond.Text = reader["Drug"].ToString();
                        //txtsecond.Text = reader["Drug2"].ToString();
                        //txtsecond.Text = reader["Drug3"].ToString();
                        //txtsecond.Text = reader["Drug4"].ToString();
                    }
                }
                using (SqlConnection con = new SqlConnection(cs))
                {
                    con.Open();
                    afu = "select (test1 +' ,'+ test2+' ,'+ test3) AS TestName from suggested where test_id = 1";
                    uka = new SqlCommand(afu, con);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read()) { txtthird.Text = reader["TestName"].ToString(); }

                }



                    txtcost.Text = "3400.00";
            }
            else if (itemvalues.Contains("1") && itemvalues.Contains("3") && itemvalues.Contains("5") && itemvalues.Contains("6"))
            {
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select Disease from disease where id = 2";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtfirst.Text = reader["Disease"].ToString();
                      }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (disease.Drug1+', '+disease.Drug2+', '+disease.Drug3) as Drug from disease where id = 2";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtsecond.Text = reader["Drug"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (test1 +' ,'+ test2+' ,'+ test3) AS TestName from suggested where test_id = 2";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtthird.Text = reader["TestName"].ToString();
                    }
                }
                    txtcost.Text = "5600.00";
            }
            else if (itemvalues.Contains("7") && itemvalues.Contains("8") && itemvalues.Contains("9") && itemvalues.Contains("10"))
            {
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select Disease from disease where id = 3";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtfirst.Text = reader["Disease"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (disease.Drug1+', '+disease.Drug2+', '+disease.Drug3+' ,'+Drug4 ) as Drug from disease where id = 3";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtsecond.Text = reader["Drug"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (test1 +' ,'+ test2+' ,'+ test3+','+test4) AS TestName from suggested where test_id = 3";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtthird.Text = reader["TestName"].ToString();
                    }
                }
                    txtcost.Text = "11500.00";
            }
            else if (itemvalues.Contains("15") && itemvalues.Contains("16") && itemvalues.Contains("17") && itemvalues.Contains("18"))
            {
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select Disease from disease where id = 4";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtfirst.Text = reader["Disease"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (disease.Drug1+', '+disease.Drug2+', '+disease.Drug3+' ,'+Drug4 ) as Drug from disease where id = 4";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtsecond.Text = reader["Drug"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (test1 +' ,'+ test2+' ,'+ test3+','+test4+') AS TestName from suggested where test_id = 13";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtthird.Text = reader["TestName"].ToString();
                    }
                }
                    txtcost.Text = "8900.00";
            }
            else if (itemvalues.Contains("11") && itemvalues.Contains("12") && itemvalues.Contains("13") && itemvalues.Contains("14"))
            {
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select Disease from disease where id = 5";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtfirst.Text = reader["Disease"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (disease.Drug1+', '+disease.Drug2+', '+disease.Drug3+' ,'+Drug4 ) as Drug from disease where id = 5";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtsecond.Text = reader["Drug"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (test1 +' ,'+ test2+' ,'+ test3+','+test4+','+test6) AS TestName from suggested where test_id = 4";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtthird.Text = reader["TestName"].ToString();
                    }
                }
                    txtcost.Text = " 15300.00";
            }
            else if (itemvalues.Contains("20") && itemvalues.Contains("21") && itemvalues.Contains("22") && itemvalues.Contains("11"))
            {
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select Disease from disease where id = 17";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtfirst.Text = reader["Disease"].ToString();
                    }
                }
               
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (test1 +' ,'+ test2+) AS TestName from suggested where test_id = 21";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtthird.Text = reader["TestName"].ToString();
                    }
                }
                txtcost.Text = "3000.00";
            }
            else if (itemvalues.Contains("19") && itemvalues.Contains("23") && itemvalues.Contains("7") && itemvalues.Contains("8"))
            {
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select Disease from disease where id = 15";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtfirst.Text = reader["Disease"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (disease.Drug1+', '+disease.Drug2+', '+disease.Drug3+' ,'+Drug4 ) as Drug from disease where id = 15";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtsecond.Text = reader["Drug"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (test1 +' ,'+ test2+' ,'+ test3) AS TestName from suggested where test_id = 19";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtthird.Text = reader["TestName"].ToString();
                    }
                }
                    txtcost.Text = "11000.00";
            }
            else if (itemvalues.Contains("4") && itemvalues.Contains("20") && itemvalues.Contains("7") && itemvalues.Contains("25"))
            {
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select Disease from disease where id = 9";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtfirst.Text = reader["Disease"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (disease.Drug1+', '+disease.Drug2+', '+disease.Drug3+' ,'+Drug4 ) as Drug from disease where id = 9";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtsecond.Text = reader["Drug"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (test1 +' ,'+ test2+' ,'+ test3+', '+test4+ ,'+test6) AS TestName from suggested where test_id = 5";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtthird.Text = reader["TestName"].ToString();
                    }
                }
                    txtcost.Text = "8000.00";
            }
            else if (itemvalues.Contains("4") && itemvalues.Contains("24") && itemvalues.Contains("26") && itemvalues.Contains("5"))
            {
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select Disease from disease where id = 14";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtfirst.Text = reader["Disease"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (disease.Drug1+', '+disease.Drug2+', '+disease.Drug3+' ,'+Drug4 ) as Drug from disease where id = 14";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtsecond.Text = reader["Drug"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (test1 +' ,'+ test2+' ,'+ test3+' ,'+test4) AS TestName from suggested where test_id = 20";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtthird.Text = reader["TestName"].ToString();
                    }
                }
                    txtcost.Text = "6200.00";
            }
            else if (itemvalues.Contains("1") && itemvalues.Contains("4") && itemvalues.Contains("5") && itemvalues.Contains("6"))
            {
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select disease.Disease,suggested.Disease from disease,suggested where id = 1 AND test_id = 2";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtfirst.Text = reader["Disease"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (disease.Drug1+', '+disease.Drug2+', '+suggested.Drug1+' ,'+suggested.Drug2 ) as Drug from disease,suggested where id = 1 AND test_id = 2";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtsecond.Text = reader["Drug"].ToString();
                    }
                }
                using (SqlConnection co = new SqlConnection(cs))
                {
                    co.Open();
                    afu = "select (test1 +' ,'+ test2+' ,'+ test3) AS TestName from suggested where test_id = 19";
                    uka = new SqlCommand(afu, co);
                    SqlDataReader reader = uka.ExecuteReader();
                    if (reader.Read())
                    {
                        txtthird.Text = reader["TestName"].ToString();
                    }
                }
                    txtcost.Text = "11000.00";
            }
            else { txtfirst.Text = "Selected Symptoms Does Not Match Any Disease In The System";
                txtsecond.Text = "Kindly Book Appointment";
                  }
       }
            //string rose = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            //using (SqlConnection ro = new SqlConnection(rose))
            //{
            //    SqlCommand cor = new SqlCommand("select Price from test where TestName=" + txtthird.Text, ro);
            //    ro.Open();
            //    cor.ExecuteReader();
            //}
        }

        protected void btnrefresh_Click(object sender, EventArgs e)
        {
           for(int items = 0; items<chkbl3.Items.Count; items++)
            { chkbl3.ClearSelection(); }
        }


    protected void Btnyes_Click(object sender, EventArgs e)
        {

            txtfirst.Text = string.Empty; 
            txtsecond.Text = string.Empty;
            txtthird.Text = string.Empty;
            lblmsg.Text = string.Empty; 
            txtcost.Text = string.Empty;
        }

        protected void run_Click(object sender, EventArgs e)
        { if (txtthird.Text != "")
            { //Response.Redirect("symptomappointment.aspx?test=" + txtthird.Text);
                Session["test"] = txtthird.Text;
                Session["cost"] = txtcost.Text;
                Server.Transfer("~/symptomappointment.aspx");
                    }
            else
            {
               
                lblmsg.Text = "Suggested Test is empty";
            }
        }


        //chkbl3.DataTextField = "symptoms";
        //chkbl3.DataValueField = "id";
        //chkbl3.DataBind();
    }
         }



























         
            // string m = "MALARIA";
            // if (.Text == "Headache") { lblmsg.Text = "hi"; }

             //if (txtfirst.Text == "Headache" && txtsecond.Text == "HighFever" && txtthird.Text == "ProfuseSweating" && txtforth.Text == "vomitting")
             //{ lblmsg.Text = "Name of the disease: " + m; }
             //if ((txtfirst.Text == "Headache" && txtsecond.Text == "ProfuseSweating" && txtthird.Text == "vomitting" && txtforth.Text == "HighFever") || (txtfirst.Text == "Headache" && txtsecond.Text == "Vomitting" && txtthird.Text == "HighFever" && txtforth.Text == "ProfuseSweating") || (txtfirst.Text == "Headache" && txtsecond.Text == "HighFever" && txtthird.Text == "ProfuseSweating" && txtforth.Text == "Vomitting") || (txtfirst.Text == "Headache" && txtsecond.Text == "ProfuseSweating" && txtthird.Text == "HighFever" && txtforth.Text == "Vomitting") || (txtfirst.Text == "Headache" && txtsecond.Text == "Vomitting" && txtthird.Text == "ProfuseSweating" && txtforth.Text == "HighFever") || (txtfirst.Text == "Headache" && txtsecond.Text == "HighFever" && txtthird.Text == "Vomitting" && txtforth.Text == "ProfuseSweating"))
             //{ lblmsg.Text = "Name of the disease is malara"; }
             /* else if ((txtfirst.Text == "ProfuseSweating" || txtsecond.Text == "Vomitting" || txtthird.Text == "HighFever" || txtforth.Text == "Headache") && (txtfirst.Text == "ProfuseSweating" || txtsecond.Text == "HighFever" || txtthird.Text == "Headache" || txtforth.Text == "Vomitting") && (txtfirst.Text == "ProfuseSweating" || txtsecond.Text == "Headache" || txtthird.Text == "Vomitting" || txtforth.Text == "HighFever") && (txtfirst.Text == "ProfuseSweating" || txtsecond.Text == "HighFever" || txtthird.Text == "Vomitting" || txtforth.Text == "Headache") && (txtfirst.Text == "ProfuseSweating" || txtsecond.Text == "Vomitting" || txtthird.Text == "Headache" || txtforth.Text == "HighFever") && (txtfirst.Text == "ProfuseSweating" || txtsecond.Text == "Headache" || txtthird.Text == "HighFever" || txtforth.Text == "Vomitting"))
              { lblmsg.Text = "Name of the disease: " + m; }
              else if((txtfirst.Text == "Vomitting" || txtsecond.Text == "HighFever" || txtthird.Text == "Headache" || txtforth.Text == "ProfuseSweating") && (txtfirst.Text == "Vomitting" || txtsecond.Text == "Headache" || txtthird.Text == "ProfusingSweating" || txtforth.Text == "HighFever") && (txtfirst.Text == "Vomitting" || txtsecond.Text == "ProfuseSweating" || txtthird.Text == "HighFever" || txtforth.Text == "Headache") && (txtfirst.Text == "Vomitting" || txtsecond.Text == "ProfuseSweating" || txtthird.Text == "Headache" || txtforth.Text == "HighFever") && (txtfirst.Text == "Vomitting" || txtsecond.Text == "Headache" || txtthird.Text == "HighFever" || txtforth.Text == "ProfuseSweating") && (txtfirst.Text == "Vomitting" || txtsecond.Text == "HighFever" || txtthird.Text == "ProfuseSweating" || txtforth.Text == "Headache"))
              { lblmsg.Text = "Name of the disease: " + m; }
              else if((txtfirst.Text == "HighFever" || txtsecond.Text == "Headache" || txtthird.Text == "ProfuseSweating" || txtforth.Text == "Vomitting") && (txtfirst.Text == "HighFever" || txtsecond.Text == "ProfuseSweating" || txtthird.Text == "Vomitting" || txtforth.Text == "Headache") && (txtfirst.Text == "HighFever" || txtsecond.Text == "Vomitting" || txtthird.Text == "Headache" || txtforth.Text == "ProfuseSweating") && (txtfirst.Text == "HighFever" || txtsecond.Text == "Headache" || txtthird.Text == "Vomitting" || txtforth.Text == "ProfuseSweating") && (txtfirst.Text == "HighFever" || txtsecond.Text == "Vomitting" || txtthird.Text == "ProfuseSweating" || txtforth.Text == "Headache") && (txtfirst.Text == "HighFever" || txtsecond.Text == "ProfuseSweating" || txtthird.Text == "Headache" || txtforth.Text == "Vomitting"))
              { lblmsg.Text = "Name of the disease: " + m; }
              else { lblmsg.Text = " No result found,Kindly run a Test"; }

              if ((txtfirst.Text == "HighFever" || txtsecond.Text == "Headache" || txtthird.Text == "PoorAppetite" || txtforth.Text == "AbdominalPain") && (txtfirst.Text == "HighFever" || txtsecond.Text == "PoorAppetite" || txtthird.Text == "AbdominalPain" || txtforth.Text == "Headache") && (txtfirst.Text == "HighFever" || txtsecond.Text == "AbdominalPain" || txtthird.Text == "Headache" || txtforth.Text == "PoorAppetite") && (txtfirst.Text == "HighFever" || txtsecond.Text == "PoorAppetite" || txtthird.Text == "Headache" || txtforth.Text == "AbdominalPain") && (txtfirst.Text == "HighFever" || txtsecond.Text == "AbdominalPain" || txtthird.Text == "PoorAppetite" || txtforth.Text == "Headache") && (txtfirst.Text == "HighFever" || txtsecond.Text == "Headache" || txtthird.Text == "AbdominalPain" || txtforth.Text == "PoorAppetite"))
              { lblmsg.Text = "the diaseseis typhoid"; }*/
        // }

    

