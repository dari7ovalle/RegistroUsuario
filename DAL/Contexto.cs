using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;

using DAL;
using Entidades;

namespace DAL
{
    public class Contexto : DbContext

    {
        public DbSet<Usuarios> usuarios { get; set; }
       
        public Contexto() : base("ConStr")
        {

        }
    }
}