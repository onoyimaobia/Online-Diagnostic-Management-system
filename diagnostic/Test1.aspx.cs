using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
namespace diagnostic
{
    public partial class Test1 : System.Web.UI.Page
    {
        DataSet dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(!Request.IsAuthenticated)
                {
                    Response.Redirect("login.aspx");
                }
                this.BindGrid();

                string too = ConfigurationManager.ConnectionStrings["0"].ConnectionString;
                using (SqlConnection con = new SqlConnection(too))
                {
                    SqlCommand com = new SqlCommand("select id,TestName,Price from test", con);
                    SqlDataAdapter dr = new SqlDataAdapter(com);
                    DataSet ds = new DataSet();
                    dr.Fill(ds);
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    ViewState["uka"] = ds;
                    
                    dt = ds;
                   
                }
                
            }
           
        }
      
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = GridView1.SelectedRow.RowIndex;
            string id = GridView1.SelectedRow.Cells[0].Text;
            string TestName = GridView1.SelectedRow.Cells[1].Text;
            string Price = GridView1.SelectedRow.Cells[1].Text;
            string message = "Row Index: " + index + "\\nid: " + id + "\\nTestNmae: " + TestName + "\\nPrice:" +Price;
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);

        }

        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        e.Row.Attributes.Add("onmouseover", "this.style.cursor='pointer';this.style.textDecoration='underline';");
        //        e.Row.Attributes.Add("onmouseout", "this.style.textDecoration='none';");
        //        e.Row.ToolTip = "click to select row";
        //        e.Row.Attributes.Add("onclick",this.Page.ClientScript.GetPostBackClientHyperlink(this.GridView1,"Select$" + e.Row.RowIndex));
        //        e.Row.Cells[0].Text = Regex.Replace(e.Row.Cells[0].Text, txtsearch.Text.Trim(), delegate (Match match)
        //        {
        //            return string.Format("<span style = 'background-color:#D9EDF7'>{0}</span>", match.Value);
        //        }, RegexOptions.IgnoreCase);
        //        //e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
        //        //e.Row.Attributes["style"] = "cursor:pointer";
        //    }
        //}

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
                    cmd.CommandText = "SELECT * FROM test WHERE TestName LIKE '%' + @TestName + '%'";
                    cmd.Connection = con;
                    cmd.Parameters.AddWithValue("@TestName", txtsearch.Text.Trim());
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

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
           

            //List<int> list = new List<int>();

            //if (ViewState["selectedRows"] != null)
            //{ list = (List<int>)ViewState["selectedRows"]; }

            //foreach(GridViewRow row in GridView1.Rows)
            //{
            //    CheckBox chk = (CheckBox)row.FindControl("chkbd");
            //    var selectedkey = int.Parse(GridView1.DataKeys[row.RowIndex].Value.ToString());
            //    if(chk.Checked)
            //    {
            //        if(!list.Contains(selectedkey))
            //        { list.Add(selectedkey); }

            //    }
            //    else
            //    {
            //        if(list.Contains(selectedkey))
            //        { list.Remove(selectedkey); }
            //    }
            //}
            //ViewState["selectedRows"] = list;
            GridView1.PageIndex = e.NewPageIndex;
            this.BindGrid();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            { var cb = row.FindControl("cbAdd") as CheckBox;
            if(cb !=null)
                { cb.Checked = false; }    
                        }
        }



        protected void btnadd_Click(object sender, EventArgs e)
        {
            // creation of data table
           // List<int> list = ViewState["selectedRows"] as List<int>;
            //if (list != null)
            //{
               // foreach (int id in list)
               // {
                    

                    //Response.Write(id.ToString() + "<br/>"); 
                    DataTable dtgetselectedRecords = new DataTable();
                     dtgetselectedRecords.Columns.AddRange(new DataColumn[2] { new DataColumn("TestName"), new DataColumn("Price") });
                    foreach (GridViewRow gvrow in GridView1.Rows)
                    //{

                      if (gvrow.RowType == DataControlRowType.DataRow)
                       {
                            CheckBox chkbd = (gvrow.Cells[0].FindControl("chkbd") as CheckBox);
                            if (chkbd.Checked)
                          { 
                   
                    //string TestName = Convert.ToString( dt.Tables[0].Rows[id]["TestName"]);
                        string TestName = gvrow.Cells[2].Text;
                        string Price = gvrow.Cells[3].Text;
                        //string Price = Convert.ToString( dt.Tables[0].Rows[id]["Price"]);
                        dtgetselectedRecords.Rows.Add(TestName, Price);
                          }
                    //    }
                       else { ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('please select a row.')", true); }
                    }


                    Session.Add("dtgetselectedRecords", dtgetselectedRecords);
                    Server.Transfer("~/text.aspx");

               // }
                
          //  }
            
        
            /* if (GridView1.SelectedRow != null)
             {
                 Server.Transfer("~/text.aspx");
             }
             else { ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('please select a row.')", true); }*/
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            List<int> list = ViewState["selectedrows"] as List<int>;
            if (e.Row.RowType == DataControlRowType.DataRow && list != null)
            {
                var id = int.Parse(GridView1.DataKeys[e.Row.RowIndex].Value.ToString());
                if (list.Contains(id))
                {
                    CheckBox chk = (CheckBox)e.Row.FindControl("chkbd");
                    chk.Checked = true;
                    }
                }
            }
    }
}