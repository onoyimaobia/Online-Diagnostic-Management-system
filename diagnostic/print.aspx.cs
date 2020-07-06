using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using System.Data;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf.draw;
namespace diagnostic
{
    public partial class print : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           if(Application["username"] != null)
            {
                lblname.Text = Application["username"].ToString();
                lblemail.Text = Application["email"].ToString();
                lblcontact.Text = Application["contact"].ToString();
                lbldate.Text = Application["date"].ToString();
                lbltime.Text = Application["time"].ToString();
                lbldoc.Text = Application["doctor"].ToString();
                lblhos.Text = Application["hospital"].ToString();
            }
        }

        protected void btndownload_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Panel.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            pnldetail.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            //PageSize.PENGUIN_LARGE_PAPERBACK.BackgroundColor = iTextSharp.text.BaseColor.BLUE;
            //pdfdoc.PageSize.BackgroundColor = iTextSharp.text.BaseColor.BLUE;
           // var pagesize = new iTextSharp.text.Rectangle(iTextSharp.text.PageSize.A4);
            //pagesize.BackgroundColor = iTextSharp.text.BaseColor.BLUE;
            HTMLWorker htmlparser = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparser.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);Response.End();
        }

        protected void btnleave_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}