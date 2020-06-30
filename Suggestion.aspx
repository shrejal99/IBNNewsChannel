<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Suggestion.aspx.cs" Inherits="Suggestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <style>
      .s {
         background:#e91e25;
         padding:4%;
         color:white;
         margin-bottom:5%;
      }
      .form-control {
          height:40px;
          border:1px solid #1c2331;
          margin-bottom:2%;
      }
      .BTN {
          height:40px;
          width:100%;
          background:#1c2331;
          color:white;
         border:none;
      }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
<div class="col-sm-12">
    <div class="col-sm-2">

    </div>
    <div class="col-sm-8 s">
        <h2>Suggestion <span class="fa fa-edit" ></span></h2>
         Name<asp:TextBox ID="txtname" runat="server" CssClass="form-control" ></asp:TextBox>
   Email Id:<asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>Topic
    <asp:TextBox ID="TxtTop" runat="server" CssClass="form-control"></asp:TextBox>
    Contact No.<asp:TextBox ID="txtcontact" runat="server"  CssClass="form-control" ></asp:TextBox>Message.
    <asp:TextBox ID="txtmsg" runat="server"  CssClass="form-control" Height="70px"></asp:TextBox>
            <asp:Button ID="BtnSubmit" runat="server" ForeColor="White" CssClass="BTN" Text="SUBMIT"  OnClick="BtnSubmit_Click"/>

    </div>
    <div class="col-sm-2">

    </div>
</div>

</asp:Content>

