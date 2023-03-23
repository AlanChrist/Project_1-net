using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CheapLoansApp
{
    public partial class DisplayForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoanAverageLinq();
        }

        protected void ButtonHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("MainForm.aspx");            
        }
        
        public void LoanAverage()
        {
            DataView dv  = (DataView)LoanDataSource0.Select(DataSourceSelectArguments.Empty);


            Label1.Text = dv.Table.Rows[0].Field<Decimal>(0).ToString();
        }
        public void LoanAverageLinq()
        {
            DataView dv = (DataView)LoanDataSource0.Select(DataSourceSelectArguments.Empty);
            DataTable dt = dv.Table;


            Label1.Text = dt.AsEnumerable().Average(row => row.Field<Decimal>(0)).ToString();
        }
    }
}