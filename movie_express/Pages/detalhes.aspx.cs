using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace movie_express.Pages
{
    public partial class detalhes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Application["carrinho"] = Application["carrinho"];
            Session["carrinho"] = Session["carrinho"];
            if (Request.QueryString["id"] != null)
            {
                inputPROD_ID.Value = Request.QueryString["id"].ToString();
            }
        }

        protected void btn_add_carrinho_Click(object sender, EventArgs e)
        {
            movie_express.bancoEntities1 banco = new movie_express.bancoEntities1();

            int cod_produto = Convert.ToInt32(inputPROD_ID.Value);
            TB_PROD produto = banco.TB_PROD.SingleOrDefault(v => v.PROD_ID == cod_produto);

            if(produto != null)
            {
                //if (Session["total_carrinho"] == null)
                //{
                    Session["total_carrinho"] = produto.PROD_PRECO;
                //}
                //else
                //{
                  //  decimal total = Decimal.Parse( Session["total_carrinho"].ToString() );
                 //   total = total + produto.PROD_PRECO;
                //    Session["total_carrinho"] = total;
                //}
                Session["carrinho"] = produto.PROD_ID;
            }
             
            Response.Redirect("carrinho.aspx", false);
        }
    }
}