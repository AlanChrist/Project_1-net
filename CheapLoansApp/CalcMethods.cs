using Microsoft.VisualBasic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CheapLoansApp
{
    public class CalcMethods
    {
        public static double CalcPayment(double rate, double loanAmt, int numPayments)
        {
            return Math.Round(-Financial.Pmt(rate / 12, numPayments, loanAmt), 2);
        }
    }
}