<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faculty_Login.aspx.cs" Inherits="Faculty_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <script>
        function Validation() {
            $('#color').addClass("alert-error");
            $('#Label1').html('<strong> Please Fill All Required Fields! </strong>');
        }

        function passIncorrect() {
            $('#Label1').html("<strong> Incorrect Password!</strong>");
            $('#color').addClass("alert-error");
        }
    </script>
    <style>
        .alert {
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 11.5px;
            padding: 5px 35px 5px 14px;
            margin-bottom: 18px;
            margin-top: 18px;
            text-shadow: 0 1px 0 rgba(255, 255, 255, 0.5);
            background-color: #daf1f5;
            border: 1px solid #fbeed5;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            color: #c09853;
        }

        .alert-error {
            background-color: #f2dede;
            border-color: #eed3d7;
            color: #b94a48;
        }
    </style>
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:wght@200&display=swap" rel="stylesheet" />
    <title>Faculty Mentor Portal</title>
</head>
<body>
    <div class="nav">
        <img src="Project.png" class="logo" />
        <h2>Faculty Mentor Portal</h2>
        <a href="Main-Page.aspx">Home</a>
    </div>
    <div class="loginbox">
        <img src="ava.jpg" class="ava2" />

        <div class="alert" id="color" runat="server">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>

        <form id="LogIn_Faculty" runat="server">
            <h1>Log in to Faculty Mentor  Portal</h1>
            <br />
            <b>Email:</b><br />
            <asp:TextBox ID="TextBox1" runat="server" class="input"></asp:TextBox>
            <br />
            <br />
            <b>Password:</b><br />
            <asp:TextBox ID="TextBox2" runat="server" class="input"></asp:TextBox>
            <br />
            <a href="#">Lost your password?</a>
            <br />
            <a href="#">Don't have an account?</a>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" class="btn" OnClick="LinkButton1_Click">Register</asp:LinkButton>
        </form>
    </div>
</body>
</html>