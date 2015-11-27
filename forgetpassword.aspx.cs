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

public partial class forgetpassword : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        /*if (Convert.ToBoolean(Session["login"]) == true)
        {
            Response.Redirect("~/login.aspx");
        }*/
        if (Request["user_id"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
        if (con.DecodeString(Request["user_id"]) == "null")
        {
            Response.Redirect("~/login.aspx");
        }
        q = "select * from registration_detail where user_id='" + con.DecodeString(Request["user_id"].ToString()) + "'";
        dt = con.fetch_data(q);
        if (dt.Rows.Count != 0)
        {
            lblrecord_security_question.Text = dt.Rows[0][8].ToString();
        }
    }
    protected void lbtsubmit_Click(object sender, EventArgs e)
    {
        lblmessage.Text = "";
        lblpassword.Text = "";
        q = "select * from registration_detail where user_id='" + con.DecodeString(Request["user_id"].ToString()) + "' and answer='" + txtanswer.Text + "'";
        dt = con.fetch_data(q);
        if (dt.Rows.Count != 0)
        {
            lblpassword.Text = "Password : " + dt.Rows[0][1].ToString();
        }
        else
        {
            lblmessage.Text = "wrong answer";
        }
    }
}
