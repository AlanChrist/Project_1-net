using Microsoft.VisualBasic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CheapLoansApp
{
    public class CalcMethods
    {
        /// <summary>
        /// Calculate the montholy payments of a loan
        ///
        /// </summary>
        /// <param name="rate"></param> interest rate
        /// <param name="loanAmt"></param> loan amout
        /// <param name="numPayments"></param> deration of loan (month)
        /// <returns></returns>
        public static double CalcPayment(double rate, double loanAmt, int numPayments)
        {
            return Math.Round(-Financial.Pmt(rate / 1200, numPayments, loanAmt), 2);
        }
    }
}