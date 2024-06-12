using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_CRUD_FacultyMentor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-0VDSHVH\\MSSQLSERVER03;Initial Catalog=NasCon;Integrated Security=True");
        conn.Open();
        string a = TextBox6.Text;
        string b = TextBox8.Text;
        string c = TextBox9.Text;
        string d = TextBox10.Text;
        string f = TextBox11.Text;
        string g = TextBox12.Text;
        string query = "UPDATE Faculty_Mentor SET username = '" + a + "' , password = '" + b + "', Name  = '" + c + "' , Emp_ID = '" + d + "' , Category = '" + f + "' WHERE username = '" + g + "'";
        SqlCommand cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-0VDSHVH\\MSSQLSERVER03;Initial Catalog=NasCon;Integrated Security=True");
        conn.Open();
        string a = TextBox1.Text;
        string b = TextBox2.Text;
        string c = TextBox3.Text;
        string d = TextBox4.Text;
        string f = TextBox5.Text;
        string query = "INSERT INTO Faculty_Mentor VALUES ('" + a + "', '" + b + "', '" + c + "', '" + d + "', '" + f + "')";
        SqlCommand cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-0VDSHVH\\MSSQLSERVER03;Initial Catalog=NasCon;Integrated Security=True");
        conn.Open();
        string a = TextBox7.Text;
        string query = "DELETE FROM Faculty_Mentor WHERE Emp_ID = '" + a + "' ";
        SqlCommand cm = new SqlCommand(query, conn);
        cm.ExecuteNonQuery();
        cm.Dispose();
    }
}