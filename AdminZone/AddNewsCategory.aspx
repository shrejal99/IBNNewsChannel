<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminZoneMaster.master" AutoEventWireup="true" CodeFile="AddNewsCategory.aspx.cs" Inherits="AdminZone_AddNewsCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHedding" runat="Server">
    ADD NEWS CATEGORY
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="box">
      NEWS CATEGORY
        <br />
        <asp:TextBox runat="server" ID="TxtVDec" CssClass="txt"></asp:TextBox><br />
       
       
        <br />
        <asp:Button runat="server" Text="ADD CATEGORY" CssClass="btn" ID="BtnAdd" OnClick="BtnAdd_Click" />
    </div>
    <br /><br />
    <asp:GridView Width="60%" runat="server" ID="Gv1" HeaderStyle-Height="50" AutoGenerateColumns="False" DataKeyNames="NCID" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="NCID" HeaderText="SNO." InsertVisible="False" ReadOnly="True" SortExpression="NCID" />
            <asp:BoundField DataField="NewsCat" HeaderText="CATEGORY" SortExpression="NewsCat" />
            <asp:BoundField DataField="NewsCatDt" HeaderText="DATE" SortExpression="NewsCatDt" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />

<HeaderStyle Height="50px" BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IBN_NewsConnectionString %>" DeleteCommand="DELETE FROM [Tbl_News_Category] WHERE [NCID] = @NCID" InsertCommand="INSERT INTO [Tbl_News_Category] ([NewsCat], [NewsCatDt]) VALUES (@NewsCat, @NewsCatDt)" SelectCommand="SELECT * FROM [Tbl_News_Category] ORDER BY [NCID] DESC" UpdateCommand="UPDATE [Tbl_News_Category] SET [NewsCat] = @NewsCat, [NewsCatDt] = @NewsCatDt WHERE [NCID] = @NCID">
        <DeleteParameters>
            <asp:Parameter Name="NCID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NewsCat" Type="String" />
            <asp:Parameter Name="NewsCatDt" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NewsCat" Type="String" />
            <asp:Parameter Name="NewsCatDt" Type="String" />
            <asp:Parameter Name="NCID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

