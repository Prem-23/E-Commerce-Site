<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="E_Commerce_Site.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <title>Administration Login Page</title>
    <link rel="stylesheet" href="LoginPage.css" type="text/css" />
    <link rel="stylesheet" href="AdminLogin.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login">
            <h2 class="admin" style="text-align:center;"><span>Administration</span> Login Page</h2>
             <section>
                 <asp:Image ID="Image1" runat="server" />
                <div class="loginForm">
                    <h2>
                        <span>E</span>-<span>C</span>ommerce <span>Site</span>
                    </h2>
                    <div class="text">
                        <div>
                            <h3>Admin ID</h3>
                            <asp:TextBox ID="TextBox1" placeholder="Admin ID" autofocus CssClass="logintxt" runat="server"></asp:TextBox>
                        </div>
                        <div>
                            <h3>Password</h3>
                            <asp:TextBox ID="TextBox2" CssClass="logintxt" placeholder="Admin Password" textmode="Password" runat="server"></asp:TextBox>
                            
                        </div>
                        <asp:Button ID="Button1" CssClass="butLogin" runat="server" Text="Login" OnClick="Button1_Click" />
                    </div>
                    <h5 style="text-align:center;">
                        <a href="./LoginPage.aspx">If your'e not an admin..<br />Then Go back to Login Page!!!</a>
                    </h5>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
