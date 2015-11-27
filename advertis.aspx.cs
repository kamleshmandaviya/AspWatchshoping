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

public partial class advertise : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q, d;
    int i;
    String set;
    protected void Page_Load(object sender, EventArgs e)
    {
       

        //d = DateTime.Now.Day.ToString() + "/" + DateTime.Now.Month.ToString() + "/" + DateTime.Now.Year.ToString();

        q = "select * from addvertise ";//where add_date='"+da+"'add_date='"+db+"";
        dt = con.fetch_data(q);
        if (dt.Rows.Count != 0)
        {
            for (i = 0; i < dt.Rows.Count; i++)
            {
                TableRow tr1 = new TableRow();
                TableRow tr2 = new TableRow();
                TableRow tr3 = new TableRow();
                TableCell tc1 = new TableCell();
                TableCell tc2 = new TableCell();
                TableCell tc3 = new TableCell();
                TableCell tc4 = new TableCell();
                Label l1 = new Label();
                l1.Text = dt.Rows[i][2].ToString();
                l1.Width = 180;
                l1.Height = 20;
                l1.Font.Size = 15;
                l1.ForeColor = System.Drawing.Color.Black;
                tc1.Controls.Add(l1);
                tr1.Cells.Add(tc1);
                Image img = new Image();
                img.ImageUrl = dt.Rows[i][5].ToString();
                img.Height = 100;
                img.Width = 100;
                tc2.Controls.Add(img);
                Label l2 = new Label();
                l2.Text = dt.Rows[i][1].ToString();
                l2.Width = 550;
                l2.Font.Size = 12;
                l2.ForeColor = System.Drawing.Color.Black;
                tc3.Controls.Add(l2);
                tr2.Cells.Add(tc2);
                tr2.Cells.Add(tc3);
                LinkButton lbt1 = new LinkButton();
                lbt1.Text = "Know More";
                lbt1.ForeColor = System.Drawing.Color.White;
                lbt1.CssClass = "linkbutton";
                lbt1.PostBackUrl = "~/add_detail.aspx?add_id=" + con.EncodeString(dt.Rows[i][0].ToString());
                tc4.Controls.Add(lbt1);
                tr3.Cells.Add(tc4);
                Table1.Rows.Add(tr1);
                Table1.Rows.Add(tr2);
                Table1.Rows.Add(tr3);
            }
        }
    
    }
}
