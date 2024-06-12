<%@ Page Language="C#" AutoEventWireup="true" CodeFile="R10.aspx.cs" Inherits="R10" %>

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
        <h2>Total Number of Registrations in a Specific Event</h2>
        <a href="Admin_LogIn.aspx">Logout</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
        <a href="Main-Page.aspx">Home</a>
    </div>
    <form id="form1" runat="server">
        <div class="table12">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="NumberOfRegistrations" HeaderText="NumberOfRegistrations" ReadOnly="True" SortExpression="NumberOfRegistrations" />
                <asp:BoundField DataField="Event" HeaderText="Event" ReadOnly="True" SortExpression="Event" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NasConConnectionString %>" SelectCommand="SELECT COUNT(TER.Ticket_ID) As NumberOfRegistrations, E.Name As Event
                                                                                                                                                FROM Team_Event_Registration TER JOIN Event E
                                                                                                                                                ON E.Event_ID=TER.Event_ID
                                                                                                                                                WHERE E.Name='Ad-Maniac'
                                                                                                                                                GROUP BY E.Name"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
