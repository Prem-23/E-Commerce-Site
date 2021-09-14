<%@ Page Title="Admin-Update Product Page" Language="C#" MasterPageFile="~/AdminIndex.Master" AutoEventWireup="true" CodeFile="AdminUpdate.aspx.cs" Inherits="E_Commerce_Site.AdminUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="AdminEnters.css" type="text/css" />
    <style>
        .newProduct{
            width:400px;
            height:550px;
            display:flex;
            align-items:center;
            justify-content:center;
            flex-direction:column;
        }
        .textlog{
            width:300px;
        }
        .btn{
            display:flex;
            width:95%;
            align-items:center;
            justify-content:space-between;
        }
        .addPro{
            padding: 7px 10px;
        }
        .img{
            width:300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="sec">
         <h3 class="h3">
             To change and update Products, You should enter that Product ID correctly.. <br />
             If You are confused then check your Data Table
         </h3>
        <div class="newProduct">
            <div>
                <h4>Product ID</h4>
                <asp:TextBox ID="TextBox1" CssClass="textlog" TextMode="Number" runat="server"></asp:TextBox>
            </div>
            <div>
                <h4>Product Category</h4>
                <asp:TextBox ID="TextBox2" placeholder="only TV,MOBILE,LAPTOP" CssClass="textlog cat" runat="server"></asp:TextBox>
            </div>
            <div>
                <h4>Product Name</h4>
                <asp:TextBox ID="TextBox3" CssClass="textlog" runat="server"></asp:TextBox>
            </div>
            <div>
                <h4>Product Image</h4>
                <asp:FileUpload ID="FileUpload1" CssClass="img" runat="server" />
            </div>
            <div>
                <h4>Price</h4>
                <asp:TextBox ID="TextBox4" CssClass="textlog" runat="server"></asp:TextBox>
            </div>
            <div>
                <h4>Product Description</h4>
                <asp:TextBox ID="TextBox5" CssClass="textlog" TextMode="MultiLine" runat="server"></asp:TextBox>
            </div>
            <div class="btn">
                <asp:Button ID="Button1" CssClass="addPro" runat="server" Text="View Product" OnClick="Button1_Click" />
                <asp:Button ID="Button2" CssClass="addPro" runat="server" Text="Update Product" OnClick="Button2_Click" />
            </div>
        </div>
    </section>
</asp:Content>
