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
    <div class="col-md-12">carrinho: <asp:Label ID="lbSessao" runat="server"></asp:Label>        
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
                            <th class="product-subtotal">Total</th>
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
                                            <img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="../assets/img/produtos/<%# Eval("PROD_ID") %>.jpg"></a>
                                    </td>

                                    <td class="product-name">
                                        <a href="single-product.html"><%# Eval("PROD_TITULO") %></a>
                                    </td>

                                    <td class="product-price">
                                        <span class="amount"><%# Eval("PROD_PRECO", "{0:c}") %></span>
                                    </td>

                                    <td class="product-quantity">
                                        <div class="quantity buttons_added">
                                            <input type="button" class="minus" value="-">
                                            <input type="number" size="4" class="input-text qty text" data-cod="<%# Eval("PROD_ID") %>" title="Qty" value="1" min="0" step="1">
                                            <input type="button" class="plus" value="+">
                                        </div>
                                    </td>

                                    <td class="product-subtotal">
                                        <span id="total-<%# Eval("PROD_ID") %>" class="amount">15.00</span>
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
                                <input type="submit" value="Finalizar Pedido" name="proceed" class="checkout-button button alt wc-forward">
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>

            <div class="cart-collaterals">
                <div class="cart_totals ">
                    <h2>Total Carrinho</h2>

                    <table cellspacing="0">
                        <tbody>
                            <tr class="cart-subtotal">
                                <th>Subtotal</th>
                                <td><span class="amount">R$ 150,00</span></td>
                            </tr>

                            <tr class="shipping">
                                <th>Frete</th>
                                <td>R$ 0,00</td>
                            </tr>

                            <tr class="order-total">
                                <th>Total</th>
                                <td><strong><span class="amount">R$ 150,00</span></strong> </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>                        
    </div>
</asp:Content>
