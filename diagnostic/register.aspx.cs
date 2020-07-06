using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace diagnostic
{
    public partial class register : System.Web.UI.Page
    {
        private CommandType commandt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bindData();
            }
        }
        private void bindData()
        {

            string too = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection con = new SqlConnection(too))
            {


                SqlCommand com = new SqlCommand("select id,name,age,email,contact,address from biodata", con);
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

                TextBox txtname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtname");
            TextBox txtage = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtage");
            TextBox txtemail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtemail");
            TextBox txtcontact = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtcontact");
            TextBox txtaddress = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtaddress");
            string too = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                using (SqlConnection con = new SqlConnection(too))
                {
                
                    SqlCommand com = new SqlCommand();
                    com.CommandText = "update biodata set name ='" +txtname.Text+ "',age ='" + txtage.Text + "',email ='" + txtemail.Text + "',contact ='" + txtcontact.Text + "',address ='" + txtaddress.Text + "' where id =" + id;
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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lblId = (Label)row.FindControl("lblId");
            string too = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection con = new SqlConnection(too))
            {
                SqlCommand com = new SqlCommand("delete from biodata where id=" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "", con);
                com.ExecuteNonQuery();
                bindData();
            }

            }
        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM biodata WHERE name LIKE '%' + @name + '%'";
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

        }

        protected void searchemail_Click(object sender, EventArgs e)
        {

        }

        protected void search_Click(object sender, EventArgs e)
        {

        }

        //protected void lnkremove_Click(object sender, EventArgs e)
        //{
        //    LinkButton lnkremove = (LinkButton)sender;
        //    string too = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(too))
        //    {
        //        SqlCommand cmd = new SqlCommand();
        //        cmd.CommandType = CommandType.Text;
        //        cmd.CommandText = "delete from biodata where ";
        //    }
        //    }
    }
}