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

public partial class admindeletewatch : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q, company_name;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["model_id"] != null)
        {
            MsgBox1.Show("Confirm", "Are you sure to delete pet breed detail", null, new EO.Web.MsgBoxButton("Yes", null, "Yes"), new EO.Web.MsgBoxButton("No", null, "No"));
        }
    }
    protected void MsgBox1_ButtonClick1(object sender, CommandEventArgs e)
    {
        q = "select * from watch_detail where model_id='" + Request["model_id"].ToString() + "'";
        dt = con.fetch_data(q);
        if (dt.Rows.Count != 0)
        {
            company_name = dt.Rows[0][3].ToString();
        }
        if (e.CommandName == "Yes")
        {
            q = "delete from watch_detail where model_id='" + Request["model_id"].ToString() + "'";
            con.modify_data(q);
            //Application["adminpetbreed"] = false;
            Response.Redirect("~/adminupdatewatch.aspx?watch_company=" + company_name);
        }
        else
        {
            //Application["adminpetbreed"] = false;
            Response.Redirect("~/adminupdatewatch.aspx?watch_company=" + company_name);
        }
    }
}
