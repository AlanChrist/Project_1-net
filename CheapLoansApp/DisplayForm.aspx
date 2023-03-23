<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayForm.aspx.cs" Inherits="CheapLoansApp.DisplayForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LoanNum" DataSourceID="LoanDataSource1">
                <Columns>
                    
                    <asp:BoundField DataField="LoanNum" HeaderText="Loan Number" InsertVisible="False" ReadOnly="True" SortExpression="LoanNum" />
                    <asp:BoundField DataField="CustName" HeaderText="Customer Name" SortExpression="CustName" />
                    <asp:BoundField DataField="LoanAmount" HeaderText="Loan Amount" SortExpression="LoanAmount" />
                    <asp:BoundField DataField="AnnualIntRate" HeaderText="Annual Interest Rate" SortExpression="AnnualIntRate" />
                    <asp:BoundField DataField="NumPayments" HeaderText="Number of Payments" SortExpression="NumPayments" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LoanDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CheapLoansConnectionString %>" SelectCommand="SELECT * FROM [Loans]"></asp:SqlDataSource>

            <asp:Label ID="Label1" runat="server" Text="" DataSourceID="LoanDataSource0"></asp:Label>
            
            <br />
            <asp:SqlDataSource ID="LoanDataSource0" runat="server" ConnectionString="<%$ ConnectionStrings:CheapLoansConnectionString %>" SelectCommand="SELECT sum(loanAmount) FROM [Loans]"></asp:SqlDataSource>
        
        <asp:Button ID="ButtonHome" runat="server" Text="Home" OnClick="ButtonHome_Click" />
      
    </form>
</body>
</html>
