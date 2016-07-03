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
      
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="US_ID" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
                <asp:BoundField DataField="US_ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="US_ID"></asp:BoundField>
                <asp:CheckBoxField DataField="US_ADM" HeaderText="ADM" SortExpression="US_ADM"></asp:CheckBoxField>
                <asp:BoundField DataField="US_NOME" HeaderText="NOME" SortExpression="US_NOME"></asp:BoundField>
                <asp:BoundField DataField="US_CPF" HeaderText="CPF" SortExpression="US_CPF"></asp:BoundField>
                <asp:BoundField DataField="US_RG" HeaderText="RG" SortExpression="US_RG"></asp:BoundField>
                <asp:BoundField DataField="US_NASC" HeaderText="NASCIMENTO" SortExpression="US_NASC"></asp:BoundField>
                <asp:BoundField DataField="US_EMAIL" HeaderText="EMAIL" SortExpression="US_EMAIL"></asp:BoundField>
                <asp:BoundField DataField="US_SENHA" HeaderText="SENHA" SortExpression="US_SENHA"></asp:BoundField>
                <asp:BoundField DataField="US_TEL" HeaderText="TELEFONE" SortExpression="US_TEL"></asp:BoundField>
                <asp:BoundField DataField="US_CEL" HeaderText="CELULAR" SortExpression="US_CEL"></asp:BoundField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [TB_USER] WHERE [US_ID] = @US_ID" InsertCommand="INSERT INTO [TB_USER] ([US_ADM], [US_NOME], [US_CPF], [US_RG], [US_NASC], [US_EMAIL], [US_SENHA], [US_TEL], [US_CEL]) VALUES (@US_ADM, @US_NOME, @US_CPF, @US_RG, @US_NASC, @US_EMAIL, @US_SENHA, @US_TEL, @US_CEL)" SelectCommand="SELECT * FROM [TB_USER]" UpdateCommand="UPDATE [TB_USER] SET [US_ADM] = @US_ADM, [US_NOME] = @US_NOME, [US_CPF] = @US_CPF, [US_RG] = @US_RG, [US_NASC] = @US_NASC, [US_EMAIL] = @US_EMAIL, [US_SENHA] = @US_SENHA, [US_TEL] = @US_TEL, [US_CEL] = @US_CEL WHERE [US_ID] = @US_ID">
            <DeleteParameters>
                <asp:Parameter Name="US_ID" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="US_ADM" Type="Boolean"></asp:Parameter>
                <asp:Parameter Name="US_NOME" Type="String"></asp:Parameter>
                <asp:Parameter Name="US_CPF" Type="String"></asp:Parameter>
                <asp:Parameter Name="US_RG" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="US_NASC"></asp:Parameter>
                <asp:Parameter Name="US_EMAIL" Type="String"></asp:Parameter>
                <asp:Parameter Name="US_SENHA" Type="String"></asp:Parameter>
                <asp:Parameter Name="US_TEL" Type="String"></asp:Parameter>
                <asp:Parameter Name="US_CEL" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="US_ADM" Type="Boolean"></asp:Parameter>
                <asp:Parameter Name="US_NOME" Type="String"></asp:Parameter>
                <asp:Parameter Name="US_CPF" Type="String"></asp:Parameter>
                <asp:Parameter Name="US_RG" Type="String"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="US_NASC"></asp:Parameter>
                <asp:Parameter Name="US_EMAIL" Type="String"></asp:Parameter>
                <asp:Parameter Name="US_SENHA" Type="String"></asp:Parameter>
                <asp:Parameter Name="US_TEL" Type="String"></asp:Parameter>
                <asp:Parameter Name="US_CEL" Type="String"></asp:Parameter>
                <asp:Parameter Name="US_ID" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>



    <div class="col-md-12">
        
    </div>

</asp:Content>
