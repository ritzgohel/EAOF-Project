<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="cropdetail.aspx.cs" Inherits="EAOF_by_ritu.cropdetail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <asp:Label ID="lblsearch" runat="server" Text="Enter Username" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtsrch" runat="server" AutoPostBack="True" OnTextChanged="txtsrch_TextChanged"></asp:TextBox>
    
        <br />
        <br />
    <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" >
        <AlternatingRowStyle  BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Backcolor="#ccccff"/>
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="txtuid" HeaderText="txtuid" SortExpression="txtuid" />
            <asp:BoundField DataField="ddlyear" HeaderText="ddlyear" SortExpression="ddlyear" />
            <asp:BoundField DataField="txtland" HeaderText="txtland" SortExpression="txtland" />
            <asp:BoundField DataField="cropnm" HeaderText="cropnm" SortExpression="cropnm" />
            <asp:BoundField DataField="negoprice" HeaderText="negoprice" SortExpression="negoprice" />
            <asp:BoundField DataField="lbrcost" HeaderText="lbrcost" SortExpression="lbrcost" />
            <asp:BoundField DataField="fertilizercost" HeaderText="fertilizercost" SortExpression="fertilizercost" />
            <asp:BoundField DataField="seedcost" HeaderText="seedcost" SortExpression="seedcost" />
            <asp:BoundField DataField="irrcost" HeaderText="irrcost" SortExpression="irrcost" />
            <asp:BoundField DataField="machincharge" HeaderText="machincharge" SortExpression="machincharge" />
            <asp:BoundField DataField="picost" HeaderText="picost" SortExpression="picost" />
            <asp:BoundField DataField="txttotpro" HeaderText="txttotpro" SortExpression="txttotpro" />
            <asp:BoundField DataField="txttranspcost" HeaderText="txttranspcost" SortExpression="txttranspcost" />
            <asp:BoundField DataField="grossprofit" HeaderText="grossprofit" SortExpression="grossprofit" />
            <asp:BoundField DataField="netprofit" HeaderText="netprofit" SortExpression="netprofit" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" SelectCommand="SELECT * FROM [pl0253]"></asp:SqlDataSource>
</asp:Content>
