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

public partial class admindeletevideo1 : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["video_id"] != null)
        {
            MsgBox1.Show("Confirm", "Are you sure to delete the video", null, new EO.Web.MsgBoxButton("Yes", null, "Yes"), new EO.Web.MsgBoxButton("No", null, "No"));
        }
    }
    protected void MsgBox1_ButtonClick(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "Yes")
        {
            q = "delete from video_detail where video_id=" + Request["video_id"].ToString();
            con.modify_data(q);
            Response.Redirect("~/adminupdatevideo.aspx");
        }
        else
        {
            Response.Redirect("~/adminupdatevideo.aspx");
        }
    }
}
