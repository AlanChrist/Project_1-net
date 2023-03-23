using Microsoft.VisualBasic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CheapLoansApp
{
    public class CalcMethods
    {
        /// <summary>
        /// Calculate the montholy payments of a loan
        ///
        /// </summary>
        /// 
        /// <param name="rate">interest rate (%)</param> 
        /// <param name="loanAmt">loan amout ($)</param> 
        /// <param name="numPayments">deration of loan (month)</param> 
        /// 
        /// <returns>monthly loan payment</returns>
        public static double CalcPayment(double rate, double loanAmt, int numPayments)
        {
            return Math.Round(-Financial.Pmt(rate / 1200, numPayments, loanAmt), 2);
        }

        
    }
}