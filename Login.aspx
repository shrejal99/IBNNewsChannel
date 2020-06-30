<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html>
<head>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
        .box {
            background-image: url('images/n1 (5).jpg');
            min-height: 700px;
        }

        .a {
            font-size: 50px;
            color: white;
            padding-top:5%;
            font-family: 'Times New Roman';
            font-weight: bold;
        }

        .login {
            background: rgba(0,0,0,.6);
            color: white;
            margin-top: 18%;
            padding: 5%;
        }

        .form-control {
            margin-bottom: 9px;
            min-height: 45px;
            background: transparent;
            border: 2px solid #ff4444;
        }

        .input-group-addon {
            background: #ff4444;
            border: 2px solid #ff4444;
            color: white;
        }

        .Btn {
            min-height: 45px;
            width: 100%;
            margin-bottom: 5%;
            background: #ff4444;
            color: white;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid box">
            <div class="row">

                <div class="col-sm-12" style="background:rgba(0, 0, 0, 0.28);min-height:750px"><br />
                    <a href="Home.aspx" style="color:#ff4444;font-size:22px;"><span class="fa fa-home"> BACK TO HOME</span></a>
                   <div class="text-center a">WELCOME TO <b style="color: #ff4444; font-size: 45px;">IBN</b> LIVE <b style="color: #ff4444; font-size: 45;">NEWS</b></div> 

                    <div class="col-sm-4"></div>
                    <div class="col-sm-4">
                        <div class="col-sm-12 login">
                            <div class="h2 text-center">LOGIN <b style="color: #ff4444">HERE.. <span class="fa fa-key fa-spin"></span></b></div>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-user"></span></span>
                                <asp:TextBox ID="TxtUserid" placeholder="ENTER YOUR EMAIL ID.." runat="server" CssClass="form-control"></asp:TextBox>

                            </div>
                            <br>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="fa fa-user"></span></span>

                                <asp:TextBox ID="TxtPasswd" runat="server" TextMode="Password" placeholder="ENTER YOUR PASSWORD." CssClass="form-control"></asp:TextBox>
                            </div>
                            <br>
                            <asp:Button ID="BtnLogin" runat="server"
                                ForeColor="White" Font-Bold="true"
                                Text="Login Now" OnClick="BtnLogin_Click" CssClass="Btn" />

                        </div>
                    </div>
                    <div class="col-sm-4"></div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
