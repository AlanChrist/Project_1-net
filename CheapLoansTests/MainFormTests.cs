using Microsoft.VisualStudio.TestTools.UnitTesting;
using CheapLoansApp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MainForm.Tests
{
    [TestClass()]
    public class MainFormTests
    {
        [TestMethod()]
        public void CalcPaymentTest()
        {
            Assert.AreEqual(93.22, CalcMethods.CalcPayment(4.5, 5000, 60));
        }
    }
}