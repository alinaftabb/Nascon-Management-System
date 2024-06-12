using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Data;

namespace DB_Project
{
    public partial class Reg_Ind : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-0VDSHVH\\MSSQLSERVER03;Initial Catalog=NasCon2;Integrated Security=True");
            conn.Open();
            string name = TextBox1.Text;
            string institute = TextBox2.Text;
            string amb = TextBox3.Text;
            string part_name = TextBox4.Text;
            string part_email = TextBox5.Text;
            string cnic = TextBox6.Text;
            string contact = TextBox7.Text;
            string a = Request.Form["category"];
            var b = Request.Form["events"];

            var c = b.Split(':');

            string checkPrimaryKey = "Select CNIC From Participant where CNIC = '" + cnic + "';";
            SqlCommand cm1 = new SqlCommand(checkPrimaryKey, conn);
            SqlDataAdapter da = new SqlDataAdapter(cm1);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (name == "" || institute == "" || amb == "" || part_name == "" || part_email == "" ||
                cnic == "" || contact == "" || a == "" || b == "")
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Javascript", "Validation();", true);
            }
            else if (dt.Rows.Count > 0)
            {
                //  color.Style.Add("color", "#b94a48");
                //  color.Style.Add("border-color", "#eed3d7");
                //  color.Style.Add("background-color", "#f2dede");
                ScriptManager.RegisterStartupScript(this, GetType(), "Javascript", "alreadyRegistered();", true);
                //Label1.Text = "<strong> Oh Snap! </strong> A team with the given CNIC already exists!!";
                //Label1.Visible = true;
            }
            else
            {
                string query = "INSERT INTO Participant(Team_Name ,Institute ,Ambassador_ID, Name, Email, CNIC, Contact, Category, Event_ID) VALUES ('" + name + "','" + institute + "','" + amb + "','" + part_name + "','" + part_email + "','" + cnic + "','" + contact + "', '" + a + "','" + c[0] + "')";
                SqlCommand cm = new SqlCommand(query, conn);
                cm.ExecuteNonQuery();
                cm.Dispose();

                Response.Cookies["name"]["1"] = name;
                Response.Cookies["institute"]["2"] = institute;
                Response.Cookies["amb"]["3"] = amb;
                Response.Cookies["part_name"]["4"] = part_name;
                Response.Cookies["part_email"]["5"] = part_email;
                Response.Cookies["cnic"]["6"] = cnic;
                Response.Cookies["contact"]["7"] = contact;
                Response.Cookies["a"]["8"] = a;
                Response.Cookies["c"]["9"] = c[0];

                Response.Redirect("Ticket.aspx");
            }

            conn.Close();
        }
    }
}