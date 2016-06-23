using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace movie_express.Pages
{
    public partial class perfil : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["logado"] == null) {
                Response.Redirect("login.aspx");
            }
            else
            {
                int codigo = Convert.ToInt32(Session["cod_usuario"]);
                 
                bancoEntities logar = new bancoEntities();
                TB_USER U = logar.TB_USER.SingleOrDefault(v => v.US_ID == codigo);

                if (U != null)
                {

                    txtNome.Text = U.US_NOME;
                    txtCPF.Text = U.US_CPF;
                    txtRG.Text = U.US_RG;
                    txtNasc.Text = U.US_NASC.ToString();
                    txtEmail.Text = U.US_EMAIL;
                    txtSenha.Text = U.US_SENHA;
                    txtTelefone.Text = U.US_TEL;
                    txtCelular.Text = U.US_CEL;



                }


                }
        }

        protected void btnSair_Click(object sender, EventArgs e)
        {
            Session["logado"] = null;
            Session["nomeusuario"] = null;
            Session["cod_usuario"] = null;
            //FormsAuthentication.SignOut();
            Response.Redirect("login.aspx");
        }
    }
}