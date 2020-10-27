<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="EAOF_by_ritu.login" %>


<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <table align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bolder; font-style: normal; background-color: #CCCCCC; border: thin">
        <tr>
            <td style="width: 449px">
    <table style="width: 101%; height: 323px;">
       
       
        <tr>            
            <td colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size:xx-large; font-weight: bolder; font-style: normal; font-variant: normal; line-height: normal; vertical-align: middle; text-align: center; color:darkslateblue;" >Login</td>
        </tr>
        <tr>
            <td style="width:181px">&nbsp;&nbsp;&nbsp; User Name:</td>
            <td>
                <asp:TextBox ID="txtuid" runat="server" Height="28px" Width="176px"></asp:TextBox>

                <br />

            </td>
           
        </tr>
        <tr>
            <td style="width: 181px; height: 26px">&nbsp;&nbsp;&nbsp;&nbsp; Password:</td>
            <td style="height: 26px">
                <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Height="28px" Width="176px"></asp:TextBox>

            </td>
            
        </tr>
        <tr>
            <td style="width: 89px; height: 48px;"colspan="2" align="center"><b>
                <br />
                <asp:Button ID="btnlogin" runat="server" Text="Login" BackColor= "#009999" Width="120px" ForeColor="White" Height="39px" OnClick="btnlogin_Click" />
                </b>
            </td>
            
        </tr>
        <tr><td style="width: 89px" colspan="2" align="center">
            <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
            </td></tr>
       <tr> <td style="width: 89px" colspan="2" align="center"> <a " href="forgotpwd.aspx">Forgot Password?</a></td></tr>
        <tr><td style="width: 89px" colspan="2" align="center">OR</td></tr>
        <tr><td style="width: 89px" colspan="2" align="center"><a href="registration.aspx">Registration</a></td></tr>
    </table>
    </td>
   </tr>
   </table>
</asp:Content>
