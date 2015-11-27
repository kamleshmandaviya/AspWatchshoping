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

public partial class adminupdatewatch1 : System.Web.UI.Page
{

    Connectivity con = new Connectivity();
    DataTable dt = new DataTable();
    String q;
    int i, j;
    String category;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            ddlcategory.Items.Add("select the company");
            ddlcategory.Items.Add("sonata");
            ddlcategory.Items.Add("rado");
            
            ddlcategory.Items.Add("addidas");
            ddlcategory.Items.Add("rolex");
        }
        //ddlcategory.Items
        if (Request["watch_company"] != null && Convert.ToBoolean(Application["admin"]) == false)
        {
            category = Request["watch_company"].ToString();
            if (category == "sonata")
            {
                ddlcategory.Items[1].Selected = true;
                Application["admin"] = true;
            }
            else if (category == "rado")
            {
                ddlcategory.Items[2].Selected = true;
                Application["admin"] = true;
            }
            else if (category == "addidas")
            {
                ddlcategory.Items[3].Selected = true;
                Application["admin"] = true;
            }
            else if (category == "rolex")
            {
                ddlcategory.Items[4].Selected = true;
                Application["admin"] = true;
            }
            create_table();
        }
        display_panel();
    }
    public void create_table()
    {
        q = "select * from watch_detail where company_name='" + category + "'";
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
                Image img = new Image();
                img.ImageUrl = dt.Rows[i][5].ToString();
                img.Width = 270;
                img.Height = 200;
                tc1.Controls.Add(img);
                Label lbl1 = new Label();
                lbl1.Text = dt.Rows[i][1].ToString();
                lbl1.ForeColor = System.Drawing.Color.Black;
                tc2.Controls.Add(lbl1);
                lbl1.Width = 300;

                Label lbl2 = new Label();
                lbl2.Text = dt.Rows[i][3].ToString();
                lbl2.ForeColor = System.Drawing.Color.Black;
                lbl2.Width = 170;
                tc3.Controls.Add(lbl2);
                Label lbl3 = new Label();
                lbl3.Text = dt.Rows[i][4].ToString();
                lbl3.ForeColor = System.Drawing.Color.Black;
                lbl3.Width = 200;
                tc4.Controls.Add(lbl3);
                LinkButton lbt1 = new LinkButton();
                lbt1.Text = "Update it";
                lbt1.ForeColor = System.Drawing.Color.White;
                lbt1.CssClass = "linkbutton";
                lbt1.Width = 125;
                lbt1.PostBackUrl = "~/adminmodifywatch.aspx?watch_id=" + dt.Rows[i][0].ToString();
                tc5.Controls.Add(lbt1);
                LinkButton lbt2 = new LinkButton();
                lbt2.Text = "Delete it";
                lbt2.ForeColor = System.Drawing.Color.White;
                lbt2.CssClass = "linkbutton";
                lbt2.Width = 100;
                lbt2.PostBackUrl = "~/admindeletewatch.aspx?model_id=" + dt.Rows[i][1].ToString();
                tc6.Controls.Add(lbt2);
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
        display_panel();
    }
    public void display_panel()
    {
        if (ddlcategory.Text != "select the category" && Table1.Rows.Count != 1)
        {
            Table1.Visible = true;
        }
        else
        {
            Table1.Visible = false;
        }
    }
    protected void ddlcategory_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if (ddlcategory.SelectedItem.ToString() == "sonata")
        {
            category = "sonata";
            create_table();
        }
        else if (ddlcategory.SelectedItem.ToString() == "rado")
        {
            category = "rado";
            create_table();
        }
        else if (ddlcategory.SelectedItem.ToString() == "addidas")
        {
            category = "addidas";
            create_table();
        }
        else if (ddlcategory.SelectedItem.ToString() == "rolex")
        {
            category = "rolex";
            create_table();
        }
    }
}
