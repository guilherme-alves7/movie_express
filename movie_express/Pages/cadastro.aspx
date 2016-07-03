<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLoja.Master" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="movie_express.Pages.cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-5 col-md-offset-4" style="margin-top:20px;">  
                <asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label><br />
                <asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox><br />
                <asp:Label ID="Label2" runat="server" Text="CPF"></asp:Label><br />
                <asp:TextBox ID="txtCPF" runat="server" CssClass="form-control"></asp:TextBox><br />
                <asp:Label ID="Label3" runat="server" Text="RG"></asp:Label><br />
                <asp:TextBox ID="txtRG" runat="server" CssClass="form-control"></asp:TextBox><br />
                <asp:Label ID="Label4" runat="server" Text="Data de Nascimento"></asp:Label><br />
                <asp:TextBox ID="txtNasc" runat="server" CssClass="form-control"></asp:TextBox><br />
                <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label><br />
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox><br />
                <asp:Label ID="Label6" runat="server" Text="Senha"></asp:Label><br />
                <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox><br />
                <asp:Label ID="Label7" runat="server" Text="Telefone"></asp:Label><br />
                <asp:TextBox ID="txtTelefone" runat="server" CssClass="form-control"></asp:TextBox><br />
                <asp:Label ID="Label8" runat="server" Text="Celular"></asp:Label><br />
                <asp:TextBox ID="txtCelular" runat="server" CssClass="form-control"></asp:TextBox><br />
                <asp:Label ID="mensagem" runat="server" Text=""></asp:Label><br />
                <asp:Button ID="btnEnviar" runat="server" OnClick="btnEnviar_Click" Text="Enviar"/><br />
                <asp:Label ID="MsgCadastro" runat="server" Text=""></asp:Label>
                <br />
                <br />
            </div>
        </div>
    </div>
</asp:Content>
