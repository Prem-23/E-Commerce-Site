<%@ Page Title="ECommerce Site - MOBILE" Language="C#" EnableEventValidation="false" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Mobile.aspx.cs" Inherits="E_Commerce_Site.Mobile" %>
<%@ MasterType VirtualPath="~/index.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="head4" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="head5" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="head3" runat="server">
    <link rel="stylesheet" href="Home.css" type="text/css" />
    <link rel="stylesheet" href="AdminIndex.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
   
      <div class="products">
        <div>
            <br />
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="2">
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
