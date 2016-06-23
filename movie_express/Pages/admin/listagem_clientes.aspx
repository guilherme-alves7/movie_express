<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="listagem_clientes.aspx.cs" Inherits="movie_express.Pages.admin.listagem_clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-lg-12">
            <br />
            <h1 class="page-header">
                Listagem de Clientes
            </h1>
        </div>
    </div>
    <div class="col-md-12">
      
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataSourceID="EntityDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=bancoEntities1" DefaultContainerName="bancoEntities1" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="TB_USER">
        </asp:EntityDataSource>
      
    </div>



    <div class="col-md-12">
        
    </div>

</asp:Content>
