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

public partial class watch_price1 : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("~/watch_price.aspx?watch_price=" + con.EncodeString(Request["watch_price"]));      
    }
}
