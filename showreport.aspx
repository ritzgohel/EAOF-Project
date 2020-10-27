<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="showreport.aspx.cs" Inherits="EAOF_by_ritu.showreport" %>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <center>

   <table style="font-size: large; color: #FF0066; background-color: #FFFFCC" height="500px" width="700px">
        <tr>
            <td class="auto-style3">&nbsp;Date:</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
       <tr><td style="width: 364px"><asp:Label ID="lblname" runat="server" Text="Name:"></asp:Label></td><td><asp:Label ID="name" runat="server" Text="lable"></asp:Label></td></tr>
       <tr><td style="width: 364px"><asp:Label ID="lblyear" runat="server" Text="Year:"></asp:Label></td><td><asp:Label ID="year" runat="server" Text="lable"></asp:Label></td></tr>
       <tr><td style="width: 364px"><asp:Label ID="lblcropnm" runat="server" Text="Crop:"></asp:Label></td><td><asp:Label ID="crop" runat="server" Text="lable"></asp:Label></td></tr>
       
       <tr><td style="width: 364px"><asp:Label ID="lbltotpro" runat="server" Text="Total Production:"></asp:Label></td><td><asp:Label ID="production" runat="server" Text="lable"></asp:Label></td></tr>
       <tr><td style="width: 364px"><asp:Label ID="lblgoss" runat="server" Text="Gross Income:"></asp:Label></td><td><asp:Label ID="gross" runat="server" Text="lable"></asp:Label></td></tr>
       <tr><td style="width: 364px"><asp:Label ID="lblnet" runat="server" Text="Net Income:"></asp:Label></td><td><asp:Label ID="net" runat="server" Text="lable"></asp:Label></td></tr>
      <tr><td><asp:Button ID="btnDownloadInvoice" runat="server" Text="Download" OnClick="btnDownloadInvoice_Click" CssClass="btn btn-info" /></td></tr>
       
   </table>
  
 

</center>
  
 

</asp:Content>
