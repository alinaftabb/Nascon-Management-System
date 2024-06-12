using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Faculty_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-0VDSHVH\\MSSQLSERVER03;Initial Catalog=NasCon;Integrated Security=True");
        conn.Open();
        string id = TextBox1.Text;
        string pass = TextBox2.Text;
        SqlCommand cmd = new SqlCommand("SELECT username, password, Category FROM Faculty_mentor WHERE username = '" + id + "' AND password = '" + pass + "'", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();

        da.Fill(dt);

        if (id == "" || pass == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Javascript", "Validation();", true);
        }
        else if (dt.Rows.Count > 0)
        {
            Response.Write("Login Sucess");
            Response.Redirect("Faculty_Mentor_Acc.aspx?name=" + id + "&Category=" + dt.Rows[0][2]);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Javascript", "passIncorrect();", true);
        }
        conn.Close();
    }
}