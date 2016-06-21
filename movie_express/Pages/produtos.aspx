<%@ Page Title="" Language="C#" MasterPageFile="../SiteLoja.Master" AutoEventWireup="true" CodeFile="produtos.aspx.cs" Inherits="Pages_produtos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Últimos Lançamentos</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="EntityDataSource1">
                    <ItemTemplate>
                        <div class="col-md-3 col-sm-6">
                            <div class="single-shop-product">
                                <div class="product-upper">
                                    <img src="../assets/img/produtos/<%# Eval("PROD_ID") %>.jpg" />
                                </div>
                                <h2><a href="<%# Eval("PROD_ID", "detalhes.aspx?id={0}") %>"><%# Eval("PROD_TITULO") %></a></h2>
                                <div class="product-carousel-price">
                                    <ins><%# Eval("PROD_PRECO", "{0:c}") %></ins>
                                </div>  
                        
                                <div class="product-option-shop">
                                    <a class="add_to_cart_button" rel="nofollow" href="<%# Eval("PROD_ID", "detalhes.aspx?id={0}") %>">COMPRAR</a>
                                </div>                       
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>                
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=bancoEntities" DefaultContainerName="bancoEntities" EnableFlattening="False" EntitySetName="TB_PROD">
                </asp:EntityDataSource>                
            </div>
        </div>
    </div>
</asp:Content>

