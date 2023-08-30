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
    public partial class MinStatement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Acc_No"] != null)
                {
                    string acc_No = Session["Acc_No"].ToString();
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Db"].ToString());
                    con.Open();
                    string Query = "pro_Show1";
                    SqlCommand cmd = new SqlCommand(Query, con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@AccNo", acc_No);
                    SqlDataAdapter cmdwr = new SqlDataAdapter(cmd);
                    DataTable ds = new DataTable();
                    cmdwr.Fill(ds);
                    Min_StatementGrid.DataSource = ds;
                    Min_StatementGrid.DataBind();

                }

            }
        }
    }
}