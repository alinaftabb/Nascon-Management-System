<%@ Page Language="C#" AutoEventWireup="true" CodeFile="R7.aspx.cs" Inherits="R7" %>
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
        <h2>Specific Participant by Name/Unique ID</h2>
        <a href="Admin_LogIn.aspx">Logout</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
        <a href="Main-Page.aspx">Home</a>
    </div>
    <form id="form1" runat="server">
        <div class="table9">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CNIC" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Team_Name" HeaderText="Team_Name" SortExpression="Team_Name" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Institute" HeaderText="Institute" SortExpression="Institute" />
                <asp:BoundField DataField="Ambassador_ID" HeaderText="Ambassador_ID" SortExpression="Ambassador_ID" />
                <asp:BoundField DataField="CNIC" HeaderText="CNIC" ReadOnly="True" SortExpression="CNIC" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NasConConnectionString %>" SelectCommand="SELECT *
FROM Participant 
WHERE Name='Alina Aftab'
"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
