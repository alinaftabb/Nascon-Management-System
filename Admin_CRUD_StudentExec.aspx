<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_CRUD_StudentExec.aspx.cs" Inherits="Admin_CRUD_StudentExec" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" href="StyleSheet.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:wght@200&display=swap" rel="stylesheet"/>
    <title>Administration Portal - Student Executive</title>
</head>
<body> 
        <form id="form1" runat="server">
        <div class="nav">
            <img src="Project.png" class="logo"/>
            <h2>Administration Portal - Student Executive</h2>
        </div>
            <div class="loginboxx2" >
            <h1>ADD</h1>
            <br /> 
            <b>Roll No:</b>
            <asp:TextBox ID="TextBox5" runat="server"  class="input"></asp:TextBox>
            <br />
            <b>Role:</b>
            <asp:TextBox ID="TextBox6" runat="server"  class="input"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="ADD" class="btn" />
        </div>

        <div class="loginboxx1" >
            <h1>MODIFY</h1>
            <br /><b> Which Student to Modify?</b>
            <asp:TextBox ID="TextBox1" runat="server"  class="input0"></asp:TextBox>
            <br />
            <br /> 
            <b>Roll No:</b>
            <asp:TextBox ID="TextBox2" runat="server"  class="input"></asp:TextBox>
            <br />
            <b>Role:</b>
            <asp:TextBox ID="TextBox3" runat="server"  class="input"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="MODIFY" class="btn" />
        </div>

        <div class="loginboxx3" >
            <h1>DELETE</h1>
            <br /><b> Which Student to Delete?</b>
            <asp:TextBox ID="TextBox7" runat="server"  class="input0"></asp:TextBox>
            <br />
            <br /> 
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="DELETE" class="btn" />
        </div>
        </form>
</body>
</html>
