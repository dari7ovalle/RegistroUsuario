using BLL;
using Entidades;
using FinanzasLite2._0.Utilitarios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroUsuarios.UI
{
    public partial class rUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void Limpiar()
        {
            NombreTextBox.Text = " ";
            NombreUsuariTextBox1.Text = " ";
            CorreoTextBox1.Text = " ";
            ContrasenaTextBox.Text = " ";
            ConfirmarTextBox1.Text = " ";
            tipoUsuarioDropDownList.Text = " ";
            TelefonoTextBox1.Text = " ";
            CelularTextBox1.Text = " ";

        }
        private Usuarios LlenaClase(Usuarios usuario)
        {
           


            usuario.Nombre = NombreTextBox.Text;
            usuario.NombreUsuario = NombreUsuariTextBox1.Text;
            usuario.Email = CorreoTextBox1.Text;
            usuario.Clave = ContrasenaTextBox.Text;
            usuario.ComprobarClave = ConfirmarTextBox1.Text;
            usuario.TipoUsuario = tipoUsuarioDropDownList.Text;
            usuario.Telefono = TelefonoTextBox1.Text;
            usuario.Celular = CelularTextBox1.Text;

            //DateTime fecha = DateTime.ParseExact(edtStartDate.Text, new[] { "YYYYMMDD", "YYMMDD" }, CultureInfo.InvariantCulture, DateTimeStyles.None);
            //tbSubject.Text = fecha.ToString("YYMMDD");
            usuario.Fecha = DateTime.Now.Date;

            return usuario;

        }
        //private bool Error()
        //{

        //    if (ContrasenaTextBox.Text.Equals( ConfirmarTextBox1.Text))
        //    {
        //        //  Response.Write("<script>alert('Contraseñas no concuerdan');</script>");
        //        Error = true;
        //    }

        //}
        protected void guardarButton_Click(object sender, EventArgs e)
        {
            BLL.RepositorioBase<Usuarios> repositorio = new BLL.RepositorioBase<Usuarios>();
            Usuarios usuarios = new Usuarios();
            bool paso = false;

            //todo: validaciones adicionales
            LlenaClase(usuarios);

            if (usuarios.UsuarioId == 0)
            {
                if (paso = repositorio.Guardar(usuarios))
                    Response.Write("<script>alert('Guardado Correctamente');</script>");

                else
                {
                    Response.Write("<script>alert('Error al Guardar');</script>");
                }
                Limpiar();
            }




            else
            {
                if (paso = repositorio.Modificar(usuarios))
                {
                    Response.Write("<script>alert('Modificado Correctamente');</script>");
                    Limpiar();
                }
                else
                {
                    Response.Write("<script>alert('Error al Modificar');</script>");
                }
            }
        }

        protected void eliminarutton_Click(object sender, EventArgs e)
        {
            BLL.RepositorioBase<Usuarios> repositorio = new BLL.RepositorioBase<Usuarios>();
            int id = Utils.ToInt(UsuarioIdTextBox.Text);

            var usuario = repositorio.Buscar(id);

            if (usuario == null)
                Response.Write("<script>alert('Error al Eliminar');</script>");
            else
                repositorio.Eliminar(id);
            Response.Write("<script>alert(' Usuario Eliminada');</script>");
        }

        protected void nuevoButton_Click(object sender, EventArgs e)
        {
            Limpiar();

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            RepositorioBase<Usuarios> repositorio = new RepositorioBase<Usuarios>();
            Usuarios usuarios = repositorio.Buscar(int.Parse(UsuarioIdTextBox.Text));
            if (usuarios != null)
            {
                NombreTextBox.Text = usuarios.Nombre;
                NombreUsuariTextBox1.Text= usuarios.NombreUsuario;
                CorreoTextBox1.Text = usuarios.Email;
                ContrasenaTextBox.Text = usuarios.Clave;
                ConfirmarTextBox1.Text = usuarios.ComprobarClave;
                TelefonoTextBox1.Text = usuarios.Telefono;
                CelularTextBox1.Text = usuarios.Celular;
                tipoUsuarioDropDownList.Text = usuarios.TipoUsuario;

                
            }
            else
            {
                Response.Write("<script>alert('Usuario  no existe');</script>");

            }
        }
    }
}
    