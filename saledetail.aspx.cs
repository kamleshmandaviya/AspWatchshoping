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

public partial class saledetail : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
   
    String q;
    int i, j;
    protected void Page_Load(object sender, EventArgs e)
    {
        q = "select * from master_sell";
        dt = con.fetch_data(q);
        if (dt.Rows.Count != 0)
        {
            for (i = 0; i < dt.Rows.Count; i++)
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
                lbl1.Text = dt.Rows[i][0].ToString();
                lbl1.ForeColor = System.Drawing.Color.Black;
                tc1.Controls.Add(lbl1);
                lbl1.Width = 300;

                Label lbl2 = new Label();
                lbl2.Text = dt.Rows[i][1].ToString();
                lbl2.ForeColor = System.Drawing.Color.Black;
                lbl2.Width = 170;
                tc2.Controls.Add(lbl2);
                Label lbl3 = new Label();
                lbl3.Text = dt.Rows[i][2].ToString();
                lbl3.ForeColor = System.Drawing.Color.Black;
                lbl3.Width = 200;
                tc3.Controls.Add(lbl3);
                Label lbl4 = new Label();
                lbl4.Text = dt.Rows[i][3].ToString();
                lbl4.ForeColor = System.Drawing.Color.Black;
                lbl4.Width = 200;
                tc4.Controls.Add(lbl4);
                Label lbl5 = new Label();
                lbl5.Text = dt.Rows[i][4].ToString();
                lbl5.ForeColor = System.Drawing.Color.Black;
                lbl5.Width = 200;
                tc5.Controls.Add(lbl5);

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
