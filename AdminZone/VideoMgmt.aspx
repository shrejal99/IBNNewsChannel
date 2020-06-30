<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminZoneMaster.master" AutoEventWireup="true" CodeFile="VideoMgmt.aspx.cs" Inherits="AdminZone_VideoMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #box {
            height:auto;
            width:300px;
            padding:15px;
            background:red;
            color:white;
            font-family:'Times New Roman';
            box-shadow:1px 1px 10px black;
            margin:0px auto;
        }
        .txt {
            width:100%;
            height:40px;
            border:1px solid #808080;
            color:black;

        }
        .btn {
              width:100%;
            height:40px;
            border:1px solid #808080;
            background:#808080;
            color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHedding" Runat="Server">
    ADD VIDEO
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <div id="box">
        
        Video Description
        <br />
        <asp:TextBox runat="server"  ID="TxtVDec" CssClass="txt"></asp:TextBox><br />
        Video<br />
        <asp:FileUpload runat="server" ID="FuVideo" CssClass="txt" /><br /><br />
        <asp:Button runat="server" Text="ADD VIDEO" CssClass="btn" id="BtnAdd" OnClick="BtnAdd_Click" />
    </div>
   <br /><br />
    <asp:GridView ID="GV1" runat="server" Width="95%" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" DataKeyNames="VId">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="VId" HeaderText="Sno." SortExpression="VId" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="VideoName" HeaderText="Name" SortExpression="VideoName" />
            <asp:BoundField DataField="VideoDes" HeaderText="Description" SortExpression="VideoDes" />
            <asp:BoundField DataField="VDate" HeaderText="Date" SortExpression="VDate" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IBN_NewsConnectionString %>" DeleteCommand="DELETE FROM [Tbl_Video] WHERE [VId] = @VId" InsertCommand="INSERT INTO [Tbl_Video] ([VideoName], [VideoDes], [VDate]) VALUES (@VideoName, @VideoDes, @VDate)" SelectCommand="SELECT * FROM [Tbl_Video] ORDER BY [VId] DESC" UpdateCommand="UPDATE [Tbl_Video] SET [VideoName] = @VideoName, [VideoDes] = @VideoDes, [VDate] = @VDate WHERE [VId] = @VId">
        <DeleteParameters>
            <asp:Parameter Name="VId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="VideoName" Type="String" />
            <asp:Parameter Name="VideoDes" Type="String" />
            <asp:Parameter Name="VDate" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="VideoName" Type="String" />
            <asp:Parameter Name="VideoDes" Type="String" />
            <asp:Parameter Name="VDate" Type="String" />
            <asp:Parameter Name="VId" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IBN_NewsConnectionString %>" SelectCommand="SELECT [VideoName], [VideoDes], [VDate] FROM [Tbl_Video] ORDER BY [VId] DESC"></asp:SqlDataSource>
</asp:Content>

