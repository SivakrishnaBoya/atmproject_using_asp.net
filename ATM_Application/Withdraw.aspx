<%@ Page Title="" Language="C#" MasterPageFile="~/ATM_Application.Master" AutoEventWireup="true" CodeBehind="Withdraw.aspx.cs" Inherits="ATM_Application.Withdraw" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


       
        .auto-style4 {
            width: 0;
        }

       
        h3{
            color:deeppink;
            display:flex;
            justify-content:end;
        }
       
         .textbox{
        width:250px;
        height:35px;
        border:2px;
        border-radius:10px;
        border-color:lightcoral;
        margin-bottom:10px;
        display:flex;
        justify-content:start;
          }
               
         .button{
            width:200px;
            height:35px;
            background-color:aqua;
            border:2px;
            border-color:aqua;
            border-radius:10px;
            margin-bottom:15px;
            margin-top:15px;
            margin-left:15px;
            color:blueviolet;
            font-weight:bold;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">
                <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Withdraw_Amount</h3>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Withdraw" CssClass="button" OnClick="Button1_Click"  />
            </td>
        </tr>
    </table>
</asp:Content>
