<%@ Page Title="" Language="C#" MasterPageFile="~/SiteLoja.Master" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="movie_express.Pages.perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="margin-bottom:20px;">
	    <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bhoechie-tab-container">
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 bhoechie-tab-menu">
                  <div class="list-group">
                    <a href="#" class="list-group-item active text-center">
                      <h4 class="glyphicon glyphicon-user"></h4><br/>Meus Dados
                    </a>
                    <a href="#" class="list-group-item text-center">
                      <h4 class="glyphicon glyphicon-list-alt"></h4><br/>Meus Pedidos
                    </a>
                  </div>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 bhoechie-tab">
                    <!-- flight section -->
                    <div class="bhoechie-tab-content active">
                            <div class="col-md-12">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="US_ID" DataSourceID="SqlDataSource2">
                                    <Columns>
                                        <asp:CommandField ShowEditButton="True"></asp:CommandField>
                                        <asp:BoundField DataField="US_ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="US_ID"></asp:BoundField>
                                        <asp:CheckBoxField DataField="US_ADM" HeaderText="ADM" SortExpression="US_ADM"></asp:CheckBoxField>
                                        <asp:BoundField DataField="US_NOME" HeaderText="NOME" SortExpression="US_NOME"></asp:BoundField>
                                        <asp:BoundField DataField="US_CPF" HeaderText="CPF" SortExpression="US_CPF"></asp:BoundField>
                                        <asp:BoundField DataField="US_RG" HeaderText="RG" SortExpression="US_RG"></asp:BoundField>
                                        <asp:BoundField DataField="US_NASC" HeaderText="NASC" SortExpression="US_NASC"></asp:BoundField>
                                        <asp:BoundField DataField="US_EMAIL" HeaderText="EMAIL" SortExpression="US_EMAIL"></asp:BoundField>
                                        <asp:BoundField DataField="US_SENHA" HeaderText="SENHA" SortExpression="US_SENHA"></asp:BoundField>
                                        <asp:BoundField DataField="US_TEL" HeaderText="TELEFONE" SortExpression="US_TEL"></asp:BoundField>
                                        <asp:BoundField DataField="US_CEL" HeaderText="CELULAR" SortExpression="US_CEL"></asp:BoundField>
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [TB_USER] WHERE [US_ID] = @US_ID" InsertCommand="INSERT INTO [TB_USER] ([US_ADM], [US_NOME], [US_CPF], [US_RG], [US_NASC], [US_EMAIL], [US_SENHA], [US_TEL], [US_CEL]) VALUES (@US_ADM, @US_NOME, @US_CPF, @US_RG, @US_NASC, @US_EMAIL, @US_SENHA, @US_TEL, @US_CEL)" SelectCommand="SELECT * FROM [TB_USER] WHERE ([US_ID] = @US_ID)" UpdateCommand="UPDATE [TB_USER] SET [US_ADM] = @US_ADM, [US_NOME] = @US_NOME, [US_CPF] = @US_CPF, [US_RG] = @US_RG, [US_NASC] = @US_NASC, [US_EMAIL] = @US_EMAIL, [US_SENHA] = @US_SENHA, [US_TEL] = @US_TEL, [US_CEL] = @US_CEL WHERE [US_ID] = @US_ID">
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
                                    <SelectParameters>
                                        <asp:SessionParameter SessionField="cod_usuario" Name="US_ID" Type="Int32"></asp:SessionParameter>
                                    </SelectParameters>
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
                            <br /> 
                            <asp:Button ID="btnSair" runat="server" Text="Deslogar" OnClick="btnSair_Click" />
                            <br />
                            <br />
                    </div>
                    <!-- train section -->
                    <div class="bhoechie-tab-content">
                        <div class="col-md-12">
                            <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
                                <div class="col-md-12">
	                                <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Acompanhe seus pedidos realizados:</h3>
                                        </div>   
                                        <ul class="list-group">
                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                                <ItemTemplate>

                                                    <li class="list-group-item">
                                                        <div class="row toggle" id="dropdown-detail-<%# Eval("PEDI_ID") %>" data-toggle="detail-<%# Eval("PEDI_ID") %>">
                                                            <div class="col-xs-10">
                                                                Pedido <%# Eval("PEDI_ID") %>
                                                            </div>
                                                            <div class="col-xs-2"><i class="fa fa-chevron-down pull-right"></i></div>
                                                        </div>
                                                        <div id="detail-<%# Eval("PEDI_ID") %>">
                                                            <hr></hr>
                                                            <div class="container" style="width: 100%">
                                                                <div class="fluid-row">
                                                                    <div class="col-xs-1">
                                                                        Data:
                                                                    </div>
                                                                    <div class="col-xs-5">
                                                                        <%# Eval("PEDI_DATA") %>
                                                                    </div>
                                                                    <div class="col-xs-1">
                                                                        Valor:
                                                                    </div>
                                                                    <div class="col-xs-5">
                                                                        <%# Eval("PEDI_VALOR", "{0:c}") %>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [TB_PEDIDO] WHERE ([US_ID] = @US_ID)">
                                                <SelectParameters>
                                                    <asp:SessionParameter SessionField="cod_usuario" Name="US_ID" Type="Int32"></asp:SessionParameter>
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </ul>
	                                </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
      </div>
    </div>
    <style>
        
        /*  bhoechie tab */
        div.bhoechie-tab-container{
          z-index: 10;
          background-color: #ffffff;
          padding: 0 !important;
          border-radius: 4px;
          -moz-border-radius: 4px;
          border:1px solid #ddd;
          margin-top: 20px;
          margin-left: 50px;
          -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
          box-shadow: 0 6px 12px rgba(0,0,0,.175);
          -moz-box-shadow: 0 6px 12px rgba(0,0,0,.175);
          background-clip: padding-box;
          opacity: 0.97;
          filter: alpha(opacity=97);
        }
        div.bhoechie-tab-menu{
          padding-right: 0;
          padding-left: 0;
          padding-bottom: 0;
        }
        div.bhoechie-tab-menu div.list-group{
          margin-bottom: 0;
        }
        div.bhoechie-tab-menu div.list-group>a{
          margin-bottom: 0;
        }
        div.bhoechie-tab-menu div.list-group>a .glyphicon,
        div.bhoechie-tab-menu div.list-group>a .fa {
          color: #5A55A3;
        }
        div.bhoechie-tab-menu div.list-group>a:first-child{
          border-top-right-radius: 0;
          -moz-border-top-right-radius: 0;
        }
        div.bhoechie-tab-menu div.list-group>a:last-child{
          border-bottom-right-radius: 0;
          -moz-border-bottom-right-radius: 0;
        }
        div.bhoechie-tab-menu div.list-group>a.active,
        div.bhoechie-tab-menu div.list-group>a.active .glyphicon,
        div.bhoechie-tab-menu div.list-group>a.active .fa{
          background-color: #5A55A3;
          background-image: #5A55A3;
          color: #ffffff;
        }
        div.bhoechie-tab-menu div.list-group>a.active:after{
          content: '';
          position: absolute;
          left: 100%;
          top: 50%;
          margin-top: -13px;
          border-left: 0;
          border-bottom: 13px solid transparent;
          border-top: 13px solid transparent;
          border-left: 10px solid #5A55A3;
        }

        div.bhoechie-tab-content{
          background-color: #ffffff;
          /* border: 1px solid #eeeeee; */
          padding-left: 20px;
          padding-top: 10px;
        }

        div.bhoechie-tab div.bhoechie-tab-content:not(.active){
          display: none;
        }
    </style>

</asp:Content>
