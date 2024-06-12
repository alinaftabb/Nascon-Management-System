<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main-Page.aspx.cs" Inherits="Main_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:wght@200&display=swap" rel="stylesheet" />
    <title>Nascon'22</title>
</head>
<body>
    <div class="nav1">
        <a href="Reg_Ind.aspx">Individual
            <br />
            Registration</a>
        <a href="Reg_Team.aspx">Team
            <br />
            Registration</a>
        <a href="Admin_LogIn.aspx">Administration
            <br />
            Portal</a>
        <a href="Faculty_Login.aspx">Faculty
            <br />
            Mentors
            <br />
            Portal</a>
        <a href="StudentBody_Login.aspx">Student
            <br />
            Executive</a>
    </div>
    <form id="form1" runat="server">
        <div>
            <h1 class="head">NaSCon'22</h1>
        </div>
    </form>
</body>
</html>