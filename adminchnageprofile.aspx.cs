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

public partial class adminchnageprofile : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToBoolean(Session["login"]) == false)
        {
            Response.Redirect("~/adminhome.aspx");
        }
        if (IsPostBack == false)
        {
            q = "select * from admin_login where user_id='" + Session["user_id"].ToString() + "'";
            dt = con.fetch_data(q);
            if (dt.Rows.Count != 0)
            {
                lblrecord_user_id.Text = dt.Rows[0][0].ToString();
            }
        }
    }
    protected void lbtsubmit_Click(object sender, EventArgs e)
    {
        q = "select * from admin_login where user_id='" + lblrecord_user_id.Text + "' and password='" + txtold_password.Text + "'";
        dt = con.fetch_data(q);
        if (dt.Rows.Count != 0)
        {
            q = "update admin_login set user_id='" + txtnew_user_id.Text + "', password='" + txtnew_password.Text + "' where user_id='" + lblrecord_user_id.Text + "'";
            con.modify_data(q);
            Response.Redirect("~/adminhome.aspx");
        }
        else
        {
            lblmessage.Text = "Wrong password";
        }
    }
}
