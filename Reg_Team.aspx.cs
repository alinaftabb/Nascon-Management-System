using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Reg_Team : System.Web.UI.Page
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
        string lead_name = TextBox4.Text;
        string lead_email = TextBox5.Text;
        string cnic = TextBox6.Text;
        string contact = TextBox7.Text;
        string a = Request.Form["category"];
        var b = Request.Form["events"];

        var c = b.Split(':');

        string pname1 = TextBox8.Text;
        string pemail1 = TextBox9.Text;
        string pcnic1 = TextBox10.Text;
        string pcontact1 = TextBox11.Text;

        string pname2 = TextBox12.Text;
        string pemail2 = TextBox13.Text;
        string pcnic2 = TextBox14.Text;
        string pcontact2 = TextBox15.Text;

        string checkPrimaryKey = "Select Lead_CNIC From Participant_Team where Lead_CNIC = '" + cnic + "';";
        SqlCommand cm0 = new SqlCommand(checkPrimaryKey, conn);
        SqlDataAdapter da = new SqlDataAdapter(cm0);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (name == "" || institute == "" || amb == "" || lead_name == "" || lead_email == "" || cnic == "" || contact == "" || a == "" ||
            c[0] == "" || pname1 == "" || pemail1 == "" || pcnic1 == "" || pcontact1 == "" || pname2 == "" || pemail2 == "" || pcnic2 == "" || pcontact2 == "")
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Javascript", "Validation();", true);
        }
        else if (dt.Rows.Count > 0)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Javascript", "alreadyRegistered();", true);
        }
        else
        {
            string query = "INSERT INTO Participant_Team(Team_Name ,Institute ,Ambassador_ID, Lead_Name, Lead_Email, Lead_CNIC, Lead_Contact, Category, Event_ID ) VALUES ('" + name + "','" + institute + "','" + amb + "','" + lead_name + "','" + lead_email + "','" + cnic + "','" + contact + "', '" + a + "','" + c[0] + "')";
            SqlCommand cm = new SqlCommand(query, conn);
            cm.ExecuteNonQuery();
            cm.Dispose();

            string query1 = "INSERT INTO Participant_Team_Members(Team_Name, Team_Lead_CNIC, Member_Name, Member_Email, Member_CNIC, Member_Contact ) VALUES ('" + name + "','" + cnic + "','" + pname1 + "','" + pemail1 + "','" + pcnic1 + "','" + pcontact1 + "')";
            SqlCommand cm1 = new SqlCommand(query1, conn);
            cm1.ExecuteNonQuery();
            cm1.Dispose();

            string query2 = "INSERT INTO Participant_Team_Members_two(Team_Name, Team_Lead_CNIC, Member_Name, Member_Email, Member_CNIC, Member_Contact ) VALUES ('" + name + "','" + cnic + "','" + pname2 + "','" + pemail2 + "','" + pcnic2 + "','" + pcontact2 + "')";
            SqlCommand cm2 = new SqlCommand(query2, conn);
            cm2.ExecuteNonQuery();
            cm2.Dispose();

            Response.Cookies["name"]["1"] = name;
            Response.Cookies["institute"]["2"] = institute;
            Response.Cookies["amb"]["3"] = amb;
            Response.Cookies["part_name"]["4"] = lead_name;
            Response.Cookies["part_email"]["5"] = lead_email;
            Response.Cookies["cnic"]["6"] = cnic;
            Response.Cookies["contact"]["7"] = contact;
            Response.Cookies["a"]["8"] = a;
            Response.Cookies["c"]["9"] = c[0];

            Response.Redirect("Ticket.aspx");
        }

        conn.Close();
    }
}