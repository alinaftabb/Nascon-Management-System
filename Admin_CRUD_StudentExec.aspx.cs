using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_CRUD_StudentExec : System.Web.UI.Page
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
        string query = "UPDATE Executive_Body SET Executive_Roll_No = '" + b + "' , Role = '" + c + "' WHERE Executive_Roll_No = '" + a + "'";
        SqlCommand cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-0VDSHVH\\MSSQLSERVER03;Initial Catalog=NasCon;Integrated Security=True");
        conn.Open();
        string a = TextBox7.Text;
        string query = "DELETE FROM Executive_Body WHERE Executive_Roll_No = '" + a + "' ";
        SqlCommand cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-0VDSHVH\\MSSQLSERVER03;Initial Catalog=NasCon;Integrated Security=True");
        conn.Open();
        string b = TextBox5.Text;
        string c = TextBox6.Text;
        string query = "INSERT INTO Executive_Body VALUES ('" + b + "', '" + c + "')";
        SqlCommand cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();
    }
}