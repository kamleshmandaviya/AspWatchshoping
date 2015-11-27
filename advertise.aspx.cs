using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class advertise : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i, video_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        Downloader1.FilePath = Request.MapPath("~/video/");
        q = "select * from video_detail";
        dt = con.fetch_data(q);
        if (dt.Rows.Count != 0)
        {
            for (i = 0; i < dt.Rows.Count; i++)
            {
                ASPNetFlashVideo.FlashVideo fv1 = new ASPNetFlashVideo.FlashVideo();
                fv1.VideoURL = dt.Rows[i][1].ToString();
                fv1.Height = 100;
                fv1.Width = 130;
                fv1.ShowControlPanel = false;
                fv1.AutoPlay = false;
                Panel1.Controls.Add(fv1);
                LinkButton lbt1 = new LinkButton();
                lbt1.Text = "Play";
                lbt1.Width = 130;
                lbt1.ForeColor = System.Drawing.Color.White;
                lbt1.CssClass = "linkbutton";
                lbt1.PostBackUrl = "~/advertise.aspx?video_path=" + con.EncodeString(dt.Rows[i][1].ToString());
                Panel1.Controls.Add(lbt1);
                Label lbl1 = new Label();
                lbl1.Text = "";
                lbl1.Width = 130;
                lbl1.Height = 20;
                lbl1.ForeColor = System.Drawing.Color.White;
                Panel1.Controls.Add(lbl1);
                Panel1.ScrollBars = System.Web.UI.WebControls.ScrollBars.Auto;
            }
        }
        if (Request["video_path"] != null)
        {
            FlashVideo1.VideoURL = con.DecodeString(Request["video_path"].ToString());
            lbtdownload.Visible = true;
            Downloader1.FilePath = Request.MapPath(con.DecodeString(Request["video_path"].ToString()));
        }
    }
}
