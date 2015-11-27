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

public partial class changeprofile : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToBoolean(Session["login"]) == false)
        {
            Response.Redirect("~/login.aspx");
        }
        if (IsPostBack == false)
        {
            q = "select * from registration_detail where user_id='" + Session["user_id"].ToString() + "'";
            dt = con.fetch_data(q);
            if (dt.Rows.Count != 0)
            {
                lblrecord_user_id.Text = dt.Rows[0][0].ToString();
                lblrecord_name.Text = dt.Rows[0][2].ToString();
                lblrecord_gender.Text = dt.Rows[0][3].ToString();
                txtaddress.Text = dt.Rows[0][4].ToString();
                ddlcountry.Text = dt.Rows[0][5].ToString();
                txtemail_id.Text = dt.Rows[0][6].ToString();
                txtphone_no.Text = dt.Rows[0][7].ToString();
            }
        }
    }
    protected void lbtsubmit_Click(object sender, EventArgs e)
    {
        lblmessage.Text = "";
        if (ddlcountry.Text != "select the country")
        {
            q = "select * from registration_detail where user_id='" + lblrecord_user_id.Text + "' and password='" + txtold_password.Text + "'";
            dt = con.fetch_data(q);
            if (dt.Rows.Count != 0)
            {
                q = "update registration_detail set password='" + txtnew_password.Text + "',address='" + txtaddress.Text + "',country='" + ddlcountry.Text + "',email_id='" + txtemail_id.Text + "',phone_no='" + txtphone_no.Text + "' where user_id='" + lblrecord_user_id.Text + "'";
                con.modify_data(q);
                q = "update login set password='" + txtnew_password.Text + "' where user_id='" + lblrecord_user_id.Text + "'";
                con.modify_data(q);
                Response.Redirect("~/login.aspx");
            }
            else
            {
                lblmessage.Text = "Wrong password";
            }
        }
    }
}
