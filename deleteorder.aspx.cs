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

public partial class deleteorder : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["model_id"] != null)
        {
            MsgBox1.Show("Confirm", "Are you sure to delete the item from cart", null, new EO.Web.MsgBoxButton("Yes", null, "Yes"), new EO.Web.MsgBoxButton("No", null, "No"));
        }
    }
    protected void MsgBox1_ButtonClick1(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "Yes")
        {
            Session.Remove(Request["model_id"].ToString());
            Response.Redirect("~/cartdetail.aspx");
        }
        else
        {
            Response.Redirect("~/cartdetail.aspx");
        }
    }
}
