<%@ Page Language="C#" AutoEventWireup="true" CodeFile="R6.aspx.cs" Inherits="R6" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" href="StyleSheet_R.css" />
   <link rel="preconnect" href="https://fonts.googleapis.com"/>
   <link rel="preconnect" href="https://fonts.gstatic.com" />
   <link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:wght@200&display=swap" rel="stylesheet"/>
   <title>NaSCon'22</title>
</head>
<body>
    <div class="nav">
        <img src="Project.png" class="logo"/>
        <h2>Sponsors and Their Information</h2>
        <a href="Admin_LogIn.aspx">Logout</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
        <a href="Main-Page.aspx">Home</a>
    </div>
    <form id="form1" runat="server">
        <div class="table8">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Rep_CNIC,Category" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
                <asp:BoundField DataField="Representative" HeaderText="Representative" SortExpression="Representative" />
                <asp:BoundField DataField="Rep_CNIC" HeaderText="Rep_CNIC" ReadOnly="True" SortExpression="Rep_CNIC" />
                <asp:BoundField DataField="Category" HeaderText="Category" ReadOnly="True" SortExpression="Category" />
                <asp:BoundField DataField="Package" HeaderText="Package" SortExpression="Package" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NasConConnectionString %>" SelectCommand="SELECT * FROM [Sponsors]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
