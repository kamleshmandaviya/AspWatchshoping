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

public partial class add_detail : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i;
    String set;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["add_id"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        if (con.DecodeString(Request["add_id"].ToString()) == "null")
        {
            Response.Redirect("~/home.aspx");
        }
        if (Request["add_id"] != null)
        {
            set = con.DecodeString(Request["add_id"].ToString());
            q = "select * from addvertise where add_id='" + set + "'";
            dt = con.fetch_data(q);
            if (dt.Rows.Count != 0)
            {
                for (i = 0; i < dt.Rows.Count; i++)
                {
                    lbl_company1.Text = dt.Rows[i][2].ToString();
                    lbl_price1.Text = dt.Rows[i][6].ToString();
                    lbl_detail.Text = dt.Rows[i][1].ToString();
                    ImageButton1.ImageUrl = dt.Rows[i][5].ToString();
                    lbl_date.Text = dt.Rows[i][3].ToString();
                    lbl_time.Text = dt.Rows[i][4].ToString();
                }
            }
        }
    }
    protected void LinkButton19_Click(object sender, EventArgs e)
    {
        Response.Redirect("advertise.aspx");
    }
}
