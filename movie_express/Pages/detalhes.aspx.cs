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
            movie_express.bancoEntities banco = new movie_express.bancoEntities();
           // TB_PROD produto = banco.TB_PROD.SingleOrDefault<v => v.PROD_ID == inputPROD_ID.Value >;

            if (Session["total_carrinho"] == null)
            {
               // Session["total_carrinho"] = 
            }

            Session["carrinho"] = inputPROD_ID.Value;            
            Response.Redirect("carrinho.aspx", false);
        }
    }
}