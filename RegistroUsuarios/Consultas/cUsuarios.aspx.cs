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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            Expression<Func<Usuarios, bool>> filtro = x => true;
            BLL.RepositorioBase<Usuarios> repositorio = new BLL.RepositorioBase<Usuarios>();

            int id;

            switch (BuscarDropDownList.SelectedIndex)
            {
                case 0:

                    int.TryParse(FiltroTextBox.Text, out id);
                    filtro = c => c.UsuarioId == id;
                    //
                    break;
                case 1:// nombre
                    filtro = c => c.Nombre.Contains(FiltroTextBox.Text);
                    break;
            }

            DatosGridView.DataSource = repositorio.GetList(filtro);
            DatosGridView.DataBind();
        }
    }
        
    
