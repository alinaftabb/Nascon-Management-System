<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Acc.aspx.cs" Inherits="Admin_Acc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" href="StyleSheet.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com"/>
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:wght@200&display=swap" rel="stylesheet"/>
        <title>Administration Portal</title>
</head>
<body>
    <div class="nav">
        <img src="Project.png" class="logo"/>
        <h2>Administration Portal</h2>
        <a href="Admin_LogIn.aspx">Logout</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
        <a href="Main-Page.aspx">Home</a>
    </div>
        <br />
    <div>
        <div class="sidebar">
            <p>Do you want to add, delete or modify any of the following?</p>
            <a href="Admin_CRUD_Sponsors.aspx" >Sponsors</a> 
            <br />
            <a href="Admin_CRUD_StudentExec.aspx">Student Executive</a> 
            <br />
            <a href="Admin_CRUD_FacultyMentor.aspx" >Faculty Mentor</a> 
            <br />
            <a href="Admin_CRUD_Events.aspx">Events</a> 
            <br />
        </div>
        <div class="query">
            <br />
            <br />
            <ul>
               <li><a href="R1.aspx">Information of all the registered participants</a></li> 
               <li><a href="R2.aspx">Total amount collected by sponsors for each category</a></li>
               <li><a href="R3.aspx">List of the events and their information in specific category</a></li>
               <li><a href="R4.aspx">List of all the Faculty Mentors or of specific category</a></li>
               <li><a href="R5.aspx">List of all Student Executives (By Event, By Category, By Management Department)</a></li>
               <li><a href="R6.aspx">List of sponsors and their information</a></li>
               <li><a href="R7.aspx">Search specific participant by name or unique ID</a></li>
               <li><a href="R8.aspx">List of those participants who have registered for food deal</a></li>
               <li><a href="R9.aspx">List of events to be held on specific date</a></li>
               <li><a href="R10.aspx">Total number of registrations in a specific event</a></li>
               <li><a href="R11.aspx">Name of faculty mentor, event head, and details events</a></li>
            </ul>
            <br />
            <br />
        </div>

    </div>
</body>
</html>
