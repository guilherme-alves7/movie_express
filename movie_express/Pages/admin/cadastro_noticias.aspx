<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="cadastro_noticias.aspx.cs" Inherits="movie_express.Pages.admin.cadastro_noticias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12"><br /><br />
            <h1 class="page-header">
                Cadastro de Noticias
            </h1>   
        </div>
    </div>
     <div class="row">
        <div class="col-lg-12">
            <div class="col-md-12">
                <asp:TextBox ID="Titulo_Noticia" placeholder="Titulo da Noticia" runat="server" Width="701px" Height="27px"></asp:TextBox>
                <br /><br />
            </div>
            <div class="col-md-12">
                <asp:TextBox Wrap="true" TextMode="MultiLine" ID="Texto_Noticia" placeholder="Texto da Noticia" runat="server" Height="251px" Width="700px"></asp:TextBox>
                <br /><br />
            </div>
            <div class="col-md-12">
                <asp:TextBox ID="Data_Noticia" runat="server" placeholder="Digite a data de publicação" onKeyUp="mascara_data(this)" MaxLength="10" Width="225px"></asp:TextBox>
                <br /><br />
            </div>
            <div class="col-md-12">
                <asp:FileUpload placeholder="Imagem da noticia" ID="Foto_Noticia" runat="server" />
            </div>
                <br /><br />
            <div class="col-md-12">
                <asp:Button ID="Salvar_Noticia" runat="server" Text="Publicar Noticia" Width="261px" OnClick="Salvar_Noticia_Click" />
            </div>
            <br />
            <br />
       </div>
    </div>
    <script type="text/javascript">
    function mascara_data(campo) {    if(campo.value.length == 2)     {        campo.value += '/';    }    if(campo.value.length == 5)     {        campo.value += '/';    }}
    </script>

 <!-- /.row -->
</asp:Content>
