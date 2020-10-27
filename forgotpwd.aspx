<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="forgotpwd.aspx.cs" Inherits="EAOF_by_ritu.forgotpwd" %>


<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <table align="center" style="background-color: #CCFF99"><tr><td>
    <table>
         <%--<tr><td colspan="2">
        <center>
        <img src="img/forgot.jpg" height="150px" width="150px" ></img>
        </center>
            </td></tr--%>&nbsp;<tr><td colspan="2" align="center"><b style="font-size: larger">Forgot Password</b></td></tr>
        <tr><td style="width: 379px; height: 141px">
        <table><tr><td style="width: 163px">Enter Username:</td><td>
            <asp:TextBox ID="ftxtuid" runat="server" Height="30px" Width="232px"></asp:TextBox></td></tr>
            <tr><td colspan="2" style="height: 30px"  align="center">
                <br />
                <br />
                <asp:Button ID="fbtnpwd" runat="server" Text="Send Password" OnClick="fbtnpwd_Click" Height="31px" BackColor="#FF9933" />
                </td></tr>
            <tr><td colspan="2" style="height: 22px" align="center">
                <asp:Label ID="flblmbl" runat="server" Text="" ></asp:Label>
                </td></tr>
        </table>
               </td></tr></table>
</td></tr></table>
</asp:Content>
