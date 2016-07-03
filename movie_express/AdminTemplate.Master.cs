using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace movie_express
{
    public partial class AdminTemplate : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void deslogar_Click(object sender, EventArgs e)
        {
            Session["logado"] = null;
            Session["nomeusuario"] = null;
            Session["cod_usuario"] = null;
            //FormsAuthentication.SignOut();
            Response.Redirect("../login.aspx");
        }
    }
}