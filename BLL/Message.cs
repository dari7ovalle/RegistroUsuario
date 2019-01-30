using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI;

namespace BLL
{
    public static class Message
    {
        public static void ShowToast(Page page, string tipo, string titulo, string mensaje)
        {
            page.ClientScript.RegisterStartupScript(page.GetType(), "toastr_message", "toastr." + tipo + "('" + mensaje + "', '" + titulo + "')", true);
        }
    }
}
