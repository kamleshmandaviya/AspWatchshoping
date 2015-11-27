using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Connectivity
/// </summary>
public class Connectivity
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataTable t;
    DataSet ds;

	public Connectivity()
	{
        con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\watchshop.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
        con.Open();
	}
    public DataTable fetch_data(string q)
    {
        da = new SqlDataAdapter(q, con);
        t = new DataTable();
        da.Fill(t);
        return t;
    }

    public bool modify_data(string q)
    {
        cmd = new SqlCommand(q, con);
        if (cmd.ExecuteNonQuery() == 0)
            return false;
        else
            return true;
    }
    public string EncodeString(string s)
    {
        byte[] b = System.Text.Encoding.Default.GetBytes(s);
        String p = Convert.ToBase64String(b, 0, b.Length);
        p = p + " " + p.Length.ToString();
        return p;
    }

    public string DecodeString(string s)
    {
        String[] array = s.Split(' ');
        if (array.Length == 2)
        {
            if (array[0] != "" && array[1] != "")
            {
                if (array[0].Length == Convert.ToInt32(array[1]))
                {
                    byte[] b = Convert.FromBase64String(array[0]);
                    return System.Text.Encoding.Default.GetString(b);
                }
                else
                {
                    return "null";
                }
            }
            else
            {
                return "null";
            }
        }
        else
        {
            return "null";
        }
    }
}
