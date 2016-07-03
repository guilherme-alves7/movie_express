<%@ Page Title="" Language="C#" MasterPageFile="../../AdminTemplate.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="movie_express.Pages.admin.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">
            <br />
            <h1 class="page-header">
                Listagem de Noticias
            </h1>
        </div>
    </div>
    <div style="margin-left: -30px;" class="col-md-12">
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="NT_ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                <asp:BoundField DataField="NT_ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="NT_ID"></asp:BoundField>
                <asp:BoundField DataField="NT_TITULO" HeaderText="TITULO" SortExpression="NT_TITULO"></asp:BoundField>
                <asp:BoundField DataField="NT_DTPUBL" HeaderText="DATA PUBLICA&#199;&#195;O" SortExpression="NT_DTPUBL"></asp:BoundField>
                <asp:BoundField DataField="NT_CORPO" HeaderText="CORPO" SortExpression="NT_CORPO"></asp:BoundField>
                <asp:BoundField DataField="NT_CURTID" HeaderText="CURTIDAS" SortExpression="NT_CURTID"></asp:BoundField>
                <asp:BoundField DataField="NT_FOTO" HeaderText="FOTO" SortExpression="NT_FOTO"></asp:BoundField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [TB_NOTIC] WHERE [NT_ID] = @NT_ID" InsertCommand="INSERT INTO [TB_NOTIC] ([NT_TITULO], [NT_DTPUBL], [NT_CORPO], [NT_CURTID], [NT_FOTO]) VALUES (@NT_TITULO, @NT_DTPUBL, @NT_CORPO, @NT_CURTID, @NT_FOTO)" SelectCommand="SELECT * FROM [TB_NOTIC]" UpdateCommand="UPDATE [TB_NOTIC] SET [NT_TITULO] = @NT_TITULO, [NT_DTPUBL] = @NT_DTPUBL, [NT_CORPO] = @NT_CORPO, [NT_CURTID] = @NT_CURTID, [NT_FOTO] = @NT_FOTO WHERE [NT_ID] = @NT_ID">
            <DeleteParameters>
                <asp:Parameter Name="NT_ID" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NT_TITULO" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="NT_DTPUBL"></asp:Parameter>
                <asp:Parameter Name="NT_CORPO" Type="String"></asp:Parameter>
                <asp:Parameter Name="NT_CURTID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="NT_FOTO" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NT_TITULO" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="NT_DTPUBL"></asp:Parameter>
                <asp:Parameter Name="NT_CORPO" Type="String"></asp:Parameter>
                <asp:Parameter Name="NT_CURTID" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="NT_FOTO" Type="String"></asp:Parameter>
                <asp:Parameter Name="NT_ID" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>



    <div class="col-md-12">
        
    </div>
    <!-- /.row -->
    
</asp:Content>