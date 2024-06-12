using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ticket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Request.Cookies["name"]["1"].ToString();
        Label2.Text = Request.Cookies["institute"]["2"].ToString();
        Label3.Text = Request.Cookies["amb"]["3"].ToString();
        Label4.Text = Request.Cookies["part_name"]["4"].ToString();
        Label5.Text = Request.Cookies["part_email"]["5"].ToString();
        Label7.Text = Request.Cookies["contact"]["7"].ToString();
        Label8.Text = Request.Cookies["a"]["8"].ToString();
        Label9.Text = Request.Cookies["c"]["9"].ToString();
    }
}