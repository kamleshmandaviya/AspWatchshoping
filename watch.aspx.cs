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

public partial class extra : System.Web.UI.Page
{
    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["company_name"] == null)
        {
            Response.Redirect("~/home.aspx");
        }
        if (con.DecodeString(Request["company_name"]) == "null")
        {
            Response.Redirect("~/home.aspx");
        }
        
        if (con.DecodeString(Request["company_name"])!= null)
        {
        q = "select * from watch_detail where company_name='" + con.DecodeString(Request["company_name"].ToString()) + "'";
        dt = con.fetch_data(q);
        Table1.Rows.Clear();
        if (dt.Rows.Count != 0)
        {
            for (i = 0; i < dt.Rows.Count; i = i + 3)
            {

                TableRow tr1 = new TableRow();
                TableRow tr2 = new TableRow();
                TableRow tr3 = new TableRow();
                TableRow tr4 = new TableRow();
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
                TableCell tc12 = new TableCell();

                //create the first row that is model id
                if (dt.Rows.Count > i)
                {
                    Label l1 = new Label();
                    l1.Text = "Model No:" + dt.Rows[i][1].ToString();
                    l1.Height = 20;
                    l1.Width = 160;
                    l1.ForeColor = System.Drawing.Color.Black;
                    l1.Font.Bold = true;
                    tc1.Controls.Add(l1);
                    tr1.Cells.Add(tc1);
                }
                if (dt.Rows.Count > i + 1)
                {
                    Label l2 = new Label();
                    l2.Text = "Model No:" + dt.Rows[i + 1][1].ToString();
                    l2.Font.Bold = true;
                    l2.Height = 20;
                    l2.Width = 160;
                    l2.ForeColor = System.Drawing.Color.Black;
                    tc2.Controls.Add(l2);
                    tr1.Cells.Add(tc2);
                }
                if (dt.Rows.Count > i + 2)
                {
                    Label l3 = new Label();
                    l3.Text = "Model No:" + dt.Rows[i + 2][1].ToString();
                    l3.Font.Bold = true;
                    l3.Height = 20;
                    l3.Width = 160;
                    l3.ForeColor = System.Drawing.Color.Black;
                    tc3.Controls.Add(l3);
                    tr1.Cells.Add(tc3);
                }

                //create the second row which having the image
                if (dt.Rows.Count > i)
                {
                    EO.Web.ImageZoom img = new EO.Web.ImageZoom();
                    img.SmallImageUrl = dt.Rows[i][5].ToString();
                    img.BigImageUrl = "~/bigimage/"+dt.Rows[i][1].ToString()+".jpg";
                    img.BackShadeColor = System.Drawing.Color.Black;
                    img.BackShadeOpacity = 50;
                    img.Height = 200;
                    img.Width = 200;
                    /* ImageButton i1 = new ImageButton();
                     i1.PostBackUrl = "~/watch_detail.aspx?watch_id=" + dt.Rows[i][0].ToString() + "&value=" + Request["company_name"].ToString()+"&value1=watch";
                     i1.ImageUrl = dt.Rows[i][5].ToString();
                     i1.Height = 200;
                     i1.Width = 200;*/
                    tc4.Controls.Add(img);
                    tr2.Cells.Add(tc4);
                }
                if (dt.Rows.Count > i + 1)
                {
                    EO.Web.ImageZoom img2 = new EO.Web.ImageZoom();
                    img2.SmallImageUrl = dt.Rows[i + 1][5].ToString();
                    img2.BigImageUrl = "~/bigimage/"+dt.Rows[i + 1][1].ToString()+".jpg";
                    img2.BackShadeColor = System.Drawing.Color.Black;
                    img2.BackShadeOpacity = 50;
                    img2.Height = 200;
                    img2.Width = 200;
                    tc5.Controls.Add(img2);
                    tr2.Cells.Add(tc5);
                }
                if (dt.Rows.Count > i + 2)
                {
                    EO.Web.ImageZoom img3 = new EO.Web.ImageZoom();
                    img3.SmallImageUrl = dt.Rows[i + 2][5].ToString();
                    img3.BigImageUrl = "~/bigimage/"+dt.Rows[i + 2][1].ToString()+".jpg";
                    img3.BackShadeColor = System.Drawing.Color.Black;
                    img3.BackShadeOpacity = 50;
                    img3.Height = 200;
                    img3.Width = 200;
                    tc6.Controls.Add(img3);
                    tr2.Cells.Add(tc6);
                }

                //create the label in row no 3 for display the price
                if (dt.Rows.Count > i)
                {
                    Label l4 = new Label();
                    l4.Text = "Price:" + dt.Rows[i][4].ToString();
                    l4.Font.Bold = true;
                    l4.Height = 20;
                    l4.Width = 100;
                    l4.ForeColor = System.Drawing.Color.Black;
                    tc7.Controls.Add(l4);
                    tr3.Cells.Add(tc7);
                }
                if (dt.Rows.Count > i + 1)
                {
                    Label l5 = new Label();
                    l5.Text = "Price:" + dt.Rows[i + 1][4].ToString();
                    l5.Font.Bold = true;
                    l5.Height = 20;
                    l5.Width = 100;
                    l5.ForeColor = System.Drawing.Color.Black;
                    tc8.Controls.Add(l5);
                    tr3.Cells.Add(tc8);
                }
                if (dt.Rows.Count > i + 2)
                {
                    Label l6 = new Label();
                    l6.Text = "Price:" + dt.Rows[i + 2][4].ToString();
                    l6.Font.Bold = true;
                    l6.Height = 20;
                    l6.Width = 100;
                    l6.ForeColor = System.Drawing.Color.Black;
                    tc9.Controls.Add(l6);
                    tr3.Cells.Add(tc9);
                }

                //create the linkbutton in row four
                if (dt.Rows.Count > i)
                {
                    LinkButton lbt1 = new LinkButton();
                    lbt1.Text = "Know More";
                    lbt1.Font.Bold = true;
                    lbt1.CssClass = "linkbutton";
                    lbt1.ForeColor = System.Drawing.Color.White;
                    lbt1.PostBackUrl = "~/watch_detail.aspx?model_id=" + con.EncodeString(dt.Rows[i][1].ToString()) + "&value=" + con.EncodeString(Request["company_name"].ToString()) + "&value1="+con.EncodeString("watch");
                    tc10.Controls.Add(lbt1);
                    tr4.Cells.Add(tc10);
                }
                if (dt.Rows.Count > i + 1)
                {
                    LinkButton lbt2 = new LinkButton();
                    lbt2.Text = "Know More";
                    lbt2.Font.Bold = true;
                    lbt2.CssClass = "linkbutton";
                    lbt2.ForeColor = System.Drawing.Color.White;
                    lbt2.PostBackUrl = "~/watch_detail.aspx?model_id=" +con.EncodeString( dt.Rows[i + 1][1].ToString()) + "&value=" + con.EncodeString(Request["company_name"].ToString()) + "&value1=" + con.EncodeString("watch");
                    tc11.Controls.Add(lbt2);
                    tr4.Cells.Add(tc11);
                }
                if (dt.Rows.Count > i + 2)
                {
                    LinkButton lbt3 = new LinkButton();
                    lbt3.Text = "Know More";
                    lbt3.Font.Bold = true;
                    lbt3.CssClass = "linkbutton";
                    lbt3.ForeColor = System.Drawing.Color.White;
                    lbt3.PostBackUrl = "~/watch_detail.aspx?model_id=" + con.EncodeString(dt.Rows[i + 2][1].ToString()) + "&value=" + con.EncodeString(Request["company_name"].ToString()) + "&value1=" + con.EncodeString("watch");
                    tc12.Controls.Add(lbt3);
                    tr4.Cells.Add(tc12);
                }

                //add the all row in table
                Table1.Rows.Add(tr1);
                Table1.Rows.Add(tr2);
                Table1.Rows.Add(tr3);
                Table1.Rows.Add(tr4);
            }
        }
        }
    }
   /* protected void ok_Click(object sender, EventArgs e)
    {

        q = "select * from watch_detail where price>=" + txt_start.Text + "and price<=" + txt_end.Text;
        dt = con.fetch_data(q);
        Table1.Rows.Clear();
        if (dt.Rows.Count != 0)
        {
            for (i = 0; i < dt.Rows.Count; i = i + 3)
            {
                TableRow tr1 = new TableRow();
                TableRow tr2 = new TableRow();
                TableRow tr3 = new TableRow();
                TableRow tr4 = new TableRow();
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
                TableCell tc12 = new TableCell();

                //create the first row that is model id
                if (dt.Rows.Count > i)
                {
                    Label l1 = new Label();
                    l1.Text = "Model No:" + dt.Rows[i][1].ToString();
                    l1.Height = 20;
                    l1.Width = 170;
                    l1.ForeColor = System.Drawing.Color.White;
                    l1.Font.Bold = true;
                    tc1.Controls.Add(l1);
                    tr1.Cells.Add(tc1);
                }
                if (dt.Rows.Count > i + 1)
                {
                    Label l2 = new Label();
                    l2.Text = "Model No:" + dt.Rows[i + 1][1].ToString();
                    l2.Font.Bold = true;
                    l2.Height = 20;
                    l2.Width = 170;
                    l2.ForeColor = System.Drawing.Color.White;
                    tc2.Controls.Add(l2);
                    tr1.Cells.Add(tc2);
                }
                if (dt.Rows.Count > i + 2)
                {
                    Label l3 = new Label();
                    l3.Text = "Model No:" + dt.Rows[i + 2][1].ToString();
                    l3.Font.Bold = true;
                    l3.Height = 20;
                    l3.Width = 170;
                    l3.ForeColor = System.Drawing.Color.White;
                    tc3.Controls.Add(l3);
                    tr1.Cells.Add(tc3);
                }

                //create the second row which having the image
                if (dt.Rows.Count > i)
                {
                    ImageButton i1 = new ImageButton();
                    i1.PostBackUrl = "~/watch_detail.aspx?watch_id=" + dt.Rows[i][0] + "&value=" + Request["company_name"].ToString() + "&value1=watch";
                    i1.ImageUrl = dt.Rows[i][5].ToString();
                    i1.Height = 200;
                    i1.Width = 200;
                    tc4.Controls.Add(i1);
                    tr2.Cells.Add(tc4);
                }
                if (dt.Rows.Count > i + 1)
                {
                    ImageButton i2 = new ImageButton();
                    i2.PostBackUrl = "~/watch_detail.aspx?watch_id=" + dt.Rows[i + 1][0] + "&value=" + Request["company_name"].ToString() + "&value1=watch";
                    i2.ImageUrl = dt.Rows[i + 1][5].ToString();
                    i2.Height = 200;
                    i2.Width = 200;
                    tc5.Controls.Add(i2);
                    tr2.Cells.Add(tc5);
                }
                if (dt.Rows.Count > i + 2)
                {
                    ImageButton i3 = new ImageButton();
                    i3.PostBackUrl = "~/watch_detail.aspx?watch_id=" + dt.Rows[i + 2][0] + "&value=" + Request["company_name"].ToString() + "&value1=watch";
                    i3.ImageUrl = dt.Rows[i + 2][5].ToString();
                    i3.Height = 200;
                    i3.Width = 200;
                    tc6.Controls.Add(i3);
                    tr2.Cells.Add(tc6);
                }

                //create the label in row no 3 for display the price
                if (dt.Rows.Count > i)
                {
                    Label l4 = new Label();
                    l4.Text = "Price:" + dt.Rows[i][4].ToString();
                    l4.Font.Bold = true;
                    l4.Height = 20;
                    l4.Width = 100;
                    l4.ForeColor = System.Drawing.Color.White;
                    tc7.Controls.Add(l4);
                    tr3.Cells.Add(tc7);
                }
                if (dt.Rows.Count > i + 1)
                {
                    Label l5 = new Label();
                    l5.Text = "Price:" + dt.Rows[i + 1][4].ToString();
                    l5.Font.Bold = true;
                    l5.Height = 20;
                    l5.Width = 100;
                    l5.ForeColor = System.Drawing.Color.White;
                    tc8.Controls.Add(l5);
                    tr3.Cells.Add(tc8);
                }
                if (dt.Rows.Count > i + 2)
                {
                    Label l6 = new Label();
                    l6.Text = "Price:" + dt.Rows[i + 2][4].ToString();
                    l6.Font.Bold = true;
                    l6.Height = 20;
                    l6.Width = 100;
                    l6.ForeColor = System.Drawing.Color.White;
                    tc9.Controls.Add(l6);
                    tr3.Cells.Add(tc9);
                }

                //create the linkbutton in row four
                if (dt.Rows.Count > i)
                {
                    LinkButton lbt1 = new LinkButton();
                    lbt1.Text = "Know More";
                    lbt1.Font.Bold = true;
                    lbt1.ForeColor = System.Drawing.Color.White;
                    lbt1.PostBackUrl = "~/watch_detail.aspx?watch_id=" + dt.Rows[i][0] + "&value=" + Request["company_name"].ToString() + "&value1=watch";
                    tc10.Controls.Add(lbt1);
                    tr4.Cells.Add(tc10);
                }
                if (dt.Rows.Count > i + 1)
                {
                    LinkButton lbt2 = new LinkButton();
                    lbt2.Text = "Know More";
                    lbt2.Font.Bold = true;
                    lbt2.ForeColor = System.Drawing.Color.White;
                    lbt2.PostBackUrl = "~/watch_detail.aspx?watch_id=" + dt.Rows[i + 1][0] + "&value=" + Request["company_name"].ToString() + "&value1=watch";
                    tc11.Controls.Add(lbt2);
                    tr4.Cells.Add(tc11);
                }
                if (dt.Rows.Count > i + 2)
                {
                    LinkButton lbt3 = new LinkButton();
                    lbt3.Text = "Know More";
                    lbt3.Font.Bold = true;
                    lbt3.ForeColor = System.Drawing.Color.White;
                    lbt3.PostBackUrl = "~/watch_detail.aspx?watch_id=" + dt.Rows[i + 2][0] + "&value=" + Request["company_name"].ToString() + "&value1=watch";
                    tc12.Controls.Add(lbt3);
                    tr4.Cells.Add(tc12);
                }

                //add the all row in table
                Table1.Rows.Add(tr1);
                Table1.Rows.Add(tr2);
                Table1.Rows.Add(tr3);
                Table1.Rows.Add(tr4);
            }
        }*/
    }

