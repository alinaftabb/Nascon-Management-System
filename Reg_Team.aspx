<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg_Team.aspx.cs" Inherits="Reg_Team" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Register.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        function Validation() {
            $('#color').addClass("alert-error");
            $('#Label1').html('<strong>Please Fill All Require Fields!</strong>');
        }

        function alreadyRegistered() {
            $('#Label1').html("<strong> Oh Snap! </strong> A team with the given CNIC already exists!!");
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
    <link rel="stylesheet" href="StyleSheet.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:wght@200&display=swap" rel="stylesheet" />
    <title>Nascon Individual Event Registration</title>
</head>
<body>
    <div class="nav">
        <img src="Project.png" class="logo" />
        <h2>Nascon Individual Event Registration</h2>
        <a href="Main-Page.aspx">Home</a>
    </div>
    <div class="main-body">
        <div class="details">
            <h3>Click here to view registration timeline Registration</h3>
            <p>
                Guidelines:<br />
                1. Select the event you want to register.<br />
                2. Fill out the one page registration form.<br />
                3. Print the generated ticket and bring it with you on event day.<br />
                4. Present the ticket to finance desk to get participant cards for all participants.<br />
                5. Payment can be done at finance desk or before the event (see payment options after registering)<br />
                <br />
                What to bring on event day:<br />
                1. Bring the ticket generated on website as registration proof.<br />
                2. It is compulsory to bring a photo proof for identification. Either CNIC or Institute ID Card (in case of under 18 age)<br />
                <br />
                Note:<br />
                1. If the participant is under 18, please enter valid Institute ID / Roll # in place of CNIC.<br />
                2. Ambassadors must enter their unique Ambassador ID to make registrations on their behalf.<br />
                3. If a participant wants to register in multiple events, please choose food & lodging in one event only. Otherwise, fee would be added to each registration<br />
            </p>
        </div>
        <div class="form1">

            <div>
                <img src="ava.jpg" class="ava1" />
            </div>
            <br />
            <div class="alert" id="color" runat="server">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
            <form id="Team_Reg" runat="server">
                <div>
                    <label for="category"><b>Category: </b></label>
                    <br />
                    <select name="category" id="category" onchange="dynamicdropdown(this.options[this.selectedIndex].value);">
                        <option value="">Select Category  </option>
                        <option value="EE">EE               </option>
                        <option value="CS">CS               </option>
                        <option value="Business">Business         </option>
                        <option value="Social">Social           </option>
                        <option value="Sports">Sports           </option>
                    </select>
                </div>

                <br />

                <div>
                    <label for="events"><b>Events: </b></label>
                    <br />
                    <script type="text/javascript" language="JavaScript">
                        document.write('<select name="events" id="events"><option value="">Select Events</option></select>')
                    </script>
                </div>

                <br />

                <b>Team Name:<br />
                </b>
                <asp:TextBox ID="TextBox1" runat="server" class="input"></asp:TextBox>
                <br />
                <br />
                <br />
                <b>Institute Name:<br />
                </b>
                <asp:TextBox ID="TextBox2" runat="server" class="input"></asp:TextBox>
                <br />
                <br />
                <br />
                <b>Ambassador ID:<br />
                </b>
                <asp:TextBox ID="TextBox3" runat="server" class="input"></asp:TextBox>
                <br />
                <br />
                <br />
                <b>Team Lead Name:<br />
                </b>
                <asp:TextBox ID="TextBox4" runat="server" class="input"></asp:TextBox>
                <br />
                <br />
                <br />
                <b>Team Lead Email:<br />
                </b>
                <asp:TextBox ID="TextBox5" runat="server" class="input"></asp:TextBox>
                <br />
                <br />
                <br />
                <b>Team Lead CNIC:<br />
                </b>
                <asp:TextBox ID="TextBox6" runat="server" class="input"></asp:TextBox>
                <br />
                <br />
                <br />
                <b>Team Lead Contact No:<br />
                    <asp:TextBox ID="TextBox7" runat="server" class="input"></asp:TextBox>
                </b>
                <br />
                <br />
                <br />
                <b>Member 2 Name:<br />
                    <asp:TextBox ID="TextBox8" runat="server" class="input"></asp:TextBox>
                </b>
                <br />
                <br />
                <br />
                <b>Member 2 Email:<br />
                    <asp:TextBox ID="TextBox9" runat="server" class="input"></asp:TextBox>
                </b>
                <br />
                <br />
                <br />
                <b>Member 2 CNIC:<br />
                    <asp:TextBox ID="TextBox10" runat="server" class="input"></asp:TextBox>
                </b>
                <br />
                <br />
                <br />
                <b>Member 2 Contact No:<br />
                    <asp:TextBox ID="TextBox11" runat="server" class="input"></asp:TextBox>
                </b>
                <br />
                <br />
                <br />
                <b>Member 3 Name:<br />
                    <asp:TextBox ID="TextBox12" runat="server" class="input"></asp:TextBox>
                </b>
                <br />
                <br />
                <br />
                <b>Member 3 Email:<br />
                    <asp:TextBox ID="TextBox13" runat="server" class="input"></asp:TextBox>
                </b>
                <br />
                <br />
                <br />
                <b>Member 3 CNIC:<br />
                    <asp:TextBox ID="TextBox14" runat="server" class="input"></asp:TextBox>
                </b>
                <br />
                <br />
                <br />
                <b>Member 3 Contact No:<br />
                    <asp:TextBox ID="TextBox15" runat="server" class="input"></asp:TextBox>
                </b>
                <br />
                <br />
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" class="btn">Register</asp:LinkButton>
            </form>
        </div>
    </div>
</body>
</html>