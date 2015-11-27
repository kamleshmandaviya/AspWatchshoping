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

public partial class adminmodifywatch1 : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i;
    String set, set1, set2;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["watch_id"] != null)
        {
            set = Request["watch_id"].ToString();
            q = "select * from watch_detail where watch_id='" + set + "'";
            dt = con.fetch_data(q);
            if (dt.Rows.Count != 0)
            {
                for (i = 0; i < dt.Rows.Count; i++)
                {

                    if (IsPostBack == false)
                    {
                        txt_modelid.Text = dt.Rows[i][1].ToString();
                        lbl_watchid.Text = dt.Rows[i][0].ToString();
                        // ddlcategory.Items.Add("select the company");
                        /*ddlcategory.Items.Add("sonata");
                        ddlcategory.Items.Add("rado");
                        ddlcategory.Items.Add("adidas");
                        ddlcategory.Items.Add("rolax");*/
                        txt_company.Text = dt.Rows[i][3].ToString();
                        txt_price.Text = dt.Rows[i][4].ToString();
                        img_watch.ImageUrl = dt.Rows[i][5].ToString();
                        txt_category.Text = dt.Rows[i][2].ToString();
                        txt_description.Text = dt.Rows[i][6].ToString();
                    }
                    //ddlcategory.Items.Add(dt.Rows[i][3].ToString());

                }
            }
        }
    }
    protected void cmd_update_Click(object sender, EventArgs e)
    {
        if (txt_company.Text == null)
        {
            lbl_company.Visible = true;
            //lbl_company.Text("Enter The Any Company Name");
        }
        /*else if (txt_id.Text == null)
        {
            lbl_id.Visible = true;
            //lbl_id.Text("Enter The Any Id");
        }*/
        else if (txt_modelid.Text == null)
        {
            lbl_model.Visible = true;
            //lbl_model.Text("Enter Any Model Id");
        }
        else if (txt_price.Text == null)
        {
            lbl_price.Visible = true;
            //lbl_price.Text("Enter Any Price");
        }
        else
        {
            String s = txt_price.Text;
            q = "update watch_detail set model_id='" + txt_modelid.Text + "',category='" + txt_category.Text + "',company_name='" + txt_company.Text + "',price=" + txt_price.Text + ",description='" + txt_description.Text + "' where watch_id=" + lbl_watchid.Text;
            con.modify_data(q);
            Response.Redirect("~/adminupdatewatch.aspx?watch_company=" + dt.Rows[0][3].ToString());
        }
    }
}
