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
            if (Session["carrinho"] != null)
            {
                lbSessao.Text = Session["carrinho"].ToString();
            }
            else
            {
                lbSessao.Text = "Carrinho vazio!";
                lbCarrinhoVazio.Text = "Seu carrinho esta vazio.";
            }
        }
    }
}