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
                    
                    <asp:BoundField DataField="LoanNum" HeaderText="LoanNum" InsertVisible="False" ReadOnly="True" SortExpression="LoanNum" />
                    <asp:BoundField DataField="CustName" HeaderText="CustName" SortExpression="CustName" />
                    <asp:BoundField DataField="LoanAmount" HeaderText="LoanAmount" SortExpression="LoanAmount" />
                    <asp:BoundField DataField="AnnualIntRate" HeaderText="AnnualIntRate" SortExpression="AnnualIntRate" />
                    <asp:BoundField DataField="NumPayments" HeaderText="NumPayments" SortExpression="NumPayments" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LoanDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CheapLoansConnectionString %>" SelectCommand="ProcGetAllLoans" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

            <asp:Label ID="Label1" runat="server" Text="" DataSourceID="LoanDataSource0"></asp:Label>
            
            <br />
            <asp:SqlDataSource ID="LoanDataSource0" runat="server" ConnectionString="<%$ ConnectionStrings:CheapLoansConnectionString %>" SelectCommand="SELECT sum(loanAmount) FROM [Loans]"></asp:SqlDataSource>
        </div>
        <asp:Button ID="ButtonHome" runat="server" Text="Home" OnClick="ButtonHome_Click" />
      
    </form>
</body>
</html>
