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

public partial class adminmodifyadvertise1 : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i;
    String set, set1, set2;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["add_id"] != null)
        {
            set = Request["add_id"].ToString();
            q = "select * from addvertise where add_id='" + set + "'";
            dt = con.fetch_data(q);
            if (dt.Rows.Count != 0)
            {
                for (i = 0; i < dt.Rows.Count; i++)
                {

                    if (IsPostBack == false)
                    {
                        lbl_addid.Text = set;
                        Image1.ImageUrl = dt.Rows[i][5].ToString();
                        txt_adddescription.Text = dt.Rows[i][1].ToString();
                        txt_company.Text = dt.Rows[i][2].ToString();
                        //txt_date.SelectedDate = dt.Rows[i][3].ToString();
                        txt_date.Text = dt.Rows[i][3].ToString();
                        txt_time.Text = dt.Rows[i][4].ToString();
                        txt_price.Text = dt.Rows[i][6].ToString();

                    }
                    //ddlcategory.Items.Add(dt.Rows[i][3].ToString());

                }
            }
        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        /*String d1;
        d1 = txt_date.SelectedDate.Day.ToString() + "/" + txt_date.SelectedDate.Month.ToString() + "/" + txt_date.SelectedDate.Year.ToString();*/
        q = "update addvertise set add_description='" + txt_adddescription.Text + "',add_company='" + txt_company.Text + "',add_date='" + txt_date.Text + "',add_time='" + txt_time.Text + "',add_price=" + txt_price.Text + " where add_id=" + lbl_addid.Text;
        con.modify_data(q);
        Response.Redirect("~/adminupdateadvertise.aspx?watch_company=" + dt.Rows[0][3].ToString());
    }
}
