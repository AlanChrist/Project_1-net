<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayForm.aspx.cs" Inherits="CheapLoansApp.DisplayForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LoanNum" DataSourceID="LoanDataSource">
                <Columns>
                    <asp:BoundField DataField="LoanNum" HeaderText="Loan Number" InsertVisible="False" ReadOnly="True" SortExpression="LoanNum" />
                    <asp:BoundField DataField="CustName" HeaderText="Customer Name" SortExpression="CustName" />
                    <asp:BoundField DataField="LoanAmount" HeaderText="Loan Amount" SortExpression="LoanAmount" />
                    <asp:BoundField DataField="AnnualIntRate" HeaderText="Annual Interest Rate" SortExpression="AnnualIntRate" />
                    <asp:BoundField DataField="NumPayments" HeaderText="Number of Payments" SortExpression="NumPayments" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LoanDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:CheapLoansConnectionString %>" ProviderName="<%$ ConnectionStrings:CheapLoansConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Loans]"></asp:SqlDataSource>
        </div>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server">
        </asp:LinqDataSource>
        <asp:Button ID="ButtonHome" runat="server" Text="Home" OnClick="ButtonHome_Click" />
    </form>
</body>
</html>
