using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Text;
using System.Security.Cryptography;

namespace WebDevCa
{
    public partial class Login : System.Web.UI.Page
    {
        //sql connection
        DAO dao = new DAO();
        SqlDataReader dr;
        HashPass hp = new HashPass();

        protected void Page_Load(object sender, EventArgs e)
        {
            lblloginerror.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {   //Alows users to login
            string userlog = txtuserlog.Text;
            string userpass = hp.PassHash(txtuserpass.Text);

            SqlCommand cmd = dao.OpenCon().CreateCommand();
            cmd.CommandText = "uspLogin";
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@userlog", userlog);
            cmd.Parameters.AddWithValue("@passlog", userpass);

            dao.OpenCon();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Response.Redirect("Myshop.aspx");
            }
            else
            {
                lblloginerror.Visible = true;
            }
            dao.CloseCon();

        }

       
    }
}