using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Admin_CRUD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-0VDSHVH\\MSSQLSERVER03;Initial Catalog=NasCon;Integrated Security=True");
        conn.Open();
        string a = TextBox1.Text;
        string b = TextBox2.Text;
        string c = TextBox3.Text;
        string d = TextBox4.Text;
        string f = TextBox5.Text;
        string g = TextBox6.Text;
        string query = "UPDATE Sponsors  SET Company = '" + a + "' , Representative = '" + c + "', Rep_CNIC = '" + b + "', Category = '" + f + "' , Package = '" + d + "' WHERE Company = '" + g + "'";
        SqlCommand cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-0VDSHVH\\MSSQLSERVER03;Initial Catalog=NasCon;Integrated Security=True");
        conn.Open();
        string a = TextBox8.Text;
        string b = TextBox9.Text;
        string c = TextBox10.Text;
        string d = TextBox11.Text;
        string f = TextBox12.Text;
        string query = "INSERT INTO Sponsors VALUES ('" + a + "', '" + c + "', '" + b + "', '" + f + "' , '" + d + "')";
        SqlCommand cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-0VDSHVH\\MSSQLSERVER03;Initial Catalog=NasCon;Integrated Security=True");
        conn.Open();
        string a = TextBox13.Text;
        string query = "DELETE FROM Sponsors WHERE Company = '" + a + "' ";
        SqlCommand cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();
    }
}