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

public partial class adminaddvideo1 : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int add_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        q = "select max(video_id) from video_detail";
        dt = con.fetch_data(q);
        if (dt.Rows[0][0].ToString() == "")
        {
            add_id = 1001;
        }
        else
        {
            add_id = Convert.ToInt16(dt.Rows[0][0]) + 1;
        }
        lbl_addid.Text = add_id.ToString();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        String filename = AJAXUploader1.PostedFiles[0].FinalFileName;
        String[] array = filename.Split('\\');
        filename = array[array.LongLength - 1].ToString();
        /*String filename;
        filename = "r-1001";*/
        q = "insert into video_detail values(" + lbl_addid.Text + ",'~/addvideo/" + filename + "')";
        con.modify_data(q);

    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/adminhome.aspx");
    }

    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/adminhome.aspx");
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
            add_id = 1001;
        }
        else
        {
            add_id = Convert.ToInt16(dt.Rows[0][0]) + 1;
        }
        q = "insert into video_detail values(" + add_id + ",'~/watchvideo/" + filename + "')";
        con.modify_data(q);
        Response.Redirect("~/adminaddvideo.aspx");
    }
}
