using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

namespace DSW_Aula11
{
    public class Email
    {
        public static bool EnviarAutomatico(string Para, string Assunto, string Mensagem)
        {
            try
            {
                MailMessage MensagemEmail = new MailMessage();

                MensagemEmail.To.Add(Para);
                MensagemEmail.Subject = Assunto;
                MensagemEmail.Body = Mensagem;
                MensagemEmail.IsBodyHtml = false;

                SmtpClient envio = new SmtpClient();
                envio.Send(MensagemEmail);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static bool EnviarManual(string Host, string Port, string usuario,
            string senha, bool HabilitarSsl,
            string Para, string Assunto, string Mensagem)
        {
            try
            {
                MailMessage MensagemEmail = new MailMessage();

                MensagemEmail.To.Add(Para);
                MensagemEmail.Subject = Assunto;
                MensagemEmail.Body = Mensagem;
                MensagemEmail.IsBodyHtml = false;
                
                SmtpClient envio = new SmtpClient();

                //Envio manual
                envio.Host = Host;
                envio.Port = int.Parse(Port);
                envio.UseDefaultCredentials = true;
                envio.Credentials = new System.Net.NetworkCredential(usuario, senha);
                envio.EnableSsl = HabilitarSsl;
                //FIM Envio manual
                envio.Send(MensagemEmail);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}