using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;
using System.Web.UI;

namespace BLL
{
 public    class UserRepositorio : RepositorioBase<Usuarios>
    {
        public UserRepositorio()
        {

        }
        public static void Autenticar(string email, string clave, Page page)
        {
            RepositorioBase<Usuarios> repositorio = new RepositorioBase<Usuarios>();
            System.Linq.Expressions.Expression<Func<Usuarios, bool>> filtrar = x => true;
            Usuarios usuario = new Usuarios();

            filtrar = t => t.Email.Equals(email) && t.Clave.Equals(clave);

            if (repositorio.GetList(filtrar).Count() != 0)
                FormsAuthentication.RedirectFromLoginPage(usuario.Email, true);
            else
                ScriptManager.RegisterStartupScript(page, typeof(Page), "toastr_message", script: "toastr['error'] ('Usuario o Contraseña Incorrecto');", addScriptTags: true);
        }
    }
}

