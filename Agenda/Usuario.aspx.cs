using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agenda
{
    public partial class Usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSourceAgenda_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSourceUsuario_Inserted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                //lMsg.Text = "Inserindo um registro duplicado ou com campos em branco";
                Response.Write("<Script> alert ('Inserindo um registro duplicado ou com campos em branco')< /Script > ");
                e.ExceptionHandled = true;
            }
        }

        protected void SqlDataSourceUsuario_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                //lMsg.Text = "Inserindo um registro sem informar todos os campos";
                Response.Write("<Script> alert ('Inserindo um registro sem informar todos os campos')< /Script > ");
                e.ExceptionHandled = true;
            }
        }
    }
}