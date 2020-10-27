<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="userdetail.aspx.cs" Inherits="EAOF_by_ritu.userdetail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <center>
        <asp:Label ID="lblsearch" runat="server" Text="Enter Username" Font-Bold="True"></asp:Label>
    <asp:TextBox ID="txtsrch" runat="server" AutoPostBack="True" OnTextChanged="txtsrch_TextChanged"></asp:TextBox>    
        <br />
        <br />   
    <asp:GridView ID="gv1" runat="server"  AutoGenerateColumns="False" DataKeyNames="uid" Width="921px">
        <AlternatingRowStyle BackColor="#99FF99" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <Columns>
            <asp:BoundField DataField="rid" HeaderText="rid" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="fname" HeaderText="First Name"  />
            <asp:BoundField DataField="lname" HeaderText="Last Name"  />
            <asp:BoundField DataField="mobno" HeaderText="Mobile No"  />
           <%-- <asp:BoundField DataField="district" HeaderText="District"  />
            <asp:BoundField DataField="taluka" HeaderText="Taluka"  />
            <asp:BoundField DataField="village" HeaderText="Village" />--%>
            <%--<asp:BoundField DataField="uid" HeaderText="Username"   />
            <asp:BoundField DataField="password" HeaderText="Password"  />--%>
        </Columns>
        <EditRowStyle BackColor="#CCFF99" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentConnectionString %>" SelectCommand="SELECT * FROM [registration0253]"></asp:SqlDataSource>
      </center>
</asp:Content>
