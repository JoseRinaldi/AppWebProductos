using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP_Final_Csharp_3
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Articulo> listarticulos { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            NegocioDatosMetodos Negocio = new NegocioDatosMetodos();
            listarticulos = Negocio.listarConSP();

            if (!IsPostBack)
            {
                rptRepetidor.DataSource = listarticulos;
                rptRepetidor.DataBind();
            }

        }

        protected void btnEjemplo_Click(object sender, EventArgs e)
        {
            string valor = ((Button)sender).CommandArgument;
        }
    }
}