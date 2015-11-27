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

public partial class adminaddadvertise1 : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int add_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        q = "select max(add_id) from addvertise";
        dt = con.fetch_data(q);
        if (dt.Rows[0][0].ToString() == "")
        {
            add_id = 1001;
        }
        else
        {
            add_id = Convert.ToInt16(dt.Rows[0][0]) + 1;
        }
        lbl_addid.Text = add_id.ToString();
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        String filename = AJAXUploader1.PostedFiles[0].FinalFileName;
        String[] array = filename.Split('\\');
        filename = array[array.LongLength - 1].ToString();
        /*String filename;
        filename = "r-1001";*/
        q = "insert into addvertise values(" + lbl_addid.Text + ",'" + txt_description.Text + "','" + txt_company.Text + "','" + txt_date.Text + "','" + txt_time.Text + "','~/addimage/" + filename + "'," + txt_price.Text +/*"','" + txtcare_city.Text + "','~/care/" + filename +*/ ")";
        con.modify_data(q);
        clear();
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/adminhome.aspx");
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/adminhome.aspx");
    }
    protected void btn_clear_Click(object sender, EventArgs e)
    {
        clear();
    }
    public void clear()
    {
        txt_description.Text = "";
        txt_company.Text = "";
        txt_date.Text = "";
        txt_price.Text = "";
        txt_time.Text = "";
    }
}
