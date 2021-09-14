<%@ Page Title="ECommerce Site - Home" Language="C#" EnableEventValidation="false" ValidateRequest="false" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="E_Commerce_Site.Home" %>
<%@ MasterType VirtualPath="~/index.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Home.css" type="text/css" />
    <link rel="stylesheet" href="AdminIndex.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="products" >
        <div>
             <br />
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="2" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="table" style="margin:15px 15px;">
                        <asp:Label runat="server" CssClass="title" Text='<%#Eval("ProductID") %>'></asp:Label>
                        <asp:Label runat="server" CssClass="title" Text='<%#Eval("ProductName") %>'></asp:Label>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("ProductImagePath") %>' Width="250" Height="180" />
                        <div class="pricePro">
                            <asp:Label runat="server" Text="Rs."></asp:Label>
                            <asp:Label runat="server" CssClass="price" Text='<%#Eval("ProductPrice") %>'></asp:Label>
                            <asp:Label runat="server" Text="/-"></asp:Label>
                        </div>
                        <div class="descrip">
                            <asp:Label CssClass="desc" runat="server" Text='<%#Eval("ProductDescription") %>'></asp:Label>
                        </div>
                        <asp:Button runat="server" CssClass="ButCart" PostBackUrl='<%# "ProductDetails.aspx?ProductID=" + Eval("ProductID") %>' Text="Add To Basket" />
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>