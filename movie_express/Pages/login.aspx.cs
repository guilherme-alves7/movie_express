using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Diagnostics;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace movie_express.Pages
{
    public partial class login : System.Web.UI.Page
    {
        private MailMessage Email;
        Stopwatch Stop = new Stopwatch();
        protected void Page_Load(object sender, EventArgs e)
        {

        }        
        protected void btnLogar_Click(object sender, EventArgs e)
        {
            bancoEntities1 logar = new bancoEntities1();

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
