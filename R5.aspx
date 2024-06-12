<%@ Page Language="C#" AutoEventWireup="true" CodeFile="R5.aspx.cs" Inherits="R5" %>

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
        <h2>All Student Executives</h2>
        <a href="Admin_LogIn.aspx">Logout</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
        <a href="Main-Page.aspx">Home</a>
    </div>
    <form id="form1" runat="server">
        <h2>Event</h2>
        <div class="table5">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Roll_No" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Name1" HeaderText="Name1" SortExpression="Name1" />
                <asp:BoundField DataField="Roll_No" HeaderText="Roll_No" ReadOnly="True" SortExpression="Roll_No" />
                <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NasConConnectionString %>" SelectCommand="SELECT E.Name,SB.Name,SB.Roll_No, SB.Batch
FROM Student_Body SB JOIN Student_Event_Head SEH
ON SB.Roll_No=SEH.Student_Head_Roll_No
JOIN Event E
ON E.Event_ID=SEH.Event_ID
WHERE E.Name='Bug Hunt'"></asp:SqlDataSource>
         </div>
        <br />
        <h2>Category</h2>
        <div class="table6">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Roll_No" HeaderText="Roll_No" SortExpression="Roll_No" />
                <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NasConConnectionString %>" SelectCommand="
SELECT EC.Category,SB.Name,SB.Roll_No,SB.Batch
FROM Student_Body SB JOIN Category_Secretary CS
ON SB.Roll_No=CS.Secretary_Roll_No
JOIN Event_Category EC
ON CS.Category=EC.Category
WHERE EC.Category='Business'"></asp:SqlDataSource>
        </div>
        <br />
        <h2>Management Department</h2>
        <div class="table7">
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Roll_No" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Roll_No" HeaderText="Roll_No" ReadOnly="True" SortExpression="Roll_No" />
                <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:NasConConnectionString %>" SelectCommand="SELECT SB.Name,SB.Roll_No,SB.Batch
FROM Student_Body SB JOIN  Team_Members TM
ON SB.Roll_No=TM.Member_Roll_No
WHERE TM.NasCon_Department='Sponsorship'
"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>