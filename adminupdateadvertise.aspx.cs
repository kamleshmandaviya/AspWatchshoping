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

public partial class adminupdateadvertise1 : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i, j;
    String category;
    protected void Page_Load(object sender, EventArgs e)
    {
        q = "select * from addvertise";
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
                TableCell tc7 = new TableCell();
                TableCell tc8 = new TableCell();
                TableCell tc9 = new TableCell();
                Image img = new Image();
                img.ImageUrl = dt.Rows[i][5].ToString();
                img.Width = 270;
                img.Height = 200;
                tc1.Controls.Add(img);
                Label lbl1 = new Label();
                lbl1.Text = dt.Rows[i][0].ToString();
                lbl1.ForeColor = System.Drawing.Color.Black;
                tc2.Controls.Add(lbl1);
                lbl1.Width = 150;
                Label lbl2 = new Label();
                lbl1.Text = dt.Rows[i][1].ToString();
                lbl1.ForeColor = System.Drawing.Color.Black;
                tc3.Controls.Add(lbl1);
                lbl1.Width = 150;
                Label lbl3 = new Label();
                lbl1.Text = dt.Rows[i][2].ToString();
                lbl1.ForeColor = System.Drawing.Color.Black;
                tc4.Controls.Add(lbl1);
                lbl1.Width = 150;
                Label lbl4 = new Label();
                lbl2.Text = dt.Rows[i][3].ToString();
                lbl2.ForeColor = System.Drawing.Color.Black;
                lbl2.Width = 150;
                tc5.Controls.Add(lbl2);
                Label lbl5 = new Label();
                lbl3.Text = dt.Rows[i][4].ToString();
                lbl3.ForeColor = System.Drawing.Color.Black;
                lbl3.Width = 150;
                tc6.Controls.Add(lbl3);
                Label lbl6 = new Label();
                lbl3.Text = dt.Rows[i][6].ToString();
                lbl3.ForeColor = System.Drawing.Color.Black;
                lbl3.Width = 150;
                tc7.Controls.Add(lbl3);
                LinkButton lbt1 = new LinkButton();
                lbt1.Text = "Update it";
                lbt1.ForeColor = System.Drawing.Color.White;
                lbt1.CssClass = "linkbutton";
                lbt1.Width = 150;
                lbt1.PostBackUrl = "~/adminmodifyadvertise.aspx?add_id=" + dt.Rows[i][0].ToString();
                tc8.Controls.Add(lbt1);
                LinkButton lbt2 = new LinkButton();
                lbt2.Text = "Delete it";
                lbt2.ForeColor = System.Drawing.Color.White;
                lbt2.CssClass = "linkbutton";
                lbt2.Width = 150;
                lbt2.PostBackUrl = "~/admindeleteadvertise.aspx?add_id=" + dt.Rows[i][0].ToString();
                tc9.Controls.Add(lbt2);
                tr1.Cells.Add(tc1);
                tr1.Cells.Add(tc2);
                tr1.Cells.Add(tc3);
                tr1.Cells.Add(tc4);
                tr1.Cells.Add(tc5);
                tr1.Cells.Add(tc6);
                tr1.Cells.Add(tc7);
                tr1.Cells.Add(tc8);
                tr1.Cells.Add(tc9);
                Table1.Rows.Add(tr1);
                tr2.Height = 20;
                Table1.Rows.Add(tr2);
            }
        }
    }
}
