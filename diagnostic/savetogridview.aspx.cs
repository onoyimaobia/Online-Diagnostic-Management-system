using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace diagnostic
{
    public partial class savetogridview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                bindData();
            }
        }
        private void bindData()
        {
           
            string too = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection con = new SqlConnection(too))
            {
               
            
                SqlCommand com = new SqlCommand("select * from print1", con);
                con.Open();
                GridView1.DataSource = com.ExecuteReader();
                GridView1.DataBind();

            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bindData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //foreach (GridViewRow row in GridView1.Rows)
            //{
            //GridViewRow row = GridView1.Rows[e.RowIndex];
            //if(row.RowType == DataControlRowType.DataRow)
                //{ 
                //TextBox uk = (TextBox)row.FindControl("txtdone");
                int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                    //var name = row.Cells[10].Controls[0].FindControl("txtdone") as TextBox;

                TextBox txtdone = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdone");
            TextBox txtspecimen = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtspecimen");
            TextBox txtresult = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtresult");
                string too = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                using (SqlConnection con = new SqlConnection(too))
                {
                
                    SqlCommand com = new SqlCommand();
                    com.CommandText = "update print1 set ptDoneTest ='" +txtdone.Text+ "',specimen ='" + txtspecimen.Text + "',result ='" + txtresult.Text + "' where appointId =" + id;
                    com.Connection = con;
                    //com.Parameters.AddWithValue("@ptDoneTest", txtdone);
                    con.Open();
                    com.ExecuteNonQuery();
                }
                GridView1.EditIndex = -1;
                this.bindData();
               // }
         // }
        }
       
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bindData();
        }

        protected void search_Click(object sender, EventArgs e)
        {
            this.BindGrid();
        }
        
              private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM print1 WHERE ptName LIKE '%' + @ptName + '%'";
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@ptName", txtsearch.Text.Trim());
                    DataSet dt = new DataSet();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        
    }

        protected void searchphone_Click(object sender, EventArgs e)
        {
            this.BindGridcontact();
        }
        private void BindGridcontact()
        {
            string constr = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM print1 WHERE ptContact LIKE '%' + @ptContact + '%'";
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@ptContact", txtsearchphone.Text.Trim());
                    DataSet dt = new DataSet();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }

        }
        protected void searchemail_Click(object sender, EventArgs e)
        {
            this.BindGridemail();
        }
        private void BindGridemail()
        {
            string constr = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM print1 WHERE ptEmail LIKE '%' + @ptEmail + '%'";
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@ptEmail", txtserachemail.Text.Trim());
                    DataSet dt = new DataSet();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            

        }
    }

    }
}