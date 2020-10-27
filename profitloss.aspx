<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="profitloss.aspx.cs" Inherits="EAOF_by_ritu.profitloss" %>


<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">
    <center>
   

    <table  style="width: 40%; font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; background-color:#99FF99; height: 555px;">
        <tr>
            <td style="width: 339px">&nbsp;&nbsp;&nbsp;<br />
&nbsp;<span style="font-size: larger"> <br />
                <br />
&nbsp;&nbsp;&nbsp; Name:<br />
 <br />
                </span></td>
            <td style="width: 350px">
                <br />
                <br />
                <br />
             
               
                <asp:Label ID="lbluid" runat="server" Text="lable"> </asp:Label>

                <br />
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtuid" ErrorMessage="Enter User name" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                <%--<asp:CustomValidator ID="CustomValidatoruser" runat="server" ErrorMessage="Enter Valide user name"
                                OnServerValidate="CustomValidatoruser_ServerValidate"  ForeColor="Red" ControlToValidate="lbluid" ></asp:CustomValidator>--%>
             </td>         
        </tr>
        <tr>
            <td style="width: 339px; height: 65px;">&nbsp; &nbsp; <span style="font-size: larger">
                <br />
                <br />
&nbsp;&nbsp;&nbsp; Year:<br />
                </span></td>
            <td style="height: 65px; width: 350px;">
                <br />
                <br />
                <asp:DropDownList ID="ddlyear" runat="server" Height="28px" Width="334px">
                    <asp:ListItem Value="-1">-Select-</asp:ListItem>                   
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>                  
                </asp:DropDownList>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ErrorMessage="Select Year" ForeColor="Red" ControlToValidate="ddlyear" InitialValue="-1"></asp:RequiredFieldValidator>
                <br />
            </td>         
        </tr>
        <tr>
            <td style="width: 339px">&nbsp;&nbsp;&nbsp;<br />
&nbsp;<span style="font-size: larger"> <br />
                <br />
&nbsp;&nbsp;&nbsp; Crop :<br />
 <br />
                </span></td>
            <td style="width: 350px">
                <br />
                <br />
                <br />
                <br />
                <asp:TextBox ID="txtcropnm" runat="server" Height="28px" Width="334px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcropnm" ErrorMessage="Enter Crop name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
             </td>         
        </tr>

 
        
        
        <tr>
            <td style="width: 339px">&nbsp;&nbsp;&nbsp;<br />
&nbsp;<span style="font-size: larger"> <br />
                <br />
&nbsp;&nbsp;&nbsp; Seed Cost:<br />&nbsp;&nbsp;&nbsp;(Ruppes)
                </span></td>
            <td style="width: 350px">
                <br />
                <br />
                <br />
                
                <asp:TextBox ID="txtseedcost" runat="server" Height="28px" Width="334px" TextMode="Number"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter seed cost" ForeColor="Red" ControlToValidate="txtseedcost" ></asp:RequiredFieldValidator>
 

<asp:CompareValidator runat="server"

    ControlToValidate="txtseedcost"

    Operator="GreaterThanEqual"

    ValueToCompare="0"

    Type="Integer"

    ErrorMessage="The integer cannot be less than zero"

    Display="Dynamic"

    Text="Pls enter valid cost" ForeColor="Red"

/>
             </td>         
        </tr>
         <tr>
            <td style="width: 339px">&nbsp;&nbsp;&nbsp; <span style="font-size: larger">
                 <br />
                <br />
&nbsp;&nbsp;&nbsp; Fertilizer Cost:<br />&nbsp;&nbsp;&nbsp;(Ruppes)
                </span></td>
            <td style="width: 350px">
                <br />
                <br />
                
                
                <asp:TextBox ID="txtfertilizercost" runat="server" Height="28px" Width="334px" MaxLength="4" TextMode="Number"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Fertilizer cost" ForeColor="Red" ControlToValidate="txtfertilizercost"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtfertilizercost" Display="Dynamic" ErrorMessage="The integer cannot be less than zero" ForeColor="Red" Operator="GreaterThanEqual" Text="Pls enter valid cost" Type="Integer" ValueToCompare="0" />
                <br />
                <br />
            </td>           
        </tr>
        <tr>
            <td style="width: 339px">&nbsp;&nbsp;&nbsp; <span style="font-size: larger">
                 <br />
                <br />
&nbsp;&nbsp;&nbsp; Pesticide-insecticide Cost:<br />&nbsp;&nbsp;&nbsp;(Ruppes)
                </span></td>
            <td style="width: 350px">
                <br />
                <br />
                <asp:TextBox ID="txtpicost" runat="server" Height="28px" Width="334px" MaxLength="4" TextMode="Number"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Pesticide - Insecticide Cost" ForeColor="Red" ControlToValidate="txtpicost"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtpicost" Display="Dynamic" ErrorMessage="The integer cannot be less than zero" ForeColor="Red" Operator="GreaterThanEqual" Text="Pls enter valid cost" Type="Integer" ValueToCompare="0" />
             </td>         
        </tr>
        <tr>
            <td style="width: 339px">&nbsp;&nbsp;&nbsp;<span style="font-size: larger"> <br />
                <br />
&nbsp;&nbsp;&nbsp; Labour Cost:<br />&nbsp;&nbsp;&nbsp;(Ruppes)
                </span></td>
            <td style="width: 350px">
                <br />
                <br />
                
                <asp:TextBox ID="txtlbrcost" runat="server" Height="28px" Width="334px"  DefaultValue="0" MaxLength="4" TextMode="Number" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Labour cost" ForeColor="Red" ControlToValidate="txtlbrcost"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtlbrcost" Display="Dynamic" ErrorMessage="The integer cannot be less than zero" ForeColor="Red" Operator="GreaterThanEqual" Text="Pls enter valid cost" Type="Integer" ValueToCompare="0" />
                <br />
                <br />
             </td>         
        </tr>
        
        
         
         <tr>
            <td style="width: 339px">&nbsp;&nbsp;&nbsp; <span style="font-size: larger">
                 <br />
                <br />
&nbsp;&nbsp;&nbsp; Irrigation Cost:<br />&nbsp;&nbsp;&nbsp;(Ruppes)
                </span></td>
            <td style="width: 350px">
                <br />
                
                <br />
                <asp:TextBox ID="txtirrcost" runat="server" Height="28px" Width="334px" MaxLength="4" TextMode="Number"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter Irrigation Cost" ForeColor="Red" ControlToValidate="txtirrcost"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtirrcost" Display="Dynamic" ErrorMessage="The integer cannot be less than zero" ForeColor="Red" Operator="GreaterThanEqual" Text="Pls enter valid cost" Type="Integer" ValueToCompare="0" />
                <br />
                <br />
             </td>         
        </tr>
        <tr>
            <td style="width: 339px">&nbsp;&nbsp;&nbsp;<br />
&nbsp;<span style="font-size: larger"> <br />
                <br />
&nbsp;&nbsp;&nbsp; Machinery Charges:<br />&nbsp;&nbsp;&nbsp;(Ruppes)
                </span></td>
            <td style="width: 350px">
                <br />
                <br />
                <br />
                <asp:TextBox ID="txtmachincharge" runat="server" Height="28px" Width="334px" MaxLength="4" TextMode="Number"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter Machinery Charges" ForeColor="Red" ControlToValidate="txtmachincharge"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtmachincharge" Display="Dynamic" ErrorMessage="The integer cannot be less than zero" ForeColor="Red" Operator="GreaterThanEqual" Text="Pls enter valid cost" Type="Integer" ValueToCompare="0" />
                <br />
                <br />
            </td>           
        </tr>
        <tr>
            <td style="width: 339px">&nbsp;&nbsp;&nbsp;<br />
&nbsp;<span style="font-size: larger"> <br />
                <br />
&nbsp;&nbsp;&nbsp; Total Production:<br />
 &nbsp;&nbsp;&nbsp;(In Mound)<br />
                </span></td>
            <td style="width: 350px">
                <br />
                <br />
                <br />
                <br />
                <asp:TextBox ID="txttotpro" runat="server" Height="28px" Width="334px" MaxLength="4" TextMode="Number"></asp:TextBox>
                <br />
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txttotpro" ErrorMessage="Enter Total Production In Mound" ForeColor="Red"></asp:RequiredFieldValidator>

                <br />
                <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="txttotpro" Display="Dynamic" ErrorMessage="The integer cannot be less than zero" ForeColor="Red" Operator="GreaterThanEqual" Text="Pls enter valid cost" Type="Integer" ValueToCompare="0" />

                <br />

                <br />
            </td>           
        </tr>
        <tr>
            <td style="width: 339px">&nbsp;&nbsp;&nbsp; <span style="font-size: larger">
                 <br />
                <br />
&nbsp;&nbsp;&nbsp; Transportation Cost:<br />&nbsp;&nbsp;&nbsp;(Ruppes)
                </span></td>
            <td style="width: 350px">
                <br />
                <br />
                <br />
                <asp:TextBox ID="txttranspcost" runat="server" Height="28px" Width="334px" MaxLength="4" TextMode="Number"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Enter Tranportation Cost" ForeColor="Red" ControlToValidate="txttranspcost"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator7" runat="server" ControlToValidate="txttranspcost" Display="Dynamic" ErrorMessage="The integer cannot be less than zero" ForeColor="Red" Operator="GreaterThanEqual" Text="Pls enter valid cost" Type="Integer" ValueToCompare="0" />
                <br />
                <br />
             </td>         
        </tr>
        <tr>
            <td style="width: 339px">&nbsp;&nbsp;&nbsp; <span style="font-size: larger"> <br />
                <br />
&nbsp;&nbsp;&nbsp; Selling Price:<br />&nbsp;&nbsp;&nbsp;(Ruppes)
                </span></td>
            <td style="width: 350px">
                <br />
                <br />
                <br />
                <asp:TextBox ID="txtnegoprice" runat="server" Height="28px" Width="334px" MaxLength="6" ></asp:TextBox>
                <br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtnegoprice" ErrorMessage="Enter Selling Price" ForeColor="Red"></asp:RequiredFieldValidator>

                <br />
                <asp:CompareValidator ID="CompareValidator8" runat="server" ControlToValidate="txtnegoprice" Display="Dynamic" ErrorMessage="The integer cannot be less than zero" ForeColor="Red" Operator="GreaterThanEqual" Text="Pls enter valid cost" Type="Integer" ValueToCompare="0" />

                <br />

                <br />
            </td>           
        </tr>
        
         
        <tr>
            <td align="center" colspan="2"><asp:Button ID="btnsubmit" runat="server" Text="Submit"  BackColor="#FF9933" Width="104px" ForeColor="White" Height="49px" Font-Bold="True" OnClick="btnsubmit_Click" /></td>                 
        </tr>    
             
   </table>
        <asp:Label ID="lblg" runat="server" Text=""></asp:Label>
        <asp:Label ID="lbladd" runat="server" Text=""></asp:Label>
        <asp:Label ID="lblcost" runat="server" Text=""></asp:Label>
        <asp:Label ID="lblnet" runat="server" Text=""></asp:Label>
        </center>
    

           
</asp:Content>
