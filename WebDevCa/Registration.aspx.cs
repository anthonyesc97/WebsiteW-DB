using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Security.Cryptography;
using System.Data;

namespace WebDevCa
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        //sql connection
        DAO dao = new DAO();
        HashPass hp = new HashPass();

        protected void btnRegister_Click1(object sender, EventArgs e)
        {   //Registration for users
            string user = txtUser.Text;
            string password = hp.PassHash(txtPass.Text);
            string em = txtEmail.Text;

            SqlCommand cmd = dao.OpenCon().CreateCommand();
            cmd.CommandText = "uspAddMember";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@user", user);
            cmd.Parameters.AddWithValue("@pass", password);
            cmd.Parameters.AddWithValue("@em", em);

            dao.OpenCon();
            cmd.ExecuteNonQuery();
            dao.CloseCon();

            txtUser.Text = "";
            txtPass.Text = "";
            txtEmail.Text = "";
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Succesfully Registered')", true);
        }
    }
}