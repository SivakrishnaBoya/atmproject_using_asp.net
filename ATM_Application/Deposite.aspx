<%@ Page Title="" Language="C#" MasterPageFile="~/ATM_Application.Master" AutoEventWireup="true" CodeBehind="Deposite.aspx.cs" Inherits="ATM_Application.Deposite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        h3{
            color:deeppink;
            display:flex;
            justify-content:end;
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
        .button:hover{
            background-color:crimson;

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
        tr{
            width:50%;
        }
        .div{
            
            
        }

       
        .auto-style4 {
            width: 0;
        }

       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="flex-row justify-content-center">
    <table class="auto-style1">
        
        <tr>
            <td class="auto-style4">
                <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Deposite_Amount</h3>
            </td>
            <td>
                <asp:TextBox ID="TxtDeposite" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="BtnDeposte" runat="server" Text="Deposite" CssClass="button" OnClick="BtnDeposte_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
       </div> 
</asp:Content>
