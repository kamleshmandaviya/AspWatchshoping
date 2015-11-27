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

public partial class admincancelbuy : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i, amount;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["order_no"] != null && Request["model_id"] != null)
        {
            MsgBox1.Show("Confirm", "Are you sure to cancel the item from order", null, new EO.Web.MsgBoxButton("Yes", null, "Yes"), new EO.Web.MsgBoxButton("No", null, "No"));
        }
    }
    protected void MsgBox1_ButtonClick(object sender, CommandEventArgs e)
    {
        q = "select * from order_detail where order_no=" + Request["order_no"].ToString() + " and model_id='" + Request["model_id"].ToString() + "'";
        dt = con.fetch_data(q);
        if (dt.Rows.Count != 0)
        {
            amount = Convert.ToInt32(dt.Rows[0][5]);
        }
        if (e.CommandName == "Yes")
        {
            q = "delete from order_detail where order_no=" + Request["order_no"].ToString() + " and model_id='" + Request["model_id"].ToString() + "'";
            con.modify_data(q);
            q = "update master_order set total_amount=total_amount-" + amount + " where order_no=" + Request["order_no"].ToString();
            con.modify_data(q);
            q = "select * from master_order where order_no=" + Request["order_no"].ToString();
            dt = con.fetch_data(q);
            if (dt.Rows.Count != 0)
            {
                if (Convert.ToInt32(dt.Rows[0][3]) == 0)
                {
                    q = "delete from master_order where order_no=" + Request["order_no"].ToString();
                    con.modify_data(q);
                }
            }
            Response.Redirect("~/adminbuy.aspx");
        }
        else
        {
            Response.Redirect("~/adminbuy.aspx");
        }
    }
}
