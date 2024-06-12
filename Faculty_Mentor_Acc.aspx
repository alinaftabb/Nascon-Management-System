<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faculty_Mentor_Acc.aspx.cs" Inherits="Faculty_Mentor_Acc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" href="StyleSheet.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:wght@200&display=swap" rel="stylesheet"/>
    <title>Faculty Mentor Portal</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="nav">
        <img src="Project.png" class="logo"/>
        <h2>Faculty Mentor Portal</h2>
        <a href="Faculty_Login.aspx">Logout</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
        <a href="Main-Page.aspx">Home</a>
    </div>
            <h1 class="heading"><b> Account: <asp:Label ID="L" runat="server"></asp:Label></b></h1>
            <h1 class="heading"><b> Category: <asp:Label ID="L2" runat="server"></asp:Label></b></h1>
    <div class="query">
            <br /><br />
            <ul>
               <li><a href="R1.aspx">Information of all the registered participants</a></li> 
               <li><a href="R3.aspx">List of the events and their information in specific category</a></li>
               <li><a href="R5.aspx">List of all Student Executives (By Event, By Category, By Management Department)</a></li>
               <li><a href="R7.aspx">Search specific participant by name or unique ID</a></li>
               <li><a href="R8.aspx">List of those participants who have registered for food deal</a></li>
               <li><a href="R9.aspx">List of events to be held on specific date</a></li>
               <li><a href="R10.aspx">Total number of registrations in a specific event</a></li>
               <li><a href="R11.aspx">Name of faculty mentor, event head, and details of a specific event</a></li>
            </ul>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
