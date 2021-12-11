<%@ Page Title="Product Details Page" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="E_Commerce_Site.ProductDetails" %>
<%@ MasterType VirtualPath="~/index.Master" %>
<asp:Content ID="Content5" ContentPlaceHolderID="head3" runat="server">
    <style>
        section{
            width:100%;
            display:flex;
            align-items:center;
            justify-content:start;
            flex-direction:column;
        }
        h2{
            font-size: 20px;
        }
        .linkCanel{
            padding: 7px 20px;
            background-color:royalblue;
            text-transform:uppercase;
            margin: 20px 0;
        }
        .header-nav{
            display:none;
        }
        .rep{
            display:flex;
            width:90%;
            margin:auto;
            padding:20px;
            background-color:#acacac;
        }
        .ll1{
            margin: auto 10px;
        }
        .quan{
            display:flex;
            flex-direction:column;
            justify-content:center;
            align-items:center;
        }
        .ll2{
            font-size:18px;
            font-weight:600;
        }
        .ll3{
            padding:4px 5px;
            font-size:16px;
            font-weight:700;
            text-align:center;
        }
        .ll4{
            padding:5px 10px;
            background-color:royalblue;
            color:white;
            text-transform:uppercase;
        }
    </style>
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="ContentPlaceHolder4" runat="server">
    <section>
        <h2>Check Quantity and Add to Cart or Cancel with below button...</h2>
        <asp:LinkButton runat="server" ForeColor="White" PostBackUrl="~/Home.aspx" CssClass="linkCanel">Cancel and Go Back!!</asp:LinkButton>
        <br />
        <div class="rep">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <br />
                    <asp:Label ID="Label2" CssClass="ll1" runat="server" Text='<%#Eval("ProductName") %>'></asp:Label>
                    <br /><br />
                    <asp:Label ID="Label3" CssClass="ll1" runat="server" Text='<%#Eval("ProductPrice") %>'></asp:Label>
                    <br /><br />
                    <asp:Image ID="Image1" CssClass="ll1" runat="server" Width="200px" Height="200px" ImageUrl='<%#Eval("ProductImagePath") %>' />
                    <br /><br />
                    <asp:Label ID="Label1" CssClass="ll1" runat="server" Text='<%#Eval("ProductDescription") %>'></asp:Label>
                
                </ItemTemplate>
            </asp:Repeater>
            <br />
            <div class="quan ll1">

                <asp:Label ID="Label4" CssClass="ll2" runat="server" Text="Quantity"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" CssClass="ll3" TextMode="Number" autofocus value="1" runat="server" BorderColor="Black" BorderWidth="1px"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" CssClass="ll4" runat="server" Text="Add To Cart" OnClick="Button1_Click" />
                <br />
            </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECommerceDataBaseConnectionString %>" SelectCommand="SELECT * FROM [ECommerceProducts] WHERE ([ProductID] = @ProductID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="ProductID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </section>
</asp:Content>
