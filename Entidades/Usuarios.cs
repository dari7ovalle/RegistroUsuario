using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuarios
    {
        [Key]
        public int UsuarioId { get; set; }
        public string Nombre { get; set; }
        public string NombreUsuario { get; set; }
        public string Email { get; set; }
        public string Clave { get; set; }
        public string ComprobarClave { get; set; }
        public string Telefono { get; set; }
        public string Celular { get; set; }
        public DateTime Fecha { get; set; }
        public string   TipoUsuario { get; set; }
        public Usuarios()
        {
            this.UsuarioId = 0;
            this.Nombre = string.Empty;
            this.NombreUsuario = string.Empty;
            this.Email = string.Empty;
            this.Clave = string.Empty;
            this.ComprobarClave = string.Empty;
            this.Telefono = string.Empty;
            this.Celular = string.Empty;
            this.Fecha = DateTime.Now.Date;
            this.TipoUsuario = string.Empty; 

        }
    }
}
