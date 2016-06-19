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
                <asp:TextBox ID="TextBox1" placeholder="Titulo da Noticia" runat="server" Width="701px"></asp:TextBox>
                <br /><br />
                <asp:TextBox ID="TextBox2" placeholder="Texto da Noticia" runat="server" Height="251px" Width="700px"></asp:TextBox>
                <br /><br />
                <asp:TextBox ID="TextBox3" runat="server" placeholder="Digite a data de publicação" onKeyUp="mascara_data(this)" MaxLength="10" Width="225px"></asp:TextBox>
                <br /><br />
                <asp:FileUpload placeholder="Imagem da noticia" ID="FileUpload1" runat="server" />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Publicar Noticia" Width="261px" />
            <br />
            <br />
       </div>
    </div>
    <script type="text/javascript">
    function mascara_data(campo) {    if(campo.value.length == 2)     {        campo.value += '/';    }    if(campo.value.length == 5)     {        campo.value += '/';    }}
    </script>

 <!-- /.row -->
</asp:Content>
