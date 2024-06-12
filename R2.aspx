<%@ Page Language="C#" AutoEventWireup="true" CodeFile="R2.aspx.cs" Inherits="R2" %>

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
        <h2>Total Amount Collected by Sponsors of Each Category</h2>
        <a href="Admin_LogIn.aspx">Logout</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
        <a href="Main-Page.aspx">Home</a>
    </div>
    <form id="form1" runat="server">
        <div class="table2">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="198px">
            <Columns>
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="SumSponsor" HeaderText="SumSponsor" ReadOnly="True" SortExpression="SumSponsor" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NasConConnectionString %>" SelectCommand="Select S.Category, Sum(SP.Price) As SumSponsor
From Sponsors S, Sponsors_Packages SP
Group by S.Category"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
