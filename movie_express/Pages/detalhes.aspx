<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/SiteLoja.Master" AutoEventWireup="true" CodeBehind="detalhes.aspx.cs" Inherits="movie_express.Pages.detalhes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Detalhes</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">                
                <div class="col-md-12">
                    <div class="product-content-right">
                        
                        <div class="row">                                                      
                            <asp:HiddenField ID="inputPROD_ID" runat="server" Value="" />                  
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                    <div class="col-sm-6">
                                        <div class="product-images">
                                            <div class="product-main-img">
                                                <img src="../assets/img/produtos/<%# Eval("PROD_FOTO") %>" alt="">
                                            </div>
                                        </div>
                                    </div>  
                                    <div class="col-sm-6">
                                        <div class="product-inner">
                                            <h2 class="product-name"><%# Eval("PROD_TITULO") %></h2>
                                            <div class="product-inner-price">
                                                <ins><%# Eval("PROD_PRECO", "{0:c}") %></ins>
                                            </div>

                                            <asp:Button ID="btn_add_carrinho" runat="server" OnClick="btn_add_carrinho_Click" Text="Adicionar ao Carrinho" />
                                            <div class="product-inner-category">
                                                <p></p>
                                            </div>
                                            <div role="tabpanel">
                                                <ul class="product-tab" role="tablist">
                                                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Sinopse</a></li>
                                                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Informações</a></li>
                                                </ul>
                                                <div class="tab-content">
                                                    <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                        <h2>Sinopse do Filme</h2>
                                                        <p><%# Eval("PROD_SINOPS") %></p>
                                                    </div>
                                                    <div role="tabpanel" class="tab-pane fade" id="profile">
                                                        <h2>Informações</h2>
                                                        <br />
                                                        <b>Ano Lançamento: </b><%# Eval("PROD_ANOLAN") %>
                                                        <br />
                                                        <b>Nota IMDB: </b><%# Eval("PROD_IMDB") %>
                                                        <br />
                                                        <b>Em Estoque: </b><%# Eval("PROD_QTDEST") %>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [TB_PROD] WHERE ([PROD_ID] = @PROD_ID)">
                                <SelectParameters>
                                    <asp:QueryStringParameter QueryStringField="id" Name="PROD_ID" Type="Int32"></asp:QueryStringParameter>
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                        
                        
                        <div class="related-products-wrapper">
                            <h2 class="related-products-title">Veja também</h2>
                            <div class="single-product-area">
                                <div class="zigzag-bottom"></div>
                                <div class="container">
                                    <div class="row">
                                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
                                            <ItemTemplate>
                                                <div class="col-md-3 col-sm-6">
                                                    <div class="single-shop-product">
                                                        <div class="product-upper">
                                                            <img src="../assets/img/produtos/<%# Eval("PROD_FOTO") %>" />
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
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT TOP 4 * FROM [TB_PROD] WHERE ([PROD_ID] != @PROD_ID)">
                                            <SelectParameters>
                                                <asp:QueryStringParameter Name="PROD_ID" QueryStringField="id" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>              
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </div>
</asp:Content>
