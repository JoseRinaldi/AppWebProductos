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
    public partial class Lista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                NegocioDatosMetodos Negocio = new NegocioDatosMetodos();
                Session.Add("listaproductos", Negocio.listarConSP());
                dgvProductos.DataSource = Session["listaproductos"];
                dgvProductos.DataBind();
            }
        }

        protected void txtfiltrar_TextChanged(object sender, EventArgs e)
        {
            List<Articulo> lista = (List<Articulo>)Session["listaproductos"];
            List<Articulo> listafiltrada = lista.FindAll(x => x.Nombre.ToUpper().Contains(txtfiltrar.Text.ToUpper()));
            dgvProductos.DataSource = listafiltrada;
            dgvProductos.DataBind();
        }

        protected void chkAvanzado_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

        }

        protected void ddlCampo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}