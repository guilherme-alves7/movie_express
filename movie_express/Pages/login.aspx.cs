using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Text;

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
        }
    }
}
