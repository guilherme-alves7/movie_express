<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="listar_produtos.aspx.cs" Inherits="movie_express.Pages.admin.listar_produtos"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row">
        <div class="col-lg-12">
            <br />
            <h1 class="page-header">
                Listagem de Produtos
            </h1>
        </div>
    </div>
    <div style="margin-left:-30px;" class="col-md-12">
      
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PROD_ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                <asp:BoundField DataField="PROD_ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="PROD_ID"></asp:BoundField>
                <asp:BoundField DataField="PROD_TITULO" HeaderText="TITULO" SortExpression="PROD_TITULO"></asp:BoundField>
                <asp:BoundField DataField="PROD_PRECO" HeaderText="PRE&#199;O" SortExpression="PROD_PRECO"></asp:BoundField>
                <asp:BoundField DataField="PROD_GENERO" HeaderText="GENERO" SortExpression="PROD_GENERO"></asp:BoundField>
                <asp:BoundField DataField="PROD_ANOLAN" HeaderText="ANO LAN&#199;AMENTO" SortExpression="PROD_ANOLAN"></asp:BoundField>
                <asp:BoundField DataField="PROD_SINOPS" HeaderText="SINOPSE" SortExpression="PROD_SINOPS"></asp:BoundField>
                <asp:BoundField DataField="PROD_IMDB" HeaderText="NOTA IMDB" SortExpression="PROD_IMDB"></asp:BoundField>
                <asp:BoundField DataField="PROD_QTDEST" HeaderText="QTD ESTOQUE" SortExpression="PROD_QTDEST"></asp:BoundField>
                <asp:BoundField DataField="PROD_FOTO" HeaderText="FOTO" SortExpression="PROD_FOTO"></asp:BoundField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [TB_PROD] WHERE [PROD_ID] = @PROD_ID" InsertCommand="INSERT INTO [TB_PROD] ([PROD_TITULO], [PROD_PRECO], [PROD_GENERO], [PROD_ANOLAN], [PROD_SINOPS], [PROD_IMDB], [PROD_QTDEST], [PROD_FOTO]) VALUES (@PROD_TITULO, @PROD_PRECO, @PROD_GENERO, @PROD_ANOLAN, @PROD_SINOPS, @PROD_IMDB, @PROD_QTDEST, @PROD_FOTO)" SelectCommand="SELECT * FROM [TB_PROD]" UpdateCommand="UPDATE [TB_PROD] SET [PROD_TITULO] = @PROD_TITULO, [PROD_PRECO] = @PROD_PRECO, [PROD_GENERO] = @PROD_GENERO, [PROD_ANOLAN] = @PROD_ANOLAN, [PROD_SINOPS] = @PROD_SINOPS, [PROD_IMDB] = @PROD_IMDB, [PROD_QTDEST] = @PROD_QTDEST, [PROD_FOTO] = @PROD_FOTO WHERE [PROD_ID] = @PROD_ID">
            <DeleteParameters>
                <asp:Parameter Name="PROD_ID" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PROD_TITULO" Type="String"></asp:Parameter>
                <asp:Parameter Name="PROD_PRECO" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="PROD_GENERO" Type="String"></asp:Parameter>
                <asp:Parameter Name="PROD_ANOLAN" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="PROD_SINOPS" Type="String"></asp:Parameter>
                <asp:Parameter Name="PROD_IMDB" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="PROD_QTDEST" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="PROD_FOTO" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PROD_TITULO" Type="String"></asp:Parameter>
                <asp:Parameter Name="PROD_PRECO" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="PROD_GENERO" Type="String"></asp:Parameter>
                <asp:Parameter Name="PROD_ANOLAN" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="PROD_SINOPS" Type="String"></asp:Parameter>
                <asp:Parameter Name="PROD_IMDB" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="PROD_QTDEST" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="PROD_FOTO" Type="String"></asp:Parameter>
                <asp:Parameter Name="PROD_ID" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>



    <div class="col-md-12">
        
    </div>


</asp:Content>
