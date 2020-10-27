<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="EAOF_by_ritu.registration" %>

<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <table align="center" style="  font-family: 'Arial Rounded MT Bold'; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; background-color: aliceblue">
        <tr>
           <td style="width: 719px; top: auto; right: auto; left: auto; font-size: x-large; font-weight: bold; background-color: #cccccc;">
        <table align="center">
        
         <tr>
            <td colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size:xx-large; font-weight: bolder; font-style: normal; font-variant: normal; line-height: normal; vertical-align: middle; text-align: center; color:darkslateblue;" >
                <br />
                Registration<br />
                <br />
             </td>
         </tr>
     
        <tr>
            <td style="width: 859px" >&nbsp;&nbsp;&nbsp;&nbsp; First Name:</td>
            <td style="margin-left: 40px; width: 486px;"><asp:TextBox ID="txtfname" runat="server" Height="32px" Width="400px"></asp:TextBox>
                <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtlname" ErrorMessage="First Name is require" ForeColor="Red"></asp:RequiredFieldValidator>
            
            </td>

            </tr>
      

        <tr>
            <td style="height: 19px; width: 859px;">&nbsp;&nbsp;&nbsp;&nbsp; Last Name:</td>
            <td style="height: 19px; width: 486px;">
                <asp:TextBox ID="txtlname" runat="server" CssClass="tb" Height="32px" Width="400px"></asp:TextBox>
               

                <br />
               

                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtlname" ErrorMessage="Surname  is require" ForeColor="Red"></asp:RequiredFieldValidator>
               

            </td>
        </tr>
        
        <tr>
            <td style="width: 859px">&nbsp;&nbsp;&nbsp;&nbsp; Mobile No:</td>
            <td style="width: 486px">
                <asp:TextBox ID="txtmobile" runat="server" MaxLength="10" TextMode="Phone" CssClass="tb" Height="32px" Width="400px"></asp:TextBox>
               

                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtmobile" ErrorMessage="Mobile Number is require" ForeColor="Red"></asp:RequiredFieldValidator>
            <%--<asp:RegularExpressionValidator ID="RegularExpressionPhone" runat="server" Text="Only 10 Numeric!!!"
                                ForeColor="Red" ControlToValidate="txtmobile" ValidationExpression="^\d{10}$">
                            </asp:RegularExpressionValidator>--%>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Text="Enter Valid Number!!!"
                                ForeColor="Red" ControlToValidate="txtmobile" ValidationExpression="^([6-9]{1})([0-9]{9})$">
                            </asp:RegularExpressionValidator>
                
            </td>        
        </tr>
            <tr>
                <td style="height: 60px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; District:</td>
                <td style="height: 60px"><asp:DropDownList ID="ddldistrict" runat="server" AutoPostBack = "true" OnSelectedIndexChanged = "district_Changed"  Height="28px" Width="334px" InitialValue="-1">
                    <asp:ListItem Value="-1">-Select-</asp:ListItem>
                </asp:DropDownList>
                    <br />
               

                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="ddldistrict" ErrorMessage="Select District" ForeColor="Red"></asp:RequiredFieldValidator>
               

                    <br />
                </td>
            </tr>
            <tr>
                <td style="height: 61px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Taluka:</td>
                <td style="height: 61px">
                    <asp:DropDownList ID="ddltaluka" runat="server" AutoPostBack = "true" OnSelectedIndexChanged = "taluka_Changed"  Height="28px" Width="334px" InitialValue="-1">
                    <asp:ListItem Value="-1">-Select</asp:ListItem>
                    </asp:DropDownList>
                    <br />
               

                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="ddltaluka" ErrorMessage="Select Taluka" ForeColor="Red"></asp:RequiredFieldValidator>
               

                </td>
            </tr>
            <tr>
                <td style="height: 60px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Village:</td>
                <td style="height: 60px">
                    <asp:DropDownList ID="ddlvillages" runat="server"  Height="28px" Width="334px" InitialValue="-1">
                        <asp:ListItem Value="-1">-Select-</asp:ListItem>
                    </asp:DropDownList>
                    <br />
               

                </td
            </tr>
         <tr>
            <td style="width: 859px; height: 125px;">&nbsp;&nbsp;&nbsp;&nbsp; Username:</td>
            <td style="width: 486px; height: 125px;">
                <br />
                <br />
                <asp:TextBox ID="txtuid" runat="server" CssClass="tb" Height="32px" Width="400px"></asp:TextBox>
               

                <br />
               

                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtuid" ErrorMessage="Username  is require" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:CustomValidator ID="CustomValidatoruser" runat="server" ErrorMessage="This Username has already been taken"
                                OnServerValidate="CustomValidatoruser_ServerValidate"  ForeColor="Red" ControlToValidate="txtuid" ></asp:CustomValidator>

             </td>        
        </tr>
         <tr>
            <td style="width: 859px; height: 85px;">&nbsp;&nbsp;&nbsp;&nbsp; Password:</td>
            <td style="width: 486px; height: 85px;">
                <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" CssClass="tb" Height="32px" Width="400px"></asp:TextBox>
               

                <br />
               

                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtpwd" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
               

             </td>        
        </tr>
         <tr>
            
             <td style="width: 859px; top: 0px;">&nbsp;&nbsp;&nbsp;&nbsp; Confirm<br />
&nbsp;&nbsp;&nbsp; Password:</td>
            <td style="width: 486px">
                 <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password"  Height="32px" Width="400px"></asp:TextBox>
               

                <br />
               

                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtcpwd" ErrorMessage="Plese Rewrite the password" ForeColor="Red"></asp:RequiredFieldValidator>
               

                <br />
               

                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd" ControlToValidate="txtcpwd" ErrorMessage="Password and Confirm password must be same" ForeColor="#3366FF"></asp:CompareValidator>
               

             </td>        
        </tr>
         
              <tr>
            <td align="center" colspan="2" style="width: 859px"><asp:Button ID="btnsubmit" runat="server" Text="Submit" BackColor="#ffffcc" Width="143px" ForeColor="black" Height="62px" OnClick="btnsubmit_Click" Font-Bold="True" Font-Size="Large" /></td>
                   
            
    </table>
</table>
</asp:Content>
