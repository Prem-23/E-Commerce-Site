<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="E_Commerce_Site.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <title>Register Page</title>
    <link rel="stylesheet" href="LoginPage.css" type="text/css" />
    <link rel="stylesheet" href="RegisterPage.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <section class="login">
                <div class="loginForm-reg">
                    <h2>
                        <span>E</span>-<span>C</span>ommerce <span>Site</span>
                    </h2>
                    <div class="text">
                        <div class="txtdiv">
                            <div>
                                <h3>Full Name</h3>
                                <asp:TextBox ID="TextBox1" CssClass="logintxt texth3" runat="server" placeholder="eg. Jack Sparrow" autofocus></asp:TextBox>
                            </div>
                            <div>
                                <h3>Phone No</h3>
                                <asp:TextBox ID="TextBox2" CssClass="logintxt" TextMode="Phone" placeholder="should be in 10digits" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="txtdiv">
                            <div>
                                <h3>Mail ID</h3>
                                <asp:TextBox ID="TextBox3" placeholder="eg. abc@gmail.com" CssClass="logintxt" TextMode="Email" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                <h3>Date of Birth</h3>
                                <asp:TextBox ID="TextBox4" CssClass="logintxt" TextMode="Date" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <h3>Full Address</h3>
                            <asp:TextBox ID="TextBox5" placeholder="Enter Address" CssClass="logintxt logintxt-add" runat="server"></asp:TextBox>
                        </div>
                        <div class="txtdiv">
                            <div>
                                <h3>User ID</h3>
                                <asp:TextBox ID="TextBox6" placeholder="User Name" CssClass="logintxt" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                <h3>Password</h3>
                                <asp:TextBox ID="TextBox7" placeholder="Password" CssClass="logintxt" textmode="Password" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <asp:Button ID="Button1" CssClass="butLogin" runat="server" Text="Register" OnClick="Button1_Click" />
                    </div>
                    <br />
                    <h5>
                        <a href="./LoginPage.aspx">Already have an account? Login!!</a>
                    </h5>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
