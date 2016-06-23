<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLoja.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="movie_express.Pages.perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <div class="container">
        <div class="row">
            <div class="col-lg-12">


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
                            
              
                          
                          <br /> 


        <asp:Button ID="btnSair" runat="server" Text="Deslogar" OnClick="btnSair_Click" />
        <br />
        <br />
    </div>
    

</div>
</div>

</asp:Content>
