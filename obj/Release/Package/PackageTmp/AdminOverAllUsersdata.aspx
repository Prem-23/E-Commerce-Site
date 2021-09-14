<%@ Page Title="Admin-OverAll Users Data Page" Language="C#" MasterPageFile="~/AdminIndex.Master" AutoEventWireup="true" CodeFile="AdminOverAllUsersdata.aspx.cs" Inherits="E_Commerce_Site.AdminOverAllUsersdata" %>
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
        <h3><a style="color:black;" href="#"> Overall <span style="color:blue;">User's</span></a> </h3>
        <div class="gridView">
            <asp:GridView ID="GridView1"  HeaderStyle-HorizontalAlign="center" runat="server" Font-Size="Small" AutoGenerateColumns="False" Width="1200px" BackColor="White" RowStyle-HorizontalAlign="Center" BorderColor="#DEDFDE" BorderStyle="Dashed" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="UID" HeaderText="U-ID" />
                    <asp:BoundField DataField="FullName" HeaderText="Full Name" />
                    <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" />
                    <asp:BoundField DataField="Mail_ID" HeaderText="Mail ID" />
                    <asp:BoundField DataField="DateOfBirth" HeaderText="Date Of Birth" />
                    <asp:BoundField DataField="FullAddress" HeaderText="Full Address" />
                    <asp:BoundField DataField="UserID" HeaderText="User ID" />
                    <asp:BoundField DataField="Password" HeaderText="Password" />
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
