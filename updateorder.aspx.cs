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

public partial class updateorder : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String set, set1, set2;
    String q;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["model_id"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        if (con.DecodeString(Request["model_id"]) == "null")
        {
            Response.Redirect("~/home.aspx");
        }
        if (Request["qty"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        if (con.DecodeString(Request["qty"]) == "null")
        {
            Response.Redirect("~/home.aspx");
        }
        if (Request["total"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        if (con.DecodeString(Request["total"]) == "null")
        {
            Response.Redirect("~/home.aspx");
        }
        if (Request["model_id"] != null)
        {
            set = con.DecodeString(Request["model_id"].ToString());
            set1 = con.DecodeString(Request["qty"].ToString());
            set2 = con.DecodeString(Request["total"].ToString());
            lbl_id.Text = set;
            q = "select * from watch_detail where model_id='" + set + "'";
            dt = con.fetch_data(q);
            if (IsPostBack == false)
            {
                if (dt.Rows.Count != 0)
                {
                    for (i = 0; i < dt.Rows.Count; i++)
                    {
                        lbl_price.Text = dt.Rows[i][4].ToString();
                        lbl_total.Text = set2;
                        txt_quantity.Text = set1;
                        lbl_detail.Text = dt.Rows[i][6].ToString();
                        img_watch.ImageUrl = dt.Rows[i][5].ToString();
                    }
                }
            }
        }

    }
    protected void link_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cartdetail.aspx");
    }
    protected void link_update_Click(object sender, EventArgs e)
    {
        for (i = 3; i < Session.Count; i++)
        {
            if (Session.Keys[i].ToString() == dt.Rows[0][1].ToString())
            {
                Session[i] = txt_quantity.Text;
            }
        }
        Response.Redirect("~/cartdetail.aspx");
    }
}
