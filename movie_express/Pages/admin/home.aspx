<%@ Page Title="" Language="C#" MasterPageFile="../../AdminTemplate.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="movie_express.Pages.admin.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">
            <br />
            <h1 class="page-header">
                Listagem de Noticias
            </h1>
        </div>
    </div>
    <div style="margin-left: -30px;" class="col-md-12">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1" Height="346px" Width="100%" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=bancoEntities1" DefaultContainerName="bancoEntities1" EnableFlattening="False" EntitySetName="TB_NOTIC" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeFilter="TB_NOTIC">
        </asp:EntityDataSource>

    </div>



    <div class="col-md-12">
        
    </div>
    <!-- /.row -->
    
</asp:Content>