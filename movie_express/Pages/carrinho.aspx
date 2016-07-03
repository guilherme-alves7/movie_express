<%@ Page EnableEventValidation="false"  Title="" Language="C#" MasterPageFile="~/SiteLoja.Master" AutoEventWireup="true" CodeBehind="carrinho.aspx.cs" Inherits="movie_express.Pages.carrinho" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Seu Carrinho de Compras</h2>
                    </div>
                </div>
            </div>                                    
        </div>
    </div>

    <div class="product-content-right" style="margin-top:1%;">
        <div class="woocommerce">
            <form method="post" action="#">
                <table cellspacing="0" class="shop_table cart">
                    <thead>
                        <tr>
                            <th class="product-remove">&nbsp;</th>
                            <th class="product-thumbnail">&nbsp;</th>
                            <th class="product-name">Produto</th>
                            <th class="product-price">Preço</th>
                            <th class="product-quantity">Quantidade</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="cart_item">
                            <td colspan="6">
                                <asp:Label ID="lbCarrinhoVazio" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <tr class="cart_item">
                                    <td class="product-remove">
                                        <asp:Button ID="btn_remove_prod" runat="server" OnClick="btn_remove_prod_Click" Text="x" />
                                    </td>

                                    <td class="product-thumbnail">
                                        <a href="single-product.html">
                                            <img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="../assets/img/produtos/<%# Eval("PROD_FOTO") %>"></a>
                                    </td>

                                    <td class="product-name">
                                        <a href="single-product.html"><%# Eval("PROD_TITULO") %></a>
                                    </td>

                                    <td class="product-price">
                                        <span class="amount"><%# Eval("PROD_PRECO", "{0:c}") %></span>
                                    </td>

                                    <td class="product-quantity">

                                        
                                        <div class="quantity buttons_added" data-id="<%# Eval("PROD_ID") %>">

                                            <asp:DropDownList ID="quantidade" runat="server" CssClass="input-text qty text">
                                                <asp:ListItem Text="1" Value="1"/>
                                                <asp:ListItem Text="2" Value="2"/>
                                                <asp:ListItem Text="3" Value="3"/>
                                                <asp:ListItem Text="4" Value="4"/>
                                                <asp:ListItem Text="5" Value="5"/>
                                                <asp:ListItem Text="6" Value="6"/>
                                                <asp:ListItem Text="7" Value="7"/>
                                                <asp:ListItem Text="8" Value="8"/>
                                                <asp:ListItem Text="9" Value="9"/>
                                                <asp:ListItem Text="10" Value="10"/>
                                            </asp:DropDownList>
                                        </div>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [TB_PROD] WHERE ([PROD_ID] = @PROD_ID)">
                            <SelectParameters>
                                <asp:SessionParameter SessionField="carrinho" Name="PROD_ID" Type="Int32"></asp:SessionParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <tr>
                            <td class="actions" colspan="6" style="text-align: right">
                                <asp:Button ID="finalizar_pedido" runat="server" Text="Finalizar Pedido" CssClass="checkout-button button alt wc-forward" OnClick="finalizar_pedido_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right" colspan="6" class="actions">
                                <asp:Label ID="status_user" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>                        
    </div>
</asp:Content>
