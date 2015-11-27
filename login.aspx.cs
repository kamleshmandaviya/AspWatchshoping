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

public partial class login : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    String q;
    DataTable dt = new DataTable();
    int i;
    String set = null;
    String set1, set2;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["model_id"] != null)
        {
            set = Request["model_id"].ToString();
            set1 = Request["value"].ToString();
            set2 = Request["value1"].ToString();
            lbl_message.Text = set;
        }

    }
    protected void link_loginsignin_Click(object sender, EventArgs e)
    {
        if (link_signin.Text == "Sign In")
        {
            if (txt_userid.Text.Length == 0 && txtpassword.Text.Length == 0)
            {
                lbl_message.Visible = true;
                lbl_message.Text = "Please enter the User ID and Password";
            }
            else if (txt_userid.Text.Length == 0)
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
                q = "select * from login where user_name='" + txt_userid.Text + "'";
                dt = con.fetch_data(q);
                if (dt.Rows.Count == 0)
                {
                    lbl_message.Visible = true;
                    lbl_message.Text = "User ID invalid";
                    return;
                }
                q = "select * from login where password='" + txtpassword.Text + "'";
                dt = con.fetch_data(q);
                if (dt.Rows.Count == 0)
                {
                    lbl_message.Visible = true;
                    lbl_message.Text = "Password invalid";
                    return;
                }
                q = "select * from login where user_name='" + txt_userid.Text + "' and password='" + txtpassword.Text + "'";
                dt = con.fetch_data(q);
                if (dt.Rows.Count == 0)
                {
                    lbl_message.Visible = true;
                    lbl_message.Text = "User ID & Password invalid";
                    return;
                }
                else
                {
                    if (set == null)
                    {
                        lbl_message.Text = "sign In succes fully";
                        Session["login"] = true;
                        Session["user_id"] = txt_userid.Text;
                        Session["logintime"] = DateTime.Now.ToShortTimeString().ToString();
                        Response.Redirect("~/home.aspx");
                        link_signin.Text = "Sign Out";
                    }
                    else
                    {
                        link_signin.Text = "Sign Out";
                        Session["login"] = true;
                        Session["user_id"] = txt_userid.Text;
                        Session["logintime"] = DateTime.Now.ToShortTimeString().ToString();
                        Response.Redirect("~/watch_detail.aspx?model_id=" + set + "&value=" + set1 + "&value1=" + set2);

                    }
                }
            }
        }
        else if (link_signin.Text == "Sign out")
        {
            Session.Clear();
            link_signin.Text = "Sign In";
            Response.Redirect("~/home.aspx");
        }
    }
    protected void link_createaccount_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/newregister.aspx");
    }
    protected void link_without_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/home.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (txt_userid.Text.Length != 0)
        {
            q = "select * from registration_detail where user_id='" + txt_userid.Text + "'";
            dt = con.fetch_data(q);
            if (dt.Rows.Count != 0)
            {
                //Response.Redirect("~/home.aspx");
                Response.Redirect("~/forgetpassword.aspx?user_id=" + con.EncodeString(txt_userid.Text));
            }
        }
    }
}
