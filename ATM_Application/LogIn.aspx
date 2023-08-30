<%@ Page Title="" Language="C#" MasterPageFile="~/ATM_Application.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="ATM_Application.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Styles/Register.css" type="text/css" />
    <style type="text/css">
        .Login {
            width: 50%;
            background-image: url('Images/siva1.jpg');
            height:80%;
            display:flex;
            justify-content:center;
            margin-left:350px;
            margin-right:250px;
            margin-top:25px;
            align-content:center;
            border-radius:50px;
           font-weight:bold;
           color:deeppink;
        }
        
         .button{
        width:200px;
        height:36px;
        color:darkgrey;
        background-color:darkcyan;
        border:5px;
        border-color:aqua;
        border-radius:25px;
        font-weight:bold;
        margin-left:25px;
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
        tr{
            width:50%;
        }
       
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
   
    <table class="Login">
        <tr>
            <td class="auto-style13" colspan="2">
                <h2 class="auto-style14"><strong>LogIn</strong></h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;&nbsp; </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label1" runat="server" Text="Account No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtAccNum" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="Label2" runat="server" Text="PIN No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtPIN" runat="server" CssClass="textbox" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:Button ID="BtnLogIn" runat="server" Text="LogIn"  CssClass="button" OnClick="Button1_Click"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:HyperLink ID="HLRegister" runat="server" ForeColor="DeepPink" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
 
   
</asp:Content>
