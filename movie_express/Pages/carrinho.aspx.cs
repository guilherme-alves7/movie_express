using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace movie_express.Pages
{
    public partial class carrinho : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["carrinho"] == null)
            {
                lbCarrinhoVazio.Text = "Seu carrinho esta vazio.";
            }
        }

        protected void btn_remove_prod_Click(object sender, EventArgs e)
        {
            Session["carrinho"] = null;
            Response.Redirect("carrinho.aspx", false);
        }

        protected void qnt_prod_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void finalizar_pedido_Click(object sender, EventArgs e)
        {
            if (Session["logado"] == null)
            {
                status_user.Text = "Por favor logue no sistema, antes de fechar o pedido.";
            }
            else
            {
                int cod_usuario = (int)Session["cod_usuario"];
                movie_express.bancoEntities1 banco = new movie_express.bancoEntities1();

                TB_PEDIDO pedido = new TB_PEDIDO();
                pedido.US_ID = cod_usuario;
                pedido.PEDI_DATA = DateTime.Now;
                pedido.PEDI_VALOR = Decimal.Parse(Session["total_carrinho"].ToString());
                pedido.PEDI_PAGO = false;

                banco.TB_PEDIDO.Add(pedido);
                banco.SaveChanges();

                TB_PDPROD pedido_produto = new TB_PDPROD();
                pedido_produto.PEDI_ID = pedido.PEDI_ID;
                pedido_produto.PROD_ID = (int)Session["carrinho"];
                pedido_produto.PDPR_QTD = 1;

                banco.TB_PDPROD.Add(pedido_produto);
                banco.SaveChanges();

                Response.Redirect("perfil.aspx", false);
            }
        }
    }
}