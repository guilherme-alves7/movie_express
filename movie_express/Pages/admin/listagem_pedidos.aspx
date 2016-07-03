<%@ Page Title="" Language="C#" MasterPageFile="~/AdminTemplate.Master" AutoEventWireup="true" CodeBehind="listagem_pedidos.aspx.cs" Inherits="movie_express.Pages.admin.listagem_pedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-lg-12">
            <br />
            <h1 class="page-header">
                Listagem de Pedidos
            </h1>
        </div>
    </div>
    <div style="margin-left:-20px;" class="col-md-12">
      
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PEDI_ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" Width="50%">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
                <asp:BoundField DataField="PEDI_ID" HeaderText="NUMERO DO PEDIDO" ReadOnly="True" InsertVisible="False" SortExpression="PEDI_ID"></asp:BoundField>
                <asp:BoundField DataField="US_ID" HeaderText="ID CLIENTE" SortExpression="US_ID"></asp:BoundField>
                <asp:BoundField DataField="PEDI_DATA" HeaderText="DATA PEDIDO" SortExpression="PEDI_DATA"></asp:BoundField>
                <asp:BoundField DataField="PEDI_VALOR" HeaderText="VALOR" SortExpression="PEDI_VALOR"></asp:BoundField>
                <asp:CheckBoxField DataField="PEDI_PAGO" HeaderText="PAGO" SortExpression="PEDI_PAGO"></asp:CheckBoxField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [TB_PEDIDO] WHERE [PEDI_ID] = @PEDI_ID" InsertCommand="INSERT INTO [TB_PEDIDO] ([US_ID], [PEDI_DATA], [PEDI_VALOR], [PEDI_PAGO]) VALUES (@US_ID, @PEDI_DATA, @PEDI_VALOR, @PEDI_PAGO)" SelectCommand="SELECT * FROM [TB_PEDIDO]" UpdateCommand="UPDATE [TB_PEDIDO] SET [US_ID] = @US_ID, [PEDI_DATA] = @PEDI_DATA, [PEDI_VALOR] = @PEDI_VALOR, [PEDI_PAGO] = @PEDI_PAGO WHERE [PEDI_ID] = @PEDI_ID">
            <DeleteParameters>
                <asp:Parameter Name="PEDI_ID" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="US_ID" Type="Int32"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="PEDI_DATA"></asp:Parameter>
                <asp:Parameter Name="PEDI_VALOR" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="PEDI_PAGO" Type="Boolean"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="US_ID" Type="Int32"></asp:Parameter>
                <asp:Parameter DbType="Date" Name="PEDI_DATA"></asp:Parameter>
                <asp:Parameter Name="PEDI_VALOR" Type="Decimal"></asp:Parameter>
                <asp:Parameter Name="PEDI_PAGO" Type="Boolean"></asp:Parameter>
                <asp:Parameter Name="PEDI_ID" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>



    <div class="col-md-12">
        
    </div>

</asp:Content>
