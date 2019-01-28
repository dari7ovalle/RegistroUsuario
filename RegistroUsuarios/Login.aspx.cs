using BLL;
using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroUsuarios
{
    public partial class Login : System.Web.UI.Page
    {
        RepositorioBase<Usuarios> repositorio = new RepositorioBase<Usuarios>();
        Expression<Func<Usuarios, bool>> filtrar = x => true;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void iniciarSButton_Click(object sender, EventArgs e)
        {
           
        }

        protected void iniciarSButton_Click1(object sender, EventArgs e)
        {
            BLL.UserRepositorio.Autenticar(emailTextBox.Text, passwordTextBox.Text, this);
        }
    }
}