<%@ Page Title="Admin-Delete Product Page" Language="C#" MasterPageFile="~/AdminIndex.Master" AutoEventWireup="true" CodeBehind="AdminDelete.aspx.cs" Inherits="E_Commerce_Site.AdminDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="AdminEnters.css" type="text/css" />
    <style>
        .sec{
            min-height:500px;
        }
        .newProduct{
            height:200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="sec">
         <h3 class="h3">
             Please check your Product ID you want to delete and Enter it.. 
         </h3>
        <div class="newProduct">
            <div>
                <h4>Product ID</h4>
                <asp:TextBox ID="TextBox1" CssClass="textlog" TextMode="Number" runat="server"></asp:TextBox>
            </div>
            <div class="btn">
                <asp:Button ID="Button1" CssClass="addPro" runat="server" Text="Delete Product" OnClick="Button1_Click" />
            </div>
        </div>
    </section>
</asp:Content>
