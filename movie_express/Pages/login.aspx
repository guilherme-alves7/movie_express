<%@ Page enableEventValidation="false" Title="" Language="C#" MasterPageFile="~/SiteLoja.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="movie_express.Pages.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">
            <div class="col-md-5 col-md-offset-4" style="margin-top:20px;"> 
                        
                        <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label><br />
                        <asp:TextBox ID="loginEmail" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <asp:Label ID="Label10" runat="server" Text="Senha"></asp:Label><br />
                        <asp:TextBox ID="loginSenha" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox><br />
                        <br />
                        <asp:Button ID="BtnLogar" runat="server" Text="Entrar" OnClick="btnLogar_Click"/><br />
                        <asp:Label ID="lbMsgLogin" runat="server" Text=""></asp:Label>
                      
                        <br />

            </div>
        </div>
    </div>





</asp:Content>
