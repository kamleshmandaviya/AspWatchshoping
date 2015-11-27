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

public partial class adminaddwatch1 : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int watch_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        q = "select max(watch_id) from watch_detail";
        dt = con.fetch_data(q);
        if (dt.Rows[0][0].ToString() == "")
        {
            watch_id = 1001;
        }
        else
        {
            watch_id = Convert.ToInt16(dt.Rows[0][0]) + 1;
        }
        lbl_watchid.Text = watch_id.ToString();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        String filename = AJAXUploader1.PostedFiles[0].FinalFileName;
        String[] array = filename.Split('\\');
        filename = array[array.LongLength - 1].ToString();
        /*String filename;
        filename = "r-1001.jpg";*/
        q = "insert into watch_detail values(" + lbl_watchid.Text + ",'" + txt_modelid.Text + "','" + txt_category.Text + "','" + txt_company.Text + "','" + txt_price.Text + "','~/watchimage/" + filename + "','" + txt_description.Text + "','" + ddl_color.Text + "')";
        con.modify_data(q);
        clear();
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/adminhome.aspx");
    }
    protected void btn_clear_Click(object sender, EventArgs e)
    {
        clear();
    }
    public void clear()
    {
        txt_category.Text = "";
        txt_company.Text = "";
        txt_description.Text = "";
        txt_modelid.Text = "";
        txt_price.Text = "";
    }
}
