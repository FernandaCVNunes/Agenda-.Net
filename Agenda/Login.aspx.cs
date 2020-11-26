using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Agenda
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogar_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string senha = txtSenha.Text;

            //Capturar a string de conexão - forma simplificada sem precisar de conversão de tipo
            string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            //Cria um objetivo de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from usuario where email=@email and senha=@senha";
            cmd.Parameters.AddWithValue("email", email);
            cmd.Parameters.AddWithValue("senha", senha);
            con.Open();
            SqlDataReader registro = cmd.ExecuteReader();

            if (registro.HasRows)
            {
                HttpCookie login = new HttpCookie("login",txtEmail.Text);
                Response.Cookies.Add(login);
                Response.Redirect("~/Index.aspx");
            }
            else
            {
                Response.Write("<scrip> alert('Email ou Senha incorretos');</scrip>");
            }
        }
    }
}