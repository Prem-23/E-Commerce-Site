<%@ Page Title="E-Commerce Site | Shopping Cart-Delete Item" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeFile="DeleteItem.aspx.cs" Inherits="E_Commerce_Site.DeleteItem" %>
<%@ MasterType VirtualPath="~/index.Master" %>
<asp:Content ID="Content5" ContentPlaceHolderID="head3" runat="server">
    <link rel="stylesheet" href="AdminEnters.css" type="text/css" />
    <style>
        .header-nav{
            display:none;
        }
        .sec{
            min-height:500px;
            background-color:white;
        }
        .newProduct{
            height:200px;
        }
        .back{
            padding:5px 20px;
            color:white;
            background-color:royalblue;
            text-transform:uppercase;
            font-size:15px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content10" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
     <section class="sec">
         <h3 class="h3">
             Please check your Cart ID you want to delete and Enter it.. 
         </h3>
         <div class="btn">
             <a class="back" href="./Cart.aspx">Go Back To Cart</a>
         </div>
         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <div class="newProduct">
            <div>
                <h4>Product ID</h4>
                <asp:TextBox ID="TextBox1" autofocus CssClass="textlog" TextMode="Number" runat="server"></asp:TextBox>
            </div>
            <div class="btn">
                <asp:Button ID="Button1" CssClass="addPro" runat="server" Text="Delete Item" OnClick="Button1_Click" />
            </div>
        </div>
    </section>
</asp:Content>
