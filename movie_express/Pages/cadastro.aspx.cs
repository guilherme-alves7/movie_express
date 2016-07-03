using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Diagnostics;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace movie_express.Pages
{
    public partial class cadastro : System.Web.UI.Page
    {
        private MailMessage Email;
        Stopwatch Stop = new Stopwatch();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            movie_express.bancoEntities1 banco = new movie_express.bancoEntities1();
            //bool retorno = banco.InserirUser(txtNome, txtCPF, txtRG, txtNasc, txtEmail, txtSenha, txtTelefone, txtCelular);

            TB_USER user = new TB_USER();

            user.US_NOME = txtNome.Text;
            user.US_CPF = txtCPF.Text;
            user.US_RG = txtRG.Text;

            if (txtNasc.Text != "")
            {
                DateTime data_nascimento = DateTime.Parse(txtNasc.Text);
                user.US_NASC = data_nascimento;
            }
            user.US_EMAIL = txtEmail.Text;
            user.US_SENHA = txtSenha.Text;
            user.US_TEL = txtTelefone.Text;
            user.US_CEL = txtCelular.Text;
            user.US_ADM = false;

            banco.TB_USER.Add(user);
            banco.SaveChanges();

            //envia email
            Email = new MailMessage();
            Email.To.Add(new MailAddress(txtEmail.Text)); //destinatario
            Email.From = new MailAddress("tecnologia.ifsp@gmail.com"); //remetente
            Email.Subject = "Usuário cadastrado com sucesso - MovieExpress";
            Email.IsBodyHtml = true;
            Email.Body = "<h1>Usuário cadastrado com sucesso!</h1>" +
                            "Você se cadastrou na Loja MovieExpress, a melhor escolha para filmes online." +
                            "<br><br><p><b>Dados cadastrados:</b></p>" +
                            "<p><b>Nome:</b> " + txtNome.Text + "</p>" +
                            "<p><b>CPF:</b> " + txtCPF.Text + "</p>" +
                            "<p><b>RG:</b> " + txtRG.Text + "</p>" +
                            "<p><b>EMAIL:</b> " + txtEmail.Text + "</p>" +
                            "<p><b>Telefone:</b> " + txtTelefone.Text + "</p>" +
                            "<p><b>Celular:</b> " + txtCelular.Text + "</p>";

            SmtpClient cliente = new SmtpClient("smtp.gmail.com", 587);
            using (cliente)
            {
                cliente.Credentials = new System.Net.NetworkCredential("tecnologia.ifsp@gmail.com", "tecnologia!@#");
                cliente.EnableSsl = true;
                cliente.Send(Email);
            }

            Response.Redirect("login.aspx", false);
            MsgCadastro.Text = "Cadastro realizado com sucesso.";
        }
    }
}