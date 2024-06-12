<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ticket.aspx.cs" Inherits="Ticket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" />
    <script src="js/mdb.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Oswald');

        .nav {
            padding: 0% 0% 10% 0%
        }

        * {
            margin: 0;
            padding: 0;
            border: 0;
            box-sizing: border-box
        }

        body {
            background-color: #dadde6;
            font-family: arial
        }

        .fl-left {
            float: left
        }

        .fl-center {
            vertical-align: middle;
        }

        .fl-right {
            float: right
        }

        h1 {
            text-transform: uppercase;
            font-weight: 900;
            border-left: 10px solid #fec500;
            padding-left: 10px;
            margin-bottom: 30px
        }

        .row {
            overflow: hidden;
        }

        .card {
            display: table-row;
            align-items: center;
            justify-content: center;
            background-color: #fff;
            color: #989898;
            font-family: 'Oswald', sans-serif;
            text-transform: uppercase;
            position: relative;
            transform: translateX(38%);
        }

        .date {
            display: table-cell;
            width: 25%;
            position: relative;
            text-align: center;
            border-right: 2px dashed #dadde6
        }

            .date:after {
                top: auto;
                bottom: -15px
            }

            .date time {
                display: block;
                position: absolute;
                top: 50%;
                left: 50%;
                -webkit-transform: translate(-50%, -50%);
                -ms-transform: translate(-50%, -50%);
                transform: translate(-50%, -50%)
            }

                .date time span:last-child {
                    color: #2b2b2b;
                    font-weight: 900;
                    font-size: 140%
                }

                .date time small {
                    color: #2b2b2b;
                    font-weight: 700;
                    font-size: 100%
                }

        .card-cont {
            display: table-cell;
            width: 400px;
            float: left;
            font-size: 85%;
            padding: 10px 10px 30px 50px
        }

        .label4 {
            display: table-cell;
            font-size: 35px;
            float: right;
            color: black;
        }

        .card-cont h3 {
            color: #3C3C3C;
            font-size: 130%
        }

        .card-cont > div {
            display: table-row
        }

        .card-cont .even-date time,
        .card-cont .even-info p,
        .card .label4 {
            display: table-cell
        }

        .card-cont .even-info p {
            padding: 30px 30px 0 0
        }

        .card .label4 p {
            padding: 0px 5px 0 0
        }

        .label4 a {
            display: block;
            text-decoration: none;
            height: 30px;
            width: 100px;
            background-color: #ff0000;
            color: #fff;
            text-align: center;
            position: relative;
            border-radius: 5px;
            font-size: 55%;
            padding: 1% 3% 1% 3%
        }

        .row:last-child .card:first-child .card-cont a {
            background-color: #037FDD
        }
    </style>
    <title>Ticket</title>
</head>
<body>
    <div class="nav">
        <img src="project.png" class="logo" />
        <h2>Ticket</h2>
        <a href="Admin_LogIn.aspx">Logout</a>
        <a href="#contact">Contact</a>
        <a href="#about">About</a>
        <a href="Main-Page.aspx">Home</a>
    </div>
    <form id="form1" runat="server">
        <div class="row">
            <article class="card fl-center">
                <section class="date">
                    <time><small>Team Name:</small>
                        <span>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </span>
                    </time>
                </section>
                <section class="card-cont">
                    <small>Category:
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></small>
                    <h3>Event ID:
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></h3>

                    <div class="even-date">
                        <time>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            <span>Ambassador ID:
                                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></span>
                        </time>
                    </div>
                    <div class="even-info">
                        <p>
                            Contact:
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </p>
                        <p>
                            Email:
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </p>
                    </div>
                </section>
                <section class="label4">
                    <p>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </p>
                    <p class="l"><a>ticket</a></p>
                </section>
            </article>
        </div>
    </form>
</body>
</html>