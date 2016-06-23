using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace movie_express.Pages
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            movie_express.bancoEntities banco = new movie_express.bancoEntities();
            //bool retorno = banco.InserirUser(txtNome, txtCPF, txtRG, txtNasc, txtEmail, txtSenha, txtTelefone, txtCelular);

            TB_USER user = new TB_USER();

            user.US_NOME = txtNome.Text;
            user.US_CPF = txtCPF.Text;
            user.US_RG = txtRG.Text;
            user.US_NASC = DateTime.Parse(txtNasc.Text);
            user.US_EMAIL = txtEmail.Text;
            user.US_SENHA = txtSenha.Text;
            user.US_TEL = txtTelefone.Text;
            user.US_CEL = txtCelular.Text;
            user.US_ADM = false;

            banco.TB_USER.Add(user);
            banco.SaveChanges();
            Response.Redirect("produtos.aspx", false);
            //if (retorno)
            //{
            //  lblPedMsg.Text = "Inserção bem sucedida! ";
            //}
            //else
            //{
            //   lblPedMsg.Text = "Inserção falhou!";
            //}
        }
        protected void btnLogar_Click(object sender, EventArgs e)
        {
            bancoEntities logar = new bancoEntities();

            TB_USER U = logar.TB_USER.SingleOrDefault(v => v.US_EMAIL == loginEmail.Text && v.US_SENHA == loginSenha.Text);


            if (U != null)
            {
                if(U.US_ADM){

                    Session["logado"] = true;
                    Session["nomeusuario"] = U.US_NOME;
                    Session["cod_usuario"] = U.US_ID;

                    Response.Redirect("admin/home.aspx");

                }
                else
                {
                    Session["logado"] = true;
                    Session["nomeusuario"] = U.US_NOME;
                    Session["cod_usuario"] = U.US_ID;


                    Response.Redirect("perfil.aspx");
                }
               //FormsAuthentication.RedirectFromLoginPage(U.US_NOME, false);
               // Response.Redirect("noticias.aspx");
            }
            else
            {
                lbMsgLogin.Text = "Usuário inválido!";
            }
        }
    }
}
