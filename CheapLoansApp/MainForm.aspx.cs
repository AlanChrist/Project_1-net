using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.VisualBasic;

namespace CheapLoansApp
{
    public partial class View : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            double rate = Double.Parse(TextBoxRate.Text) / 100;
            double loanAmt = Double.Parse(TextBoxLoan.Text);
            int numPayments = int.Parse(TextBoxNumPay.Text);

            string monthly = CalcMethods.CalcPayment(rate, loanAmt, numPayments).ToString("0.00");

            LabelMonthly.Text = "Your monthly payment will be:<br />$" + monthly.ToString();
            string ratse = (Double.Parse(TextBoxRate.Text) / 100).ToString();
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            SqlDataSourceLoans.InsertCommand = "insert into loans values(@custName, @loanAmount, @annualIntRate, @numPayments)";
            
            SqlDataSourceLoans.InsertParameters.Add("custName", TypeCode.String, TextBoxLName.Text + ", " + TextBoxFName.Text);
            SqlDataSourceLoans.InsertParameters.Add("loanAmount", TypeCode.Decimal, TextBoxLoan.Text);
            SqlDataSourceLoans.InsertParameters.Add("annualIntRate", TypeCode.Decimal, (Double.Parse(TextBoxRate.Text) / 100).ToString());
            SqlDataSourceLoans.InsertParameters.Add("numPayments", TypeCode.Int16, TextBoxNumPay.Text);

            SqlDataSourceLoans.Insert();
        }

        protected void ButtonDisplay_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayForm.aspx");
            //control to show total loan amounts (LINQ statement)
        }
        public static double CalcPayment(double rate, double loanAmt, int numPayments)
        {
            return Math.Round(-Financial.Pmt(rate / 12, numPayments, loanAmt), 2);
        }
    }
}