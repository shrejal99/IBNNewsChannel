<%@ Page Title="" Language="C#" MasterPageFile="~/AdminZone/AdminZoneMaster.master" AutoEventWireup="true" CodeFile="SuggestionMgmt.aspx.cs" Inherits="AdminZone_SuggestionMgmt" %>

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
            b
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
    SUGGESTION
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <center>
     <asp:GridView runat="server" HeaderStyle-Height="50" Width="100%" ID="gv" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="SID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
         <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
         <Columns>
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
             <asp:BoundField DataField="SID" HeaderText="Sno." InsertVisible="False" ReadOnly="True" SortExpression="SID" />
             <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
             <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
             <asp:BoundField DataField="Topic" HeaderText="Topic" SortExpression="Topic" />
             <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
             <asp:BoundField DataField="SDate" HeaderText="Date" SortExpression="SDate" />
         </Columns>
         <EditRowStyle BackColor="#999999" />
         <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
         <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#E9E7E2" />
         <SortedAscendingHeaderStyle BackColor="#506C8C" />
         <SortedDescendingCellStyle BackColor="#FFFDF8" />
         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IBN_NewsConnectionString %>" DeleteCommand="DELETE FROM [Tbl_Suggestion] WHERE [SID] = @SID" InsertCommand="INSERT INTO [Tbl_Suggestion] ([Name], [MobileNo], [Topic], [Message], [SDate]) VALUES (@Name, @MobileNo, @Topic, @Message, @SDate)" SelectCommand="SELECT * FROM [Tbl_Suggestion] ORDER BY [SID]" UpdateCommand="UPDATE [Tbl_Suggestion] SET [Name] = @Name, [MobileNo] = @MobileNo, [Topic] = @Topic, [Message] = @Message, [SDate] = @SDate WHERE [SID] = @SID">
            <DeleteParameters>
                <asp:Parameter Name="SID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="Topic" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
                <asp:Parameter Name="SDate" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="Topic" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
                <asp:Parameter Name="SDate" Type="String" />
                <asp:Parameter Name="SID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>

