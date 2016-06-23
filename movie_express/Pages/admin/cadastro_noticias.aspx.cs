using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace movie_express.Pages.admin
{
    public partial class cadastro_noticias : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Salvar_Noticia_Click(object sender, EventArgs e)
        {
            movie_express.bancoEntities1 banco = new movie_express.bancoEntities1();

            string path = HttpRuntime.AppDomainAppPath+("assets/img/noticias");
            string nome = path + Foto_Noticia.FileName;

            TB_NOTIC noticia = new TB_NOTIC();

            noticia.NT_TITULO = Titulo_Noticia.Text;
            noticia.NT_CORPO = Texto_Noticia.Text;
            noticia.NT_DTPUBL = DateTime.Parse(Data_Noticia.Text);
            noticia.NT_FOTO = nome;

            if (Foto_Noticia.HasFile)
            {
                string extensao = Path.GetExtension(Foto_Noticia.FileName);
                if (extensao == "jpg" || extensao == "JPEG" || extensao == "PNG" || extensao == "png" || extensao == "gif")
                {
                    Foto_Noticia.SaveAs(( path + Foto_Noticia.FileName));
                }
            }
            
            banco.TB_NOTIC.Add(noticia);
            banco.SaveChanges();

        }


    }
}