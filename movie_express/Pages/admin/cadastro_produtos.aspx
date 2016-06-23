<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="cadastro_produtos.aspx.cs" Inherits="movie_express.Pages.admin.cadastro_produtos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-lg-12">
            <br />
            <h1 class="page-header">
                Cadastro de Produtos
            </h1>
        </div>
    </div>
   <div class="row">
        <div class="col-lg-12">
            <br />
            <div class="col-md-12">
                <asp:TextBox ID="Titulo_Prod" placeholder="Titulo do produto" runat="server" Width="700px"></asp:TextBox>
               
            </div>
            <br /><br />
            <div class="col-md-12">
            <asp:DropDownList ID="Genero_Prod" runat="server">
                <asp:ListItem>Escolha um Genero</asp:ListItem>
                <asp:ListItem>Terror</asp:ListItem>
                <asp:ListItem>Ação</asp:ListItem>
                <asp:ListItem>Aventura</asp:ListItem>
                <asp:ListItem>Comedia</asp:ListItem>
                <asp:ListItem>Romance</asp:ListItem>
                <asp:ListItem>Comédia Romantica</asp:ListItem>
                <asp:ListItem>Ação e Aventura</asp:ListItem>
                <asp:ListItem>Animação</asp:ListItem>
            </asp:DropDownList>
            <br />
            </div>
                <br />
                <br />
               
           <div class="col-md-12">
           <asp:TextBox ID="Ano_Lanc_Prod" runat="server" placeholder="Digite a data do lançamento" MaxLength="4" Width="225px"></asp:TextBox>         
                <br />
                <br />
           </div>
            <div class="col-md-12">
                <asp:TextBox  Wrap="true" TextMode="MultiLine" ID="Sinipse_Prod" runat="server" placeholder="Sinopse do produto" Height="235px" Width="700px"></asp:TextBox>
                    <br />
                    <br />
            </div>
            <div class="col-md-12">
                <asp:TextBox ID="Preco_Prod" placeholder="Preço" runat="server" Width="194px"></asp:TextBox>&nbsp;&nbsp;&nbsp;

                <asp:TextBox ID="Qtd_Estoque" placeholder="Quantidade em estoque" runat="server" Width="222px"></asp:TextBox>&nbsp;&nbsp;

                <asp:TextBox ID="Nota_Imdb" placeholder="Nota I.M.D.B" runat="server" Width="240px"></asp:TextBox>
                <br />
                <br />
             </div>
            <div class="col-md-12">
                <asp:FileUpload ID="Foto_Prod" runat="server" />
            </div>           
             <div class="col-md-12"><br />
                <asp:Button ID="Salvar_Produto" runat="server" OnClick="Salvar_Produto_Click" Text="Cadastrar Produto" />
           </div>
    </div>

</div>
</asp:Content>
