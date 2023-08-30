using System;
using System.Collections;
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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Generatepin();
                GetDatabaseValue();

            }
        }


protected void GetDatabaseValue()
    {
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ToString());
            con.Open();
            string Query = "SELECT TOP 1 AccountNumber FROM Register1 ORDER BY AccountNumber  DESC";
            SqlCommand cmdwr = new SqlCommand(Query, con);
            object value = cmdwr.ExecuteScalar();
            TxtAccNum.Text = value.ToString();

            
         
        }


    void Generatepin()
        {
            int num = new Random().Next(1000, 9999);
            TxtPin.Text = num.ToString();
            TxtPin.ReadOnly = true;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string pin = TxtPin.Text;
            string Name = TxtName.Text;
            string PhoneNumber =TxtPhno.Text;
            string Amount = TxtAmt.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ToString());
            con.Open();
            string Query = "pro_Insert";
            SqlCommand cmdwr = new SqlCommand(Query, con);
            cmdwr.CommandType=CommandType.StoredProcedure;
            cmdwr.Parameters.AddWithValue("@pin",pin);
            cmdwr.Parameters.AddWithValue("@Name", Name);
            cmdwr.Parameters.AddWithValue("@Phno", PhoneNumber);
            cmdwr.Parameters.AddWithValue("@Amt", Amount);
            int i=  cmdwr.ExecuteNonQuery();
            if (i == 1)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowMessage", string.Format("<script type='text/javascript'>alert('{0}')</script>", "Registration Sucessfully Done"));
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowMessage", string.Format("<script type='text/javascript'>alert('{0}')</script>", "User Details not valid"));
            }

        }
    }
}
