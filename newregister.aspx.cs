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

public partial class newregister : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    private object GenerateRandomCode()
    {
        throw new NotImplementedException();
    }
  
    protected void lbtcreate_account_Click(object sender, EventArgs e)
    {
        lbluser_id_msg.Text = "";
        MessageLabel.Text = "";
       /* if (Session["CaptchaImageText"].ToString() == CodeNumberTextBox.Text)
        {*/
            q = "select * from registration_detail where user_id='" + txtuser_id.Text + "'";
            dt = con.fetch_data(q);
            if (dt.Rows.Count != 0)
            {
                lbluser_id_msg.Text = "already created";
            }
            else
            {
                if (ddlcountry.Text != "select the country")
                {
                    q = "insert into registration_detail values('" + txtuser_id.Text + "','" + txtpassword.Text + "','" + txtname.Text + "','" + ddlgender.Text + "','" + txtaddress.Text + "','" + ddlcountry.Text + "','" + txtemail_id.Text + "','" + txtphone_no.Text + "','" + txtsecurity_question.Text + "','" + txtanswer.Text + "')";
                    con.modify_data(q);
                    q = "insert into login values('" + txtuser_id.Text + "','" + txtpassword.Text + "')";
                    con.modify_data(q);
                    txtuser_id.Text = "";
                    txtpassword.Text = "";
                    txtconfirm_password.Text = "";
                    txtname.Text = "";
                    txtaddress.Text = "";
                    ddlcountry.Text = "select the country";
                    txtemail_id.Text = "";
                    txtphone_no.Text = "";
                   // CodeNumberTextBox.Text = "";
                    Response.Redirect("~/login.aspx");
                }
                else
                {
                    ddlcountry.Text = "select the country";
                }
            }
        }
      /*  else
        {
            MessageLabel.Text = "Invalied Security Code! try again";
        }*/
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        lbluser_id_msg.Text = "";
        MessageLabel.Text = "";
        /*if (Session["CaptchaImageText"].ToString() == CodeNumberTextBox.Text)
        {*/
            q = "select * from registration_detail where user_id='" + txtuser_id.Text + "'";
            dt = con.fetch_data(q);
            if (dt.Rows.Count != 0)
            {
                lbluser_id_msg.Text = "already created";
            }
            else
            {
                if (ddlcountry.Text != "select the country")
                {
                    q = "insert into registration_detail values('" + txtuser_id.Text + "','" + txtpassword.Text + "','" + txtname.Text + "','" + ddlgender.Text + "','" + txtaddress.Text + "','" + ddlcountry.Text + "','" + txtemail_id.Text + "','" + txtphone_no.Text + "','" + txtsecurity_question.Text + "','" + txtanswer.Text + "')";
                    con.modify_data(q);
                    q = "insert into login values('" + txtuser_id.Text + "','" + txtpassword.Text + "')";
                    con.modify_data(q);
                    txtuser_id.Text = "";
                    txtpassword.Text = "";
                    txtconfirm_password.Text = "";
                    txtname.Text = "";
                    txtaddress.Text = "";
                    ddlcountry.Text = "select the country";
                    txtemail_id.Text = "";
                    txtphone_no.Text = "";
                   // CodeNumberTextBox.Text = "";
                    Response.Redirect("~/login.aspx");
                }
                else
                {
                    ddlcountry.Text = "select the country";
                }
            }
        }
       /* else
        {
            MessageLabel.Text = "Invalied Security Code! try again";
        }*/
    }

