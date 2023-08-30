using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATM_Application
{
    public partial class Withdraw : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["Acc_No"] != null)
            {
                string acc_No = Session["Acc_No"].ToString();
                double Amount = Convert.ToDouble(TextBox2.Text);
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ToString());
                con.Open();
                string Query = "pro_Deposite";
                SqlCommand cmdwr = new SqlCommand(Query, con);
                cmdwr.CommandType = CommandType.StoredProcedure;
                cmdwr.Parameters.AddWithValue("@Amount", Amount);
                cmdwr.Parameters.AddWithValue("@Acc_No", acc_No);
                int i = cmdwr.ExecuteNonQuery();
                if (i >= 1)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowMessage", string.Format("<script type='text/javascript'>alert('{0}')</script>", "Withdraw Done"));
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowMessage", string.Format("<script type='text/javascript'>alert('{0}')</script>", "Insuffient funds"));
                }
            }
        }
    }
}