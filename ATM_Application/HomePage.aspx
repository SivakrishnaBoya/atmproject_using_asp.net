<%@ Page Title="" Language="C#" MasterPageFile="~/ATM_Application.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ATM_Application.HomePage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .button{
            width:200px;
            height:35px;
            background-color:aqua;
            border:2px;
            border-color:aqua;
            border-radius:10px;
            margin-bottom:15px;
            margin-top:15px;
            color:blueviolet;
            font-weight:bold;
        }
        .button:hover{
            background-color:crimson;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style3">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BANKING&nbsp; START</h1>
    <p class="auto-style3">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" ForeColor="#FF0066" Text="GetStarted"  CssClass="button" OnClick="Button1_Click"/>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
