<%@ Page Title="Admin-OverAll Products Page" Language="C#" MasterPageFile="~/AdminIndex.Master" AutoEventWireup="true" CodeBehind="AdminOverAllData.aspx.cs" Inherits="E_Commerce_Site.AdminOverAllData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sec{
            width: 100%;
            display: flex;
            align-items:center;
            flex-direction:column;
            min-height: 450px;
        }
        h3{
            margin: 20px 0;
        }
        .gridview{
            width:100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="sec">
        <h3><a style="color:black;" href="#"> Overall <span style="color:blue;">Products</span></a> </h3>
        <div class="gridView">
            <asp:GridView ID="GridView1" runat="server" Font-Size="Small" AutoGenerateColumns="False" Width="1200px" BackColor="White" RowStyle-HorizontalAlign="Center" BorderColor="#DEDFDE" BorderStyle="Dashed" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="Product ID" />
                    <asp:BoundField DataField="ProductCategory" HeaderText="Product Category" />
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                    <asp:ImageField DataImageUrlField="ProductImagePath" ControlStyle-Width="200px" ControlStyle-Height="200px" HeaderText="Product Image Path" ></asp:ImageField>
                    <asp:BoundField DataField="ProductPrice" HeaderText="Product Price" />
                    <asp:BoundField DataField="ProductDescription" HeaderText="Product Description" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" Height="60px" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" BorderColor="Green" Height="100px" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
        </div>
    </section>
    <br />
    <br />
    <br />
</asp:Content>
