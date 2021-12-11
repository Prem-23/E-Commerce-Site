<%@ Page Title="Admin-Overall Cart" Language="C#" MasterPageFile="~/AdminIndex.Master" AutoEventWireup="true" CodeBehind="AdminOverAllCart.aspx.cs" Inherits="E_Commerce_Site.AdminOverAllCart" %>
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
<asp:Content ID="Content2" ContentPlaceHolderID="head1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
         <section class="sec">
        <h3><a style="color:black;" href="#"> Overall <span style="color:blue;">User's</span> Carts</a> </h3>
        <div class="gridView">
            <asp:GridView ID="GridView1"  HeaderStyle-HorizontalAlign="center" runat="server" Font-Size="Small" AutoGenerateColumns="False" Width="1200px" BackColor="White" RowStyle-HorizontalAlign="Center" BorderColor="#DEDFDE" BorderStyle="Dashed" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CartID" HeaderText="Cart ID" />
                    <asp:BoundField DataField="UID" HeaderText="User ID" />
                    <asp:BoundField DataField="ProductID" HeaderText="Product Item ID" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity of Item" />
                    <asp:BoundField DataField="Added_Date" HeaderText="Added Date" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" Height="40px" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" Height="40px" />
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
