using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Faculty_Mentor_Acc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        L.Text = Request.QueryString["name"];
        string a = Request.QueryString["Category"];
        L2.Text =  a;
    }
}