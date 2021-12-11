<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="E_Commerce_Site.Cart" %>
<%@ MasterType VirtualPath="~/index.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head3" runat="server">
    <link rel="stylesheet" href="Cart.css" type="text/css" />
    <style>
        .header-nav{
            display:none;
        }
        h2{
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <section class="basket">
        <h2>Your Selected items are Placed Here..<br />If you want to Delete any item in Cart, Then Please Check that <br /> Product Cart ID and Proceed by Clicking Delete Button below...</h2>
        <br />
        <div>
            <a class="shop" href="./Home.aspx">Continue Shopping</a>
            <a class="shop" href="./DeleteItem.aspx">Delete Item in Cart</a>
        </div>
        <br />
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="1200px" EmptyDataText="You Cart is Empty" OnRowDeleting="Row_Delete">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Cart ID" InsertVisible="False" SortExpression="CartID">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CartID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CartID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Category" SortExpression="ProductCategory">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ProductCategory") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProductCategory") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Name" SortExpression="ProductName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Description" SortExpression="ProductDescription">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ProductDescription") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("ProductDescription") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Price" SortExpression="ProductPrice">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("ProductPrice") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Image" SortExpression="ProductImagePath">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("ProductImagePath") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Width="200px" Height="200px" ImageUrl='<%# Eval("ProductImagePath") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Added_Date" HeaderText="Added Date" SortExpression="Added_Date" FooterText="Total" />
                <asp:BoundField DataField="ItemPrice" HeaderText="Item Price" SortExpression="ItemPrice" />

            </Columns>
            <EmptyDataRowStyle HorizontalAlign="Center" />
            <FooterStyle BackColor="#ECECEC" BorderColor="#3D3D3D" BorderStyle="Solid" Height="50px" HorizontalAlign="Center" BorderWidth="1px" Font-Bold="True" />
            <HeaderStyle BackColor="#3D3D3D" Font-Bold="True" ForeColor="White" Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" Font-Bold="True" Font-Size="14px" Height="100px" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" /> 
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <br />
        <div class="flex">
            <h3>Total: </h3>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" HorizontalAlign="Right" ShowHeader="False" Width="150px">
                <Columns>
                    <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" ReadOnly="True" ItemStyle-CssClass="fa" SortExpression="TotalPrice" />
                </Columns>
                <RowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
            <h4>Rs/-</h4>
        </div>
        <br />
        

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ECommerceDataBaseConnectionString %>" SelectCommand="TotalShoppingCartPrice" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="UID" SessionField="userID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECommerceDataBaseConnectionString %>" SelectCommand="viewUserCart1" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:SessionParameter Name="UID" SessionField="userID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        

        <br />
        <br />
    </section>
</asp:Content>
