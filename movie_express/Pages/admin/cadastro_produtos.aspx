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
                <asp:TextBox ID="TextBox1" placeholder="Titulo do produto" runat="server" Width="700px"></asp:TextBox>
                <br />
                <br />
            <asp:DropDownList ID="DropDownList1" runat="server">
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
                <br />
           <asp:TextBox ID="TextBox3" runat="server" placeholder="Digite a data do lançamento" onKeyUp="mascara_data(this)" MaxLength="10" Width="225px"></asp:TextBox>         
                <br />
                <br />
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Sinopse do produto" Height="235px" Width="700px"></asp:TextBox>
                <br />
                <br />
            <asp:TextBox ID="TextBox5" placeholder="Preço" runat="server" Width="194px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" placeholder="Quantidade em estoque" runat="server" Width="222px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" placeholder="Nota I.M.D.B" runat="server" Width="240px"></asp:TextBox>
                <br />
                <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
                 <br />
            <asp:Button ID="Button1" runat="server" Text="Cadastrar Produto" Width="363px" />

            <script type="text/javascript">
             function mascara_data(campo) {    if(campo.value.length == 2)     {        campo.value += '/';    }    if(campo.value.length == 5)     {        campo.value += '/';    }}
           </script>
            <br />
            <br />
            <br />
        </div>
    </div>

</asp:Content>
