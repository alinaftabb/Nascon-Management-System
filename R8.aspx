<%@ Page Language="C#" AutoEventWireup="true" CodeFile="R8.aspx.cs" Inherits="R8" %>
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
        <h2>Participants Who Have Registered for Food Deal</h2>
        <a href="Admin_LogIn.aspx">Logout</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
        <a href="Main-Page.aspx">Home</a>
    </div>
    <form id="form1" runat="server">
        <div class="table10">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CNIC" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Team_Name" HeaderText="Team_Name" SortExpression="Team_Name" />
                <asp:BoundField DataField="Ambassador_ID" HeaderText="Ambassador_ID" SortExpression="Ambassador_ID" />
                <asp:BoundField DataField="Institute" HeaderText="Institute" SortExpression="Institute" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                <asp:BoundField DataField="Institute1" HeaderText="Institute1" SortExpression="Institute1" />
                <asp:BoundField DataField="CNIC" HeaderText="CNIC" ReadOnly="True" SortExpression="CNIC" />
                <asp:BoundField DataField="Deal_Details" HeaderText="Deal_Details" SortExpression="Deal_Details" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NasConConnectionString %>" SelectCommand="SELECT P.Team_Name,P.Ambassador_ID,P.Institute,P.Contact,P.Institute,P.CNIC,FD.Deal_Details
FROM Food_Deal_Bought_Participant FDP JOIN FoodDeal FD
ON FDP.Deal_ID=FD.Deal_ID
JOIN Participant P
ON P.CNIC=FDP.CNIC"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
