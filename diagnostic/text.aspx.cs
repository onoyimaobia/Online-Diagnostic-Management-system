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
    public partial class text : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dtgetselectedRows = Session["dtgetselectedRecords"] as DataTable;
                xselected.DataSource = dtgetselectedRows;
                xselected.DataBind();
               
                /*if(this.Page.PreviousPage !=null)
                {
                    GridView GridView1 = (GridView)this.Page.PreviousPage.FindControl("GridView1");
                    GridViewRow selectedRow = GridView1.SelectedRow;
                    Response.Write("TestName:" + selectedRow.Cells[0].Text + "<br/>");
                    Response.Write("Price:" + selectedRow.Cells[1].Text + "<br/>");
                }*/
                /*string ktr, mtr;
                for(int k = 0; k < 12; k++)
                {
                    for(int m = 0; m < 60; m++)
                    {
                        if(k < 10)
                        { ktr = "0" + k.ToString(); }
                        else { ktr = k.ToString(); }
                        if(m < 10)
                        { mtr = "0" + m.ToString(); }
                        else { mtr = m.ToString(); }
                        ddltime.Items.Add(new ListItem(ktr + ":" + mtr));*/
                    }
                }

        protected void xselected_DataBound(object sender, EventArgs e)
        { 

        }
        decimal total;

        protected void xselected_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                total += Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Price"));
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[0].Text = "Total";
                e.Row.Cells[0].HorizontalAlign = HorizontalAlign.Right;
                e.Row.Cells[0].ForeColor = System.Drawing.Color.Sienna;

                e.Row.Cells[1].Text = total.ToString("N2");
                e.Row.Cells[1].Font.Bold = true;
            }
            }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            Response.Redirect("Test1.aspx");
        }
        decimal afu = 0;
        protected void btnsend_Click(object sender, EventArgs e)
        {
            // creation of data table
            DataTable toochi = new DataTable();
            toochi.Columns.AddRange(new DataColumn[1] { new DataColumn("TestName") });
            foreach (GridViewRow gvrow in xselected.Rows)
            {
                string TestName = gvrow.Cells[0].Text;
               
                toochi.Rows.Add(TestName);
            }

           for(int j= 0; j< xselected.Rows.Count; j++)
            { afu += Convert.ToDecimal(xselected.Rows[j].Cells[1].Text); }
            Session.Add("toochi", toochi);
            Session["Total"] = afu;

            Server.Transfer("~/appointment.aspx");
        }
    }


        //caculate sum and display in footer Row
        


        /* DateTime dtCurrentDate = DateTime.Today;
         DateTime dtCurrentTime = DateTime.Now;
         ListItem listitem1 = new ListItem(dtCurrentTime.ToShortTimeString(), dtCurrentTime.ToShortTimeString());
         listitem1.Enabled = listitem1.Selected = true;
         for (int i = 0; i <= 48; i++)
         {
             ListItem listitem2 = new ListItem(dtCurrentDate.ToShortDateString(), dtCurrentDate.ToShortDateString());
             listitem2.Selected = false;
             ddltime.Items.Add(listitem2);
             if (dtCurrentDate.CompareTo(dtCurrentTime) < 0 && dtCurrentDate.AddMinutes(30).CompareTo(dtCurrentTime) > 0)
                 ddltime.Items.Add(listitem1);
             dtCurrentDate = dtCurrentDate.AddMinutes(30);8?
         }*/






         /* string too = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
          using (SqlConnection con = new SqlConnection(too))
          {
              SqlCommand com = new SqlCommand("select * from test", con);
              con.Open();
              SqlDataAdapter dr = new SqlDataAdapter(com);
              DataSet ds = new DataSet();
              dr.Fill(ds);
              GridView1.DataSource = ds;
              GridView1.DataBind();
              //GridView2.DataSource = ds;
              //GridView2.DataBind();
          }*/
    }
        
    
