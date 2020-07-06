using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.xml;
using iTextSharp.text.html.simpleparser;
using System.IO;

namespace diagnostic
{
    public partial class print1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { if (!Page.IsPostBack)
            {  
                
                    lblname.Text = Application["name"].ToString();
                    lblemail.Text = Application["email"].ToString();
                    lblcontact.Text = Application["contact"].ToString();
                    lbldate.Text = Application["date"].ToString();
                    lbltime.Text = Application["time"].ToString();
                    lblservice.Text = Application["service"].ToString();
                    lbldoc.Text = Application["test"].ToString();
                    lblhos.Text = Application["cost"].ToString();
                    lbladdress.Text = Application["address"].ToString();
                
        }
    }

        protected void btndownload_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Appointment Detail.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            hw.AddStyleAttribute("font-size", "15pt");
            hw.AddStyleAttribute("TEXT-ALIGN", "CENTER");
            hw.AddStyleAttribute("COLOR", "RED");
            pnldetail.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Rectangle r = new Rectangle(400, 300);
            r.BackgroundColor = new BaseColor(System.Drawing.Color.Blue);
            Document pdfdoc = new Document(r);
              pdfdoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            FontFactory.GetFont("Verdana", 100, iTextSharp.text.BaseColor.GREEN);
            //PageSize.PENGUIN_LARGE_PAPERBACK.BackgroundColor = iTextSharp.text.BaseColor.BLUE;
           // pdfdoc.PageSize.BackgroundColor = iTextSharp.text.BaseColor.BLUE;
            // var pagesize = new iTextSharp.text.Rectangle(iTextSharp.text.PageSize.A4);
            //pagesize.BackgroundColor = iTextSharp.text.BaseColor.BLUE;
            HTMLWorker htmlparser = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparser.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc); Response.End();
        }

        protected void btnleave_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");

        }
    }
}