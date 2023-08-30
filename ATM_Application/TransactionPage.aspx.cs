using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ATM_Application
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnDeposite_Click(object sender, EventArgs e)
        {
            Response.Redirect("Deposite.aspx");
        }

        protected void BtnWithdraw_Click(object sender, EventArgs e)
        {
            Response.Redirect("Withdraw.aspx");
        }

        protected void BtnShowBal_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowBalence.aspx");
        }

        protected void BtnMin_Click(object sender, EventArgs e)
        {
            Response.Redirect("MinStatement.aspx");
        }
    }
}