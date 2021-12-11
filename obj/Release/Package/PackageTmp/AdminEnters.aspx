<%@ Page Title="Admin-Add Products Page" Language="C#" MasterPageFile="~/AdminIndex.Master" AutoEventWireup="true" CodeBehind="AdminEnters.aspx.cs" Inherits="E_Commerce_Site.AdminEnters" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="AdminEnters.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="sec">
        <h3 class="h3">Add Products</h3>
        <div class="newProduct">
            <div>
                <h4>Product Category</h4>
                <asp:TextBox ID="TextBox2" required CssClass="textlog cat" placeholder="only TV,MOBILE,LAPTOP" autofocus runat="server"></asp:TextBox>
            </div>
            <div>
                <h4>Product Name</h4>
                <asp:TextBox ID="TextBox1" CssClass="textlog" runat="server"></asp:TextBox>
            </div>
            <div>
                <h4>Product Image</h4>
                <asp:FileUpload ID="FileUpload1" CssClass="img" runat="server" />
            </div>
            <div>
                <h4>Price</h4>
                <asp:TextBox ID="TextBox3" TextMode="Number" CssClass="textlog" runat="server"></asp:TextBox>
            </div>
            <div>
                <h4>Product Description</h4>
                <asp:TextBox ID="TextBox4" CssClass="textlog" TextMode="MultiLine" runat="server"></asp:TextBox>
            </div>
            <div class="btn">
                <asp:Button ID="Button1" CssClass="addPro" runat="server" Text="Add Product" OnClick="Button1_Click" />
            </div>
        </div>
    </section>
</asp:Content>
