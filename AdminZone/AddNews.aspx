<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminZoneMaster.master" AutoEventWireup="true" CodeFile="AddNews.aspx.cs" Inherits="AdminZone_AddNews" %>

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
    ADD NEWS
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="box">
      NEWS IMAGE
      <br />
       <asp:FileUpload ID="FuNPic" required CssClass="txt" runat="server" /><br />
       NEWS CATEGORY
       <asp:DropDownList required CssClass="txt" runat="server" ID="DdlNCat">
           <asp:ListItem>--Select--</asp:ListItem>
       </asp:DropDownList><br />
       NEWS HEADLINES
       <br />
       <asp:TextBox required runat="server" ID="TxtNews" CssClass="txt"></asp:TextBox><br />
        NEWS 
        <br />
       <asp:TextBox required ID="TxtNH" runat="server" CssClass="txt"></asp:TextBox><br /><br />
             <asp:Button runat="server" Text="ADD NEWS" CssClass="btn" ID="BtnAdd" OnClick="BtnAdd_Click" />
    </div>
    <br /><br />
    <asp:GridView ID="GV1" runat="server" AllowPaging="True" HeaderStyle-Height="50" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NewsId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="NewsId" HeaderText="SNo." InsertVisible="False" ReadOnly="True" SortExpression="NewsId" />
          
         <asp:BoundField DataField="NCategory" HeaderText="Category" SortExpression="NCategory" />
            <asp:BoundField DataField="NHead" HeaderText="Head" SortExpression="NHead" />
            <asp:BoundField DataField="News" HeaderText="News" SortExpression="News" />
            <asp:BoundField DataField="NewsDate" HeaderText="Date" SortExpression="NewsDate" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IBN_NewsConnectionString %>" DeleteCommand="DELETE FROM [Tbl_News] WHERE [NewsId] = @NewsId" InsertCommand="INSERT INTO [Tbl_News] ([PicName], [NCategory], [NHead], [News], [NewsDate]) VALUES (@PicName, @NCategory, @NHead, @News, @NewsDate)" SelectCommand="SELECT * FROM [Tbl_News] ORDER BY [NewsId] DESC" UpdateCommand="UPDATE [Tbl_News] SET [PicName] = @PicName, [NCategory] = @NCategory, [NHead] = @NHead, [News] = @News, [NewsDate] = @NewsDate WHERE [NewsId] = @NewsId">
    <DeleteParameters>
        <asp:Parameter Name="NewsId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="PicName" Type="String" />
        <asp:Parameter Name="NCategory" Type="String" />
        <asp:Parameter Name="NHead" Type="String" />
        <asp:Parameter Name="News" Type="String" />
        <asp:Parameter Name="NewsDate" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="PicName" Type="String" />
        <asp:Parameter Name="NCategory" Type="String" />
        <asp:Parameter Name="NHead" Type="String" />
        <asp:Parameter Name="News" Type="String" />
        <asp:Parameter Name="NewsDate" Type="String" />
        <asp:Parameter Name="NewsId" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

