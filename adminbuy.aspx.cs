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

public partial class adminbuy1 : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    DataTable dt3 = new DataTable();
    String q;
    int i, j;
    protected void Page_Load(object sender, EventArgs e)
    {
        q = "select * from master_order order by order_no";
        dt1 = con.fetch_data(q);
        if (dt1.Rows.Count != 0)
        {
            for (i = 0; i < dt1.Rows.Count; i++)
            {
                q = "select * from order_detail where order_no=" + dt1.Rows[i][0].ToString();
                dt2 = con.fetch_data(q);
                if (dt2.Rows.Count != 0)
                {
                    for (j = 0; j < dt2.Rows.Count; j++)
                    {
                        q = "select * from watch_detail where model_id='" + dt2.Rows[j][2].ToString() + "'";
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
                            TableCell tc7 = new TableCell();
                            TableCell tc8 = new TableCell();
                            TableCell tc9 = new TableCell();
                            TableCell tc10 = new TableCell();
                            TableCell tc11 = new TableCell();
                            Label lbl1 = new Label();
                            lbl1.Text = dt1.Rows[i][0].ToString();
                            lbl1.ForeColor = System.Drawing.Color.Black;
                            tc1.Controls.Add(lbl1);
                            lbl1.Width = 70;
                            Label lbl2 = new Label();
                            lbl2.Text = dt1.Rows[i][1].ToString();
                            lbl2.ForeColor = System.Drawing.Color.Black;
                            tc2.Controls.Add(lbl2);
                            lbl2.Width = 100;
                            Label lbl3 = new Label();
                            lbl3.Text = dt1.Rows[i][2].ToString();
                            lbl3.ForeColor = System.Drawing.Color.Black;
                            tc3.Controls.Add(lbl3);
                            lbl3.Width = 150;
                            Label lbl4 = new Label();
                            lbl4.Text = dt2.Rows[j][0].ToString();
                            lbl4.ForeColor = System.Drawing.Color.Black;
                            tc4.Controls.Add(lbl4);
                            lbl4.Width = 100;
                            Label lbl5 = new Label();
                            lbl5.Text = dt3.Rows[0][1].ToString();
                            lbl5.ForeColor = System.Drawing.Color.Black;
                            tc5.Controls.Add(lbl5);
                            lbl5.Width = 100;
                            Label lbl6 = new Label();
                            lbl6.Text = dt3.Rows[0][3].ToString();
                            lbl6.ForeColor = System.Drawing.Color.Black;
                            tc6.Controls.Add(lbl6);
                            lbl6.Width = 150;
                            Label lbl7 = new Label();
                            lbl7.Text = dt2.Rows[j][4].ToString();
                            lbl7.ForeColor = System.Drawing.Color.Black;
                            tc7.Controls.Add(lbl7);
                            lbl7.Width = 75;
                            Label lbl8 = new Label();
                            lbl8.Text = dt2.Rows[j][3].ToString();
                            lbl8.ForeColor = System.Drawing.Color.Black;
                            tc8.Controls.Add(lbl8);
                            lbl8.Width = 100;
                            Label lbl9 = new Label();
                            lbl9.Text = dt2.Rows[j][5].ToString();
                            lbl9.ForeColor = System.Drawing.Color.Black;
                            tc9.Controls.Add(lbl9);
                            lbl9.Width = 100;
                            if (j == 0)
                            {
                                LinkButton lbt1 = new LinkButton();
                                lbt1.Text = "Delivery it";
                                lbt1.PostBackUrl = "~/admindeliverybuy.aspx?order_no=" + dt1.Rows[i][0].ToString();
                                lbt1.ForeColor = System.Drawing.Color.White;
                                lbt1.CssClass = "linkbutton";
                                tc10.Controls.Add(lbt1);
                                lbt1.Width = 100;
                            }
                            else
                            {
                                Label lbl10 = new Label();
                                lbl10.Text = "";
                                tc10.Controls.Add(lbl10);
                            }
                            LinkButton lbt2 = new LinkButton();
                            lbt2.Text = "Cancel it";
                            lbt2.PostBackUrl = "~/admincancelbuy.aspx?order_no=" + dt1.Rows[i][0].ToString() + "&model_id=" + dt2.Rows[j][2].ToString();
                            lbt2.ForeColor = System.Drawing.Color.White;
                            lbt2.CssClass = "linkbutton";
                            lbt2.Width = 100;
                            tc11.Controls.Add(lbt2);
                            tr1.Cells.Add(tc1);
                            tr1.Cells.Add(tc2);
                            tr1.Cells.Add(tc3);
                            tr1.Cells.Add(tc4);
                            tr1.Cells.Add(tc5);
                            tr1.Cells.Add(tc6);
                            tr1.Cells.Add(tc7);
                            tr1.Cells.Add(tc8);
                            tr1.Cells.Add(tc9);
                            tr1.Cells.Add(tc10);
                            tr1.Cells.Add(tc11);
                            Table1.Rows.Add(tr1);
                            tr2.Height = 20;
                            Table1.Rows.Add(tr2);
                        }
                    }
                }
            }
        }
        //display_panel();
    }
}
