using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebDevCa
{
    public class DAO
    {
        SqlConnection con;
        //Constructer --- this builds a class
        public DAO()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCon"].ConnectionString);
            //ConnectionString["DBCon"] <<--- this is set in app.config
        }

        public SqlConnection OpenCon()
        {
            //this runs the test if the connection/connection state is open or not already || = OR  
            if (con.State == ConnectionState.Broken || con.State == ConnectionState.Closed)
            {
                con.Open();

            }
            return con;
        }

        public void CloseCon()
        {
            if (con != null) //does it exist?
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }

            }

        }
    }
}