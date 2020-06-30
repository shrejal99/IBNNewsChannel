<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminZoneMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="AdminZone_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #box {
            height: auto;
            width: 300px;
            padding: 15px;
            background:red;
            color: white;
            font-family:'Times New Roman';
            box-shadow: 1px 1px 10px black;
            margin: 0px auto;
        }

        .txt {
            width: 100%;
            height: 40px;
            border: 1px solid #808080;
            color:black;
        }

        .btn {
            width: 100%;
            height: 40px;
            border: 1px solid #808080;
            background: #808080;
            color: white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHedding" Runat="Server">
    CHANGE PASSWORD
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="box">
    OLD PASSWORD  <br />
    <asp:TextBox ID="Txtp" runat="server" CssClass="txt"></asp:TextBox><br />
    NEW PASSWORD <br />
    <asp:TextBox ID="Txtn" runat="server" CssClass="txt"></asp:TextBox><br />
    CONFIRM NEW PASSWORD  <br />
    <asp:TextBox ID="Txtc" runat="server" CssClass="txt"></asp:TextBox>  <br /><BR />
        <asp:Button runat="server" Text="Change Password" CssClass="btn" ID="BtnAdd" OnClick="BtnAdd_Click" />
         </div>
</asp:Content>

