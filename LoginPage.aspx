<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="E_Commerce_Site.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <title>Login Page</title>
    <link rel="stylesheet" href="LoginPage.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="login">
                <div class="loginForm">
                    <h2>
                        <span>E</span>-<span>C</span>ommerce <span>Site</span>
                    </h2>
                    <div class="text">
                        <div>
                            <h3>User ID</h3>
                            <asp:TextBox ID="TextBox1" placeholder="Your User ID" autofocus CssClass="logintxt" runat="server"></asp:TextBox>
                        </div>
                        <div>
                            <h3>Password</h3>
                            <asp:TextBox ID="TextBox2" placeholder="Password" CssClass="logintxt" textmode="Password" runat="server"></asp:TextBox>
                        </div>
                        <asp:Button ID="Button1" CssClass="butLogin" runat="server" Text="Login" OnClick="Button1_Click" />
                    </div>
                    <div>
                        <h5 style="text-align:center; margin:8px 0;">
                            <a href="./RegisterPage.aspx">Not have an account Yet... Create One!!!</a>
                        </h5>
                        <h5 style="text-align:center;">
                            <a href="./AdminLogin.aspx">If your'e a Admin.. Then Click Here!!!</a>
                        </h5>   
                    </div>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
