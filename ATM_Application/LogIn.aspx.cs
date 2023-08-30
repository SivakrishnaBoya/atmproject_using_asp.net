using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace ATM_Application
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           string Acou_Num= TxtAccNum.Text;
            string Pin_No= TxtPIN.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ToString());
            con.Open();
            string Query = "select * from Register1 Where AccountNumber=@AccountNumber and Pin_No=@Pin";
            SqlCommand cmdwr = new SqlCommand(Query, con);
            //cmdwr.CommandType = CommandType.StoredProcedure;
            cmdwr.Parameters.AddWithValue("@AccountNumber", Acou_Num);
            cmdwr.Parameters.AddWithValue("@Pin", Pin_No);
            SqlDataReader i=  cmdwr.ExecuteReader();
            if (i.Read())
            {
                Session["Acc_No"] = i["AccountNumber"];
                Response.Redirect("TransactionPage.aspx");
            }
            else
            {
               Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowMessage", string.Format("<script type='text/javascript'>alert('{0}')</script>", "Login Failure Due To Invalid Inputs"));
            }
            //if ((int)i==1)
            //    { 

                //    Response.Redirect("TransactionPage.aspx");
                //    }
                //else
                //{
                //    Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowMessage", string.Format("<script type='text/javascript'>alert('{0}')</script>", "Login Failure Due To Invalid Inputs"));
                //}


        }


    }
}