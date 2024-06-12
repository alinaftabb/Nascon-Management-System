<%@ Page Language="C#" AutoEventWireup="true" CodeFile="R1.aspx.cs" Inherits="R1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet_R.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:wght@200&display=swap" rel="stylesheet" />
    <title>NaSCon'22</title>
</head>
<body>
    <div class="nav">
        <img src="Project.png" class="logo" />
        <h2>All Registered Participants</h2>
        <a href="Admin_LogIn.aspx">Logout</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
        <a href="Main-Page.aspx">Home</a>
    </div>
    <form id="form1" runat="server">
        <div class="table1">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CNIC" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="Team_Name" HeaderText="Team_Name" SortExpression="Team_Name" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Institute" HeaderText="Institute" SortExpression="Institute" />
                    <asp:BoundField DataField="Ambassador_ID" HeaderText="Ambassador_ID" SortExpression="Ambassador_ID" />
                    <asp:BoundField DataField="CNIC" HeaderText="CNIC" ReadOnly="True" SortExpression="CNIC" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:BoundField DataField="Event_ID" HeaderText="Event_ID" SortExpression="Event_ID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NasCon2ConnectionString %>" SelectCommand="SELECT * FROM [Participant]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>