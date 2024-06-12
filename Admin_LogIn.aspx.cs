using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DB_Project
{
    public partial class Admin_LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-0VDSHVH\\MSSQLSERVER03;Initial Catalog=NasCon2;Integrated Security=True");
            conn.Open();
            string id = TextBox1.Text;
            string pass = TextBox2.Text;
            SqlCommand cmd = new SqlCommand("SELECT username, password FROM Admin WHERE username = '" + TextBox1.Text + "' AND password = '" + TextBox2.Text + "'", conn);
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
                Response.Redirect("Admin_Acc.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Javascript", "passIncorrect();", true);
            }
            conn.Close();
        }
    }
}