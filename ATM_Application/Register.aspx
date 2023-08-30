<%@ Page Title="" Language="C#" MasterPageFile="~/ATM_Application.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ATM_Application.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
        width: 50%;
        height:80%;
        background-image: url('Images/siva3.jpg');
        display:flex;
        justify-content:center;
        margin-left:250px;
        margin-right:250px;
        align-content:center;
        border-radius:50px;
        color:white;
        font-weight:bold;

    }
        
    .button{
        width:150px;
        height:30px;
        color:red;
        background-color:darkcyan;
        border:2px;
        border-color:aqua;
        border-radius:25px;
        font-weight:bold;
         }
    .button:hover{
        background-color:darkgreen;
       
    }
    .textbox{
        width:250px;
        height:35px;
        border:2px;
        border-radius:10px;
        border-color:lightcoral;
        margin-bottom:10px;
          }
        .auto-style11 {
            width: 280px;
            height: 23px;
        }
        .auto-style12 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  
        

    <table class="auto-style5">
    <tr>
        <td>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Label ID="Label1" runat="server" Text="Account No"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TxtAccNum" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Label ID="Label2" runat="server" Text="PIN No"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TxtPin" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Label ID="Label3" runat="server" Text="CustomerName"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TxtName" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVForName" runat="server" ErrorMessage=" Enter The Valid Customer Name " ControlToValidate="TxtName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Label ID="Label4" runat="server" Text="PhoneNumber"></asp:Label>
                        </strong></td>
                    <td>
                        <asp:TextBox ID="TxtPhno" runat="server" CssClass="textbox"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="REVForPhno" runat="server" ErrorMessage="PhoneNumber Must be 10 Digits" ValidationExpression="[0-9]{10}" ControlToValidate="TxtPhno"></asp:RegularExpressionValidator>
&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                        <asp:Label ID="Label5" runat="server" Text="Amount"></asp:Label>
                        </strong></td>
                    <td class="auto-style9">
                        <asp:TextBox ID="TxtAmt" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="button" Text="Register" OnClick="Button1_Click" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/LogIn.aspx">LogIn</asp:HyperLink>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>

  
        

</asp:Content>
