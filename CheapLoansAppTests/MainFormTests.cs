using Microsoft.VisualStudio.TestTools.UnitTesting;
using CheapLoansApp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CheapLoansApp.Tests
{
    [TestClass]
    public class CalcMethodsTests
    {
        [TestMethod()]
        public void CalcPaymentTest()
        {
            Assert.AreEqual(93.22, CalcMethods.CalcPayment(.045, 5000, 60));
        }
    }
}