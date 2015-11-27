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

public partial class watch_detail : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i;
    String set, set1, set2,set3;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["model_id"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        if (con.DecodeString(Request["model_id"].ToString()) == "null")
        {
            Response.Redirect("~/home.aspx");
        }
        if (Request["value"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        if (con.DecodeString(Request["value"].ToString()) == "null")
        {
            Response.Redirect("~/home.aspx");
        }
        if (Request["value1"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        if (con.DecodeString(Request["value1"].ToString()) == "null")
        {
            Response.Redirect("~/home.aspx");
        }
        if (Request["model_id"].ToString() != null)
        {
            set = con.DecodeString(Request["model_id"]).ToString();
            set1 = con.DecodeString(Request["value"]).ToString();
            set2 = con.DecodeString(Request["value1"]).ToString();
            //Label3.Text = set1;
            Back.CssClass = "linkbutton";
            Buy_now1.CssClass = "linkbutton";
            create_table();
        }
    }
    public void create_table()
    {
        q = "select * from watch_detail where model_id='" + set + "'";
        dt = con.fetch_data(q);
        if (dt.Rows.Count != 0)
        {
            for (i = 0; i < dt.Rows.Count; i++)
            {
                lbl_id.Text = dt.Rows[i][1].ToString();
                lbl_price.Text = dt.Rows[i][4].ToString();
                lbl_detail.Text = dt.Rows[i][6].ToString();
                img_watch.ImageUrl = dt.Rows[i][5].ToString();
                set3 = dt.Rows[i][3].ToString();
            }
        }
    }
    protected void Back_Click(object sender, EventArgs e)
    {
        if (set2 == "menu")
        {
            Response.Redirect("~/watch_menu.aspx?set=" + con.EncodeString(set1).ToString());
        }
        else if (set2 == "watch")
        {
            Response.Redirect("~/watch.aspx?company_name=" + con.EncodeString(set3).ToString());
        }
        else if (set2 == "price")
        {
            Response.Redirect("~/watch_price.aspx?watch_price=" + con.EncodeString(set1).ToString());
        }
    }
    protected void Buy_now1_Click(object sender, EventArgs e)
    {
        if (Convert.ToBoolean(Session["login"]) == false)
        {
            Response.Redirect("~/login.aspx?model_id=" + con.EncodeString(lbl_id.Text) + "&value=" + con.EncodeString(set1.ToString()) + "&value1=" + con.EncodeString(set2.ToString()));
        }
        else if (Convert.ToBoolean(Session["login"]) == true && txt_qty.Text != "")
        {
            Session[lbl_id.Text.ToString()] = txt_qty.Text;
            if (set2 == "menu")
            {
                Response.Redirect("~/watch_menu.aspx?set=" + con.EncodeString(set1.ToString()));
            }
            else if (set2 == "watch")
            {
                Response.Redirect("~/watch.aspx?company_name=" + con.EncodeString(set3.ToString()));
            }
            else if (set2 == "price")
            {
                Response.Redirect("~/watch_price.aspx?watch_price=" + con.EncodeString(set1));
            }
        }
        else if (Convert.ToBoolean(Session["login"]) == true && txt_qty.Text == "")
        {
            lbl_error.Visible = true;
            lbl_error.Text = " *  you enter any digit in order";

        }
    }
}
