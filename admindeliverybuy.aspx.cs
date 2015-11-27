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

public partial class admindeliverybuy1 : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    DataTable dt3 = new DataTable();
    String q, d;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        d = System.DateTime.Now.Day.ToString() + "/" + System.DateTime.Now.Month.ToString() + "/" + System.DateTime.Now.Year.ToString();
        if (Request["order_no"] != null)
        {
            q = "select * from master_order where order_no=" + Request["order_no"].ToString();
            dt1 = con.fetch_data(q);
            if (dt1.Rows.Count != 0)
            {
                lblrecord_order_no.Text = dt1.Rows[0][0].ToString();
                lblrecord_order_date.Text = dt1.Rows[0][1].ToString();
                lblrecord_user_id.Text = dt1.Rows[0][2].ToString();
                lblrecord_total_amount.Text = dt1.Rows[0][3].ToString();
                lblrecord_delivery_date.Text = d.ToString();
                q = "select * from registration_detail where user_id='" + lblrecord_user_id.Text + "'";
                dt2 = con.fetch_data(q);
                if (dt2.Rows.Count != 0)
                {
                    lblrecord_name.Text = dt2.Rows[0][2].ToString();
                    lblrecord_address.Text = dt2.Rows[0][4].ToString();
                    lblrecord_phone_no.Text = dt2.Rows[0][7].ToString();
                }
                dt2.Clear();
                q = "select * from order_detail where order_no=" + Request["order_no"].ToString();
                dt2 = con.fetch_data(q);
                if (dt2.Rows.Count != 0)
                {
                    for (i = 0; i < dt2.Rows.Count; i++)
                    {
                        q = "select * from watch_detail where model_id='" + dt2.Rows[i][2].ToString() + "'";
                        dt3 = con.fetch_data(q);
                        if (dt3.Rows.Count != 0)
                        {
                            TableRow tr1 = new TableRow();
                            TableRow tr2 = new TableRow();
                            TableCell tc1 = new TableCell();
                            TableCell tc2 = new TableCell();
                            TableCell tc3 = new TableCell();
                            TableCell tc4 = new TableCell();
                            TableCell tc5 = new TableCell();
                            TableCell tc6 = new TableCell();
                            Label lbl1 = new Label();
                            lbl1.Text = dt3.Rows[0][0].ToString();
                            lbl1.ForeColor = System.Drawing.Color.Black;
                            tc1.Controls.Add(lbl1);
                            //lbl1.Width=;
                            Label lbl2 = new Label();
                            lbl2.Text = dt3.Rows[0][1].ToString();
                            lbl2.ForeColor = System.Drawing.Color.Black;
                            tc2.Controls.Add(lbl2);
                            Label lbl3 = new Label();
                            lbl3.Text = dt3.Rows[0][3].ToString();
                            lbl3.ForeColor = System.Drawing.Color.Black;
                            tc3.Controls.Add(lbl3);
                            Label lbl4 = new Label();
                            lbl4.Text = dt2.Rows[i][4].ToString();
                            lbl4.ForeColor = System.Drawing.Color.Black;
                            tc4.Controls.Add(lbl4);
                            Label lbl5 = new Label();
                            lbl5.Text = dt2.Rows[i][3].ToString();
                            lbl5.ForeColor = System.Drawing.Color.Black;
                            tc5.Controls.Add(lbl5);
                            Label lbl6 = new Label();
                            lbl6.Text = dt2.Rows[i][5].ToString();
                            lbl6.ForeColor = System.Drawing.Color.Black;
                            tc6.Controls.Add(lbl6);
                            tr1.Cells.Add(tc1);
                            tr1.Cells.Add(tc2);
                            tr1.Cells.Add(tc3);
                            tr1.Cells.Add(tc4);
                            tr1.Cells.Add(tc5);
                            tr1.Cells.Add(tc6);
                            Table1.Rows.Add(tr1);
                            tr2.Height = 20;
                            Table1.Rows.Add(tr2);
                        }
                    }
                }
            }
        }
    }
    protected void lbtsubmit_Click(object sender, EventArgs e)
    {
        //MsgBox1.Show("Confirm", "Are you sure to deliver the order", null, new EO.Web.MsgBoxButton("Yes", null, "Yes"), new EO.Web.MsgBoxButton("No", null, "No"));
        /* if (e.CommandName == "Yes")
         {*/
        dt1.Clear();
        dt2.Clear();
        dt3.Clear();
        q = "select * from master_order where order_no=" + lblrecord_order_no.Text;
        dt1 = con.fetch_data(q);
        if (dt1.Rows.Count != 0)
        {
            q = "insert into master_sell values(" + dt1.Rows[0][0].ToString() + ",'" + dt1.Rows[0][1].ToString() + "','" + d + "','" + dt1.Rows[0][2].ToString() + "'," + dt1.Rows[0][3].ToString() + ")";
            con.modify_data(q);
            q = "delete from master_order where order_no=" + lblrecord_order_no.Text;
            con.modify_data(q);
        }
        dt1.Clear();
        q = "select * from order_detail where order_no=" + lblrecord_order_no.Text;
        dt1 = con.fetch_data(q);
        for (i = 0; i < dt1.Rows.Count; i++)
        {
            q = "insert into sell_detail values(" + dt1.Rows[i][0].ToString() + ",'" + dt1.Rows[i][1].ToString() + "','" + dt1.Rows[i][2].ToString() + "'," + dt1.Rows[i][3].ToString() + "," + dt1.Rows[i][4].ToString() + "," + dt1.Rows[i][5].ToString() + ")";
            con.modify_data(q);
            q = "delete from order_detail where order_no=" + lblrecord_order_no.Text + " and model_id='" + dt1.Rows[i][2].ToString() + "'";
            con.modify_data(q);
        }
        Response.Redirect("~/AdminBuy.aspx");
    }
}
