<%@ Page Language="C#" AutoEventWireup="true" CodeFile="R11.aspx.cs" Inherits="R11" %>

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
        <h2>Name of Faculty Mentor, Event Head, and Details of Events</h2>
        <a href="Admin_LogIn.aspx">Logout</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
        <a href="Main-Page.aspx">Home</a>
    </div>
    <form id="form1" runat="server">
        <div class="table13">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Emp_ID" HeaderText="Emp_ID" SortExpression="Emp_ID" />
                <asp:BoundField DataField="Faculty Mentor" HeaderText="Faculty Mentor" SortExpression="Faculty Mentor" />
                <asp:BoundField DataField="Event Head " HeaderText="Event Head " SortExpression="Event Head " />
                <asp:BoundField DataField="Event_ID" HeaderText="Event_ID" SortExpression="Event_ID" />
                <asp:BoundField DataField="Event" HeaderText="Event" SortExpression="Event" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NasConConnectionString %>" SelectCommand="SELECT FM.Emp_ID,FM.Name AS 'Faculty Mentor' ,SB.Name as 'Event Head ',E.Event_ID,E.Name as 'Event'
                                                                                                                                                FROM Faculty_Mentor FM JOIN Event_Mentor EM
                                                                                                                                                ON FM.Emp_ID=EM.Emp_ID
                                                                                                                                                JOIN Event E
                                                                                                                                                ON E.Event_ID=EM.Event_ID
                                                                                                                                                JOIN Student_Event_Head SEH
                                                                                                                                                ON SEH.Event_ID=E.Event_ID
                                                                                                                                                JOIN Student_Body SB
                                                                                                                                                ON SB.Roll_No=SEH.Student_Head_Roll_No"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>