<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_CRUD_Events.aspx.cs" Inherits="Admin_CRUD_Events" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:wght@200&display=swap" rel="stylesheet" />
    <title>Administration Portal - Student Executive - CRUD</title>
    <script>
        $("#form1").submit((e) => {
            e.preventDefault();
        });
    </script>
    <style>
        .abc {
            color: white;
        }

        body {
            background: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),url("image.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center center;
            position: relative;
            background-attachment: fixed;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
        }

        * {
            margin: 0.5%;
            margin-bottom: 0%;
        }

        .table {
            color: white;
            width: 100%;
        }

            .table td {
                text-align: center;
            }

        h3 {
            color: ghostwhite;
            text-align: center
        }

        .loginbox {
            background: linear-gradient(white,transparent);
            width: 35%;
            padding: 2%;
            height: 60%;
            padding-bottom: 3%;
            padding-top: 0%;
            margin: 6% auto;
            display: none;
            border-radius: 20px;
        }

        .input {
            border: none;
            height: 30px;
            background-color: lightgray;
            width: 31%;
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

        .btn {
            border-radius: 25px;
            text-align: center;
            margin: auto;
            text-align: center;
            height: 25px;
            border: 2px solid black;
            font-size: 16px;
            padding-top: 2%;
            cursor: pointer;
            text-decoration: none;
            border-color: #2196F3;
            color: dodgerblue;
        }

            .btn:hover {
                background: #2196F3;
                color: white;
            }

        .close {
            display: table-cell;
            float: right;
            border-radius: 100%;
            border-width: 0px;
            background: rgb(242,222,222,0.4);
            color: #b94a48;
        }

        .sbys {
            display: flex;
            flex-wrap: wrap;
        }

        h3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="sbys">
        <div>
            <h3>Executive Body
            <asp:Button ID="Button11" runat="server" Text="Add" OnClick="Button11_Click" /></h3>

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Roll_No" DataSourceID="SqlDataSource2" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="Roll_No" HeaderText="Roll No" ReadOnly="True" SortExpression="Roll_No" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
                    <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" Text="Edit" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server" Text="Delete" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

            <br />

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NasCon2ConnectionString %>" SelectCommand="SELECT Student_Body.Roll_No, Student_Body.Name, Student_Body.Batch, Executive_Body.Role FROM Student_Body INNER JOIN Executive_Body ON Executive_Body.Executive_Roll_No = Student_Body.Roll_No"></asp:SqlDataSource>
            <h3>Category Secretary
            <asp:Button ID="Button12" runat="server" Text="Add" /></h3>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="Roll_No" HeaderText="Roll No" SortExpression="Roll_No" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
                    <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:Button ID="Button3" runat="server" Text="Edit" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="Button4" runat="server" Text="Delete" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:NasCon2ConnectionString %>" SelectCommand="SELECT Student_Body.Roll_No, Student_Body.Name, Student_Body.Batch, Category_Secretary.Category FROM Student_Body INNER JOIN Category_Secretary ON Category_Secretary.Secretary_Roll_No = Student_Body.Roll_No"></asp:SqlDataSource>

            <br />

            <h3>Event Heads
            <asp:Button ID="Button13" runat="server" Text="Add" /></h3>
            <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="Roll_No" HeaderText="Roll No" SortExpression="Roll_No" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
                    <asp:BoundField DataField="Event_ID" HeaderText="Event_ID" SortExpression="Event_ID" />
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:Button ID="Button5" runat="server" Text="Edit" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="Button6" runat="server" Text="Delete" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NasCon2ConnectionString %>" SelectCommand="SELECT Student_Body.Roll_No, Student_Body.Name, Student_Body.Batch, Student_Event_Head.Event_ID FROM Student_Body INNER JOIN Student_Event_Head ON Student_Event_Head.Student_Head_Roll_No = Student_Body.Roll_No"></asp:SqlDataSource>

            <br />

            <h3>Management Team
            <asp:Button ID="Button14" runat="server" Text="Add" /></h3>
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="Roll_No" DataSourceID="SqlDataSource5" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="Roll_No" HeaderText="Roll No" ReadOnly="True" SortExpression="Roll_No" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
                    <asp:BoundField DataField="NasCon_Department" HeaderText="NasCon Department" SortExpression="NasCon_Department" />
                    <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:Button ID="Button9" runat="server" Text="Edit" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="Button10" runat="server" Text="Delete" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:NasCon2ConnectionString %>" SelectCommand="SELECT Student_Body.Roll_No, Student_Body.Name, Student_Body.Batch, Team_Members.NasCon_Department, Team_Members.Role FROM Student_Body INNER JOIN Team_Members ON Student_Body.Roll_No = Team_Members.Member_Roll_No"></asp:SqlDataSource>

            <br />

            <h3>Team Members

            <asp:Button ID="Button15" runat="server" Text="Add" /></h3>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Roll_No" DataSourceID="SqlDataSource4" CssClass="table">
                <Columns>
                    <asp:BoundField DataField="Roll_No" HeaderText="Roll No" ReadOnly="True" SortExpression="Roll_No" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:Button ID="Button7" runat="server" Text="Edit" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:Button ID="Button8" runat="server" Text="Delete" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:NasCon2ConnectionString %>" SelectCommand="select * from Student_Body where Roll_No not in (select Student_Head_Roll_No from Student_Event_Head ) and Roll_No not in (select Executive_Roll_No from Executive_Body) and Roll_No not in (select Secretary_Roll_No from Category_Secretary )"></asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>

        <div id="exec" class="loginbox">

            <h4>Executive Body</h4>

            <asp:TextBox ID="TextBox1" runat="server" class="input" placeholder="  Roll No"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" class="input" placeholder="  Role"></asp:TextBox>
            <asp:LinkButton ID="LinkButton1" runat="server" class="btn" OnClick="LinkButton1_Click"><b>Add</b></asp:LinkButton>
        </div>
    </form>
</body>
</html>