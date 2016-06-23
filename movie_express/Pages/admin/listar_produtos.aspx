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
      
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="EntityDataSource1" Width="100%">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=bancoEntities1" DefaultContainerName="bancoEntities1" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="TB_PROD" EntityTypeFilter="TB_PROD">
        </asp:EntityDataSource>
      
    </div>



    <div class="col-md-12">
        
    </div>


</asp:Content>
