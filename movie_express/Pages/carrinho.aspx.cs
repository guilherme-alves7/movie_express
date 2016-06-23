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
                int cod_usuario = (int)Session["codigo"];
                movie_express.bancoEntities banco = new movie_express.bancoEntities();
                TB_PEDIDO pedido = new TB_PEDIDO();
                pedido.US_ID = cod_usuario;
                pedido.PEDI_DATA = DateTime.Now;
               // pedido.PEDI_VALOR = "";
                pedido.PEDI_PAGO = false;


            }
        }
    }
}