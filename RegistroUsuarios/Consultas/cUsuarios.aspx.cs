using Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistroUsuarios.Consultas
{
    public partial class cUsuarios : System.Web.UI.Page
    {
        Expression<Func<Usuarios, bool>> filtro = x => true;
        BLL.RepositorioBase<Usuarios> repositorio = new BLL.RepositorioBase<Usuarios>();
        List<Usuarios> usuarios = new List<Usuarios>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                usuarios = repositorio.GetList(filtro);
                DesdeTextBox.Text = DateTime.Now.ToString("yyyy-MM-dd");
                HastaTextBox.Text = DateTime.Now.ToString("yyyy-MM-dd");
            }
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {

            DateTime desde = Convert.ToDateTime( DesdeTextBox.Text);

            DateTime hasta = Convert.ToDateTime(HastaTextBox.Text);
            int id;

            switch (BuscarDropDownList.SelectedIndex)
            {
                case 0:

                    int.TryParse(FiltroTextBox.Text, out id);
                    filtro = c => c.UsuarioId == id && c.Fecha >= desde && c.Fecha <= hasta;
                    //
                    break;
                case 1:// nombre
                    filtro = c => c.Nombre.Contains(FiltroTextBox.Text) && c.Fecha >= desde && c.Fecha <= hasta;
                    break;
            }

            usuarios = repositorio.GetList(filtro);
            DatosGridView.DataSource = usuarios;
            DatosGridView.DataBind();
        }
    }
}
        
    
