using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class first : System.Web.UI.MasterPage
{
    Connectivity con = new Connectivity();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void link_aboutus_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/aboutus.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/watch_color.aspx?watch_color="+con.EncodeString("blue"));
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/watch_color.aspx?watch_color=" + con.EncodeString("darkblue"));
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/watch_color.aspx?watch_color="+con.EncodeString("green"));
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/watch_color.aspx?watch_color="+con.EncodeString("kathai"));
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/watch_color.aspx?watch_color=" + con.EncodeString("marun"));
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/watch_color.aspx?watch_color=" + con.EncodeString("pink"));
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/watch_color.aspx?watch_color=" + con.EncodeString("red"));
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/watch_color.aspx?watch_color=" + con.EncodeString("black"));
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/watch_color.aspx?watch_color=" + con.EncodeString("yellow"));
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/watch_color.aspx?watch_color=" + con.EncodeString("morpich"));
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("~/watch.aspx?company_name="+con.EncodeString(ListBox1.SelectedValue));
    }
    protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("~/watch_menu.aspx?set=" + con.EncodeString(ListBox2.SelectedValue));
    }
    protected void ListBox3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("~/watch_price.aspx?watch_price=" + con.EncodeString(ListBox3.SelectedValue));
    }
    protected void link_changeprofile_Click(object sender, EventArgs e)
    {
        if (Convert.ToBoolean(Session["login"]) == true)
        {
            link_changeprofile.PostBackUrl = "~/changeprofile.aspx";
        }
        else
        {
            Response.Redirect("~/login.aspx");
        }
    }
}
