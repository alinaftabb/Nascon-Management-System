<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_LogIn.aspx.cs" Inherits="DB_Project.Admin_LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        function Validation() {
            $('#Label1').html('<strong> Please Fill All Required Fields! </strong>');
            $('#error').fadeIn("slow");
        }

        function passIncorrect() {
            $('#Label1').html("<strong> Incorrect Password!</strong>");
            $('#error').fadeIn("slow");
        }
    </script>
    <style>
        body {
            background: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),url("image.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
            position: relative;
            background-attachment: fixed;
            margin: 0px;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
        }

        .loginbox {
            background: linear-gradient(white,transparent);
            width: 30%;
            padding: 2%;
            padding-bottom: 3%;
            padding-top: 0%;
            margin: 6% auto;
            border-radius: 20px;
        }

        .input {
            border: none;
            height: 30px;
            background-color: lightgray;
            width: 100%;
            border-radius: 25px;
            border: 2px solid rgb(39 95 142);
        }

        .alert {
            font-size: 12px;
            width: 100%;
            display: table-row;
            float: left;
            padding: 10px 10px 0px 10px;
            margin-bottom: 10px;
            display: none;
            border: 1px solid #fbeed5;
            border-radius: 25px;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            border-radius: 4px;
            border-width: 0px;
            background: rgb(242,222,222,0.4);
            border-color: none;
            color: #b94a48;
        }

            .alert label {
                display: table-cell;
            }

        .nav {
            background: linear-gradient(rgb(169,169,169,0.6),transparent);
            overflow: hidden;
            padding-bottom: 0%;
        }

        .logo {
            float: left;
            width: 3.75%;
            padding-right: 3%;
            padding-left: 1%;
            padding-top: 0.75%;
            padding-bottom: 1%;
        }

        .btn {
            border-radius: 25px;
            text-align: center;
            margin: auto;
            width: 100%;
            display: block;
            text-align: center;
            height: 30px;
            border: 2px solid black;
            font-size: 16px;
            padding-top: 3%;
            cursor: pointer;
            text-decoration: none;
            border-color: #2196F3;
            color: dodgerblue;
        }

            .btn:hover {
                background: #2196F3;
                color: white;
            }

        .ava {
            position: relative;
            border-radius: 100%;
            margin-top: -25%;
            margin-left: 26.5%;
            height: 45%;
            width: 45%;
        }

        h1 {
            text-align: center;
            margin-top: 0%;
            margin-bottom: 1.5%;
        }

        .nav h2 {
            color: white;
            float: left;
        }

        .links a {
            text-decoration: none;
            display: block;
            color: ghostwhite;
            text-align: center;
        }

            .links a:hover {
                text-decoration: none;
                font-size: 14px;
                color: ghostwhite;
            }

        .nav a {
            float: right;
            text-align: center;
            color: ghostwhite;
            padding: 2%;
            text-decoration: none;
            font-size: 20px
        }

        .close {
            display: table-cell;
            float: right;
            border-radius: 100%;
            border-width: 0px;
            background: rgb(242,222,222,0.4);
            color: #b94a48;
        }
    </style>
    <title>Administration Portal</title>
</head>
<body>

    <nav class="nav">
        <img src="logo.png" class="logo" />
        <h2>Administration Portal</h2>
        <a href="Main-Page.aspx" class="home">Home</a>
    </nav>

    <form id="LogIn_Admin" runat="server" class="loginbox">

        <img src="ava.jpg" class="ava" />

        <h1>Sign In</h1>

        <div class="alert" id="error" runat="server">
            <asp:Button ID="close" runat="server" Text="x" class="close" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>

        <br />

        <asp:TextBox ID="TextBox1" runat="server" class="input" placeholder="  Email"></asp:TextBox>

        <br />
        <br />

        <asp:TextBox ID="TextBox2" runat="server" class="input" placeholder="  Password"></asp:TextBox>

        <br />
        <br />

        <div class="links">
            <small><a href="#">Lost your password?</a></small>
            <br />
            <small><a href="#">Don't have an account? SignUp now!</a></small>
            <br />
        </div>

        <br />

        <asp:LinkButton ID="LinkButton1" runat="server" class="btn" OnClick="LinkButton1_Click">Register</asp:LinkButton>
    </form>
</body>
</html>