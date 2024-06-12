using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Data;

public partial class Admin_CRUD_Events : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, GetType(), "Javascript", "$('#exec').fadeIn(3000);", true);
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-0VDSHVH\\MSSQLSERVER03;Initial Catalog=NasCon2;Integrated Security=True");
        conn.Open();
        string roll_no = TextBox1.Text;
        string role = TextBox2.Text;

        SqlCommand cm = new SqlCommand("SELECT Roll_No from Student_Body WHERE Roll_No = '" + roll_no + "'", conn);
        SqlDataAdapter da = new SqlDataAdapter(cm);
        DataTable dt = new DataTable();

        da.Fill(dt);

        if (roll_no == "" || role == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Javascript", "alert('Please Fill All Required Fields! ');", true);
        }
        else if (dt.Rows.Count == 0)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Javascript", "alert('No such student exists in the student body!');", true);
        }
        else
        {
            cm = new SqlCommand("Insert into Executive_Body values( '" + roll_no + "', '" + role + "')", conn);
            da = new SqlDataAdapter(cm);
            cm.ExecuteNonQuery();
            cm.Dispose();
        }

        conn.Close();
    }
}