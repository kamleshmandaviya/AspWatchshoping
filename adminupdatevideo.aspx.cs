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

public partial class adminupdatevideo1 : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i, video_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Downloader1.FilePath = Request.MapPath("~/video/");
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
                lbt1.PostBackUrl = "~/adminupdatevideo.aspx?video_path=" + dt.Rows[i][1].ToString();
                Panel1.Controls.Add(lbt1);
                Label lbl1 = new Label();
                lbl1.Text = "";
                lbl1.Width = 130;
                lbl1.Height = 5;
                lbl1.ForeColor = System.Drawing.Color.White;
                Panel1.Controls.Add(lbl1);
                LinkButton lbt2 = new LinkButton();
                lbt2.Text = "Delete it";
                lbt2.Width = 130;
                lbt2.ForeColor = System.Drawing.Color.White;
                lbt2.CssClass = "linkbutton";
                lbt2.PostBackUrl = "~/admindeletevideo.aspx?video_id=" + dt.Rows[i][0].ToString();
                Panel1.Controls.Add(lbt2);
                Label lbl2 = new Label();
                lbl2.Text = "";
                lbl2.Width = 130;
                lbl2.Height = 20;
                lbl2.ForeColor = System.Drawing.Color.White;
                Panel1.Controls.Add(lbl2);
                Panel1.ScrollBars = System.Web.UI.WebControls.ScrollBars.Auto;
            }
        }
        if (Request["video_path"] != null)
        {
            FlashVideo1.VideoURL = Request["video_path"].ToString();
          //  lbtdownload.Visible = true;
          //  Downloader1.FilePath = Request.MapPath(Request["video_path"].ToString());
        }
    }
    protected void AJAXUploader1_FileUploaded(object sender, EventArgs e)
    {
        String filename = AJAXUploader1.PostedFiles[0].FinalFileName;
        String[] array = filename.Split('\\');
        filename = array[array.LongLength - 1].ToString();
        q = "select max(video_id) from video_detail";
        dt = con.fetch_data(q);
        if (dt.Rows[0][0].ToString() == "")
        {
            video_id = 1001;
        }
        else
        {
            video_id = Convert.ToInt16(dt.Rows[0][0]) + 1;
        }
        q = "insert into video_detail values(" + video_id + ",'~/video/" + filename + "')";
        con.modify_data(q);
        Response.Redirect("~/AdminVideo.aspx");
    }
}
