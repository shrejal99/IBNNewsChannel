<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminZoneMaster.master" AutoEventWireup="true" CodeFile="AdvertisementMgmt.aspx.cs" Inherits="AdminZone_AdvertisementMgmt" %>

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
            color:black;
            border: 1px solid #808080;
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
    ADD ADVERTISEMENT
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="box">
       PICTURE <br />
        <asp:FileUpload runat="server" CssClass="txt" ID="FuAdv" />
      WEBSITE URL
        <br />
        <asp:TextBox runat="server" Text="http://" ID="TxtLink" CssClass="txt"></asp:TextBox><br />
       
       
        <br />
        <asp:Button runat="server" Text="ADD CATEGORY" CssClass="btn" ID="BtnAdd"  OnClick="BtnAdd_Click" />
    </div>
    <br /><br />
    <asp:GridView Width="100%" runat="server" HeaderStyle-Height="50" ID="GV" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="AID" HeaderText="SNo." InsertVisible="False" ReadOnly="True" SortExpression="AID" />
            <asp:BoundField DataField="PicName" HeaderText="PicName" SortExpression="PicName" />
            <asp:BoundField DataField="ALink" HeaderText="Link" SortExpression="ALink" />
            <asp:BoundField DataField="ADate" HeaderText="Date" SortExpression="ADate" />
            <asp:ImageField  DataImageUrlField="PicName" DataImageUrlFormatString="~/Advertisement/{0}" ControlStyle-Height="7px" ControlStyle-BorderWidth="7px">
<ControlStyle BorderWidth="7px" Height="7px"></ControlStyle>
            </asp:ImageField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="white" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="white" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IBN_NewsConnectionString %>" DeleteCommand="DELETE FROM [Tbl_Advertise] WHERE [AID] = @AID" InsertCommand="INSERT INTO [Tbl_Advertise] ([PicName], [ALink], [ADate]) VALUES (@PicName, @ALink, @ADate)" SelectCommand="SELECT * FROM [Tbl_Advertise] ORDER BY [AID] DESC" UpdateCommand="UPDATE [Tbl_Advertise] SET [PicName] = @PicName, [ALink] = @ALink, [ADate] = @ADate WHERE [AID] = @AID">
        <DeleteParameters>
            <asp:Parameter Name="AID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PicName" Type="String" />
            <asp:Parameter Name="ALink" Type="String" />
            <asp:Parameter Name="ADate" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PicName" Type="String" />
            <asp:Parameter Name="ALink" Type="String" />
            <asp:Parameter Name="ADate" Type="String" />
            <asp:Parameter Name="AID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

