using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATM_Application
{
    public partial class ShowBalence : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDatabaseValue();
            }
            
        }
        protected void GetDatabaseValue()
        {
            if (Session["Acc_No"] != null)
            {
                string acc_No = Session["Acc_No"].ToString();
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ToString());
                con.Open();
                string Query = "pro_Show";
                SqlCommand cmdwr = new SqlCommand(Query, con);
                cmdwr.CommandType = CommandType.StoredProcedure;
                cmdwr.Parameters.AddWithValue("@AccNo", acc_No);
                object value = cmdwr.ExecuteScalar();
                Total_Bal.Text = value.ToString();
                double Efbalence =Convert.ToDouble(value) - 2000;
                Min_Bal.Text=Efbalence.ToString();
            }
            



        }
    }
}