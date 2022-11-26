using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebDevCa
{
    public partial class Myshop : System.Web.UI.Page 
    {
        
        //sql connection
        DAO dao = new DAO();
        SqlDataAdapter da;
        DataTable dt;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowOrders();
        }

        protected void btnAddCoffee_Click(object sender, EventArgs e)
        {   //add coffee to products DB
            string coffee = txtAddCoffee.Text;
            int cqnty = int.Parse(txtCoffeeqnty.Text);
            double cprice = double.Parse(txtCoffeeprice.Text);

            SqlCommand cmd = dao.OpenCon().CreateCommand();
            cmd.CommandText = "uspAddOrder";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pname",coffee);
            cmd.Parameters.AddWithValue("@qnty", cqnty);
            cmd.Parameters.AddWithValue("@pprice", cprice);

            dao.OpenCon();
            cmd.ExecuteNonQuery();
            dao.CloseCon();

            txtCoffeeqnty.Text = "Insert Quantity";
            
        }

        protected void btnAddCroiss_Click(object sender, EventArgs e)
        {
            //add croissant to products DB
            string croiss = txtAddCroiss.Text;
            int crqnty = int.Parse(txtCroissqnty.Text);
            double crprice = double.Parse(txtCroissprice.Text);

            SqlCommand cmd = dao.OpenCon().CreateCommand();
            cmd.CommandText = "uspAddOrder";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pname", croiss);
            cmd.Parameters.AddWithValue("@qnty", crqnty);
            cmd.Parameters.AddWithValue("@pprice", crprice);

            dao.OpenCon();
            cmd.ExecuteNonQuery();
            dao.CloseCon();

            txtCroissqnty.Text = "Insert Quantity";

        }

        protected void btnAddCake_Click(object sender, EventArgs e)
        {
            //add cake to products DB
            string cake = txtAddCake.Text;
            int caqnty = int.Parse(txtCakeQnty.Text);
            double caprice = double.Parse(txtCakeprice.Text);

            SqlCommand cmd = dao.OpenCon().CreateCommand();
            cmd.CommandText = "uspAddOrder";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pname", cake);
            cmd.Parameters.AddWithValue("@qnty", caqnty);
            cmd.Parameters.AddWithValue("@pprice", caprice);

            dao.OpenCon();
            cmd.ExecuteNonQuery();
            dao.CloseCon();

            txtCakeQnty.Text = "Insert Quantity";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your Order has been placed!')", true);
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {   
           Response.Redirect("Login.aspx");
        }

        protected void gvOrders_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        void ShowOrders()
        {   //Shows orders on grid view
            da = new SqlDataAdapter();
            dt = new DataTable();


            SqlCommand cmd = dao.OpenCon().CreateCommand();
            cmd.CommandText = "uspShoworders";
            cmd.CommandType = CommandType.StoredProcedure;

            da.SelectCommand = cmd;

            //fills data table
            da.Fill(dt);

            //datagrid table
            dgvOrders.DataSource = dt;
            dgvOrders.DataBind();
            dao.CloseCon();
        }
        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            dgvOrders.PageIndex = e.NewPageIndex;
            this.ShowOrders();
        }

        protected void btnViewOrders_Click(object sender, EventArgs e)
        {
            ShowOrders();
        }

        decimal TotalPrice()
        {
            //calculate price of orders
            SqlCommand cmd = dao.OpenCon().CreateCommand();
            cmd.CommandText = "uspTotalprice";
            cmd.CommandType = CommandType.StoredProcedure;
            dao.OpenCon();
            string totalprice = cmd.ExecuteScalar().ToString();
            decimal price = decimal.Parse(totalprice);
            dao.CloseCon();
            return price;
        }

        protected void btnShowPrice_Click(object sender, EventArgs e)
        {
            decimal totalprice = TotalPrice();
            lblTotalprice.Text = totalprice.ToString();
        }

        protected void btnRemoveCoffee_Click(object sender, EventArgs e)
        {   //removes entries for coffee
            SqlCommand cmd = dao.OpenCon().CreateCommand();
            cmd.CommandText = "uspDelCoffee";
            cmd.CommandType = CommandType.StoredProcedure;
            dao.OpenCon();
            cmd.ExecuteNonQuery();
            dao.CloseCon();
        }

        protected void btnRemoveCroiss_Click(object sender, EventArgs e)
        {   //removes entries for croissant
            SqlCommand cmd = dao.OpenCon().CreateCommand();
            cmd.CommandText = "uspDelCroissant";
            cmd.CommandType = CommandType.StoredProcedure;
            dao.OpenCon();
            cmd.ExecuteNonQuery();
            dao.CloseCon();
        }

        protected void btnRemoveCake_Click(object sender, EventArgs e)
        {   //removes entries for cake
            SqlCommand cmd = dao.OpenCon().CreateCommand();
            cmd.CommandText = "uspDelCake";
            cmd.CommandType = CommandType.StoredProcedure;
            dao.OpenCon();
            cmd.ExecuteNonQuery();
            dao.CloseCon();
        }
    }
}