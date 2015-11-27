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

public partial class adminlogin : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void link_signin_Click(object sender, EventArgs e)
    {

        if (link_signin.Text == "Sign In")
        {
            if (txtuser_id.Text.Length == 0 && txtpassword.Text.Length == 0)
            {
                lbl_message.Visible = true;
                lbl_message.Text = "Please enter the User ID and Password";
            }
            else if (txtuser_id.Text.Length == 0)
            {
                lbl_message.Visible = true;
                lbl_message.Text = "Please enter the User ID";
            }
            else if (txtpassword.Text.Length == 0)
            {
                lbl_message.Visible = true;
                lbl_message.Text = "Please enter Password";
            }
            else
            {
                q = "select * from admin_login where user_id='" + txtuser_id.Text + "'";
                dt = con.fetch_data(q);
                if (dt.Rows.Count == 0)
                {
                    lbl_message.Visible = true;
                    lbl_message.Text = "User ID invalid";
                    return;
                }
                q = "select * from admin_login where password='" + txtpassword.Text + "'";
                dt = con.fetch_data(q);
                if (dt.Rows.Count == 0)
                {
                    lbl_message.Visible = true;
                    lbl_message.Text = "Password invalid";
                    return;
                }
                q = "select * from admin_login where user_id='" + txtuser_id.Text + "' and password='" + txtpassword.Text + "'";
                dt = con.fetch_data(q);
                if (dt.Rows.Count == 0)
                {
                    lbl_message.Visible = true;
                    lbl_message.Text = "User ID & Password invalid";
                    return;
                }
                else
                {
                    Session["login"] = true;
                    Session["user_id"] = txtuser_id.Text;
                    Session["logintime"] = DateTime.Now.ToShortTimeString().ToString();
                    lbl_message.Text = "user login succes fully";
                    Response.Redirect("~/adminhome.aspx");
                }
            }
        }
    }
}
