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
            Session["carrinho"] = inputPROD_ID.Value;
            //Application["carrinho"] = inputPROD_ID.Value.ToString();
            Response.Redirect("carrinho.aspx", false);
        }
    }
}