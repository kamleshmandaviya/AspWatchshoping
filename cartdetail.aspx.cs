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

public partial class cartdetail : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i, amount, order_no;
    String d;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session.Count == 3)
        {
            lblmassage.Text = "You are not purchesing any pet";
            lbtconform.Visible = false;
        }
        for (i = 3; i < Session.Count; i++)
        {
            lblmassage.Text = "";
            lbtconform.Visible = true;
            Table1.Visible = true;
            q = "select * from watch_detail where model_id='" + Session.Keys[i].ToString() + "'";
            dt = con.fetch_data(q);
            TableRow tr1 = new TableRow();
            TableRow tr2 = new TableRow();
            TableCell tc1 = new TableCell();
            TableCell tc2 = new TableCell();
            TableCell tc3 = new TableCell();
            TableCell tc4 = new TableCell();
            TableCell tc5 = new TableCell();
            TableCell tc6 = new TableCell();
            TableCell tc7 = new TableCell();
            Image img = new Image();
            img.ImageUrl = dt.Rows[0][5].ToString();
            img.Width = 115;
            img.Height = 90;
            tc1.Controls.Add(img);
            Label lbl1 = new Label();
            lbl1.Text = dt.Rows[0][3].ToString();
            lbl1.ForeColor = System.Drawing.Color.Black;
            lbl1.Width = 100;
            tc2.Controls.Add(lbl1);
            Label lbl2 = new Label();
            lbl2.Text = dt.Rows[0][4].ToString();
            lbl2.ForeColor = System.Drawing.Color.Black;
            lbl2.Width = 80;
            tc3.Controls.Add(lbl2);
            Label lbl3 = new Label();
            lbl3.Text = Session[i].ToString();
            lbl3.ForeColor = System.Drawing.Color.Black;
            lbl3.Width = 60;
            tc4.Controls.Add(lbl3);
            Label lbl4 = new Label();
            lbl4.Text = (Convert.ToInt16(dt.Rows[0][4]) * Convert.ToInt16(Session[i])).ToString();
            amount = amount + Convert.ToInt32(lbl4.Text);
            lbl4.ForeColor = System.Drawing.Color.Black;
            lbl4.Width = 90;
            tc5.Controls.Add(lbl4);
            LinkButton lbt1 = new LinkButton();
            lbt1.Text = "update it";
            lbt1.ForeColor = System.Drawing.Color.White;
            lbt1.CssClass = "linkbutton";
            lbt1.PostBackUrl = "~/updateorder.aspx?model_id=" + con.EncodeString(dt.Rows[0][1].ToString()) + "&qty=" + con.EncodeString(lbl3.Text) + "&total=" + con.EncodeString(lbl4.Text) + "";
            lbt1.Width = 70;
            tc6.Controls.Add(lbt1);
            LinkButton lbt2 = new LinkButton();
            lbt2.Text = "delete it";
            lbt2.ForeColor = System.Drawing.Color.White;
            lbt2.CssClass = "linkbutton";
            lbt2.OnClientClick = "ConfirmOnDelete()";
            lbt2.PostBackUrl = "~/deleteorder.aspx?model_id=" +con.EncodeString( dt.Rows[0][1].ToString());
            lbt2.Width = 70;
            tc7.Controls.Add(lbt2);
            tr1.Cells.Add(tc1);
            tr1.Cells.Add(tc2);
            tr1.Cells.Add(tc3);
            tr1.Cells.Add(tc4);
            tr1.Cells.Add(tc5);
            tr1.Cells.Add(tc6);
            tr1.Cells.Add(tc7);
            Table1.Rows.Add(tr1);
            tr2.Height = 20;
            Table1.Rows.Add(tr2);
            lbltotal.Text = "Total Amount : " + amount.ToString();
        }
    }
    protected void lbtconform_Click(object sender, EventArgs e)
    {
        /*MsgBox1.Show("Confirm", "Are you sure to confirm the order", null, new EO.Web.MsgBoxButton("Yes", null, "Yes"), new EO.Web.MsgBoxButton("No", null, "No"));
        if (e.CommandName == "Yes")
        {*/
            q = "select max(order_no) from master_order";
            dt = con.fetch_data(q);
            if (dt.Rows[0][0].ToString() == "")
            {
                order_no = 1001;
            }
            else
            {
                order_no = Convert.ToInt16(dt.Rows[0][0].ToString()) + 1;
            }
            d = System.DateTime.Now.Day.ToString() + "/" + System.DateTime.Now.Month.ToString() + "/" + System.DateTime.Now.Year.ToString();
            q = "insert into master_order values(" + order_no + ",'" + d + "','" + Session["user_id"].ToString() + "'," + amount + ")";
            con.modify_data(q);
            for (i = 3; i < Session.Count; i++)
            {
                q = "select * from watch_detail where model_id='" + Session.Keys[i].ToString() + "'";
                dt = con.fetch_data(q);
                if (dt.Rows.Count != 0)
                {
                    q = "insert into order_detail values(" + order_no + ",'" + Session["user_id"].ToString() + "','" + Session.Keys[i].ToString() + "'," + dt.Rows[0][4].ToString() + "," + Session[i].ToString() + "," + Convert.ToInt16(Session[i]) * Convert.ToInt16(dt.Rows[0][4]) + ")";
                    con.modify_data(q);
                }
            }
            Response.Redirect("~/home.aspx");
        }
    }


