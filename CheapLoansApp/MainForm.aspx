<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="CheapLoansApp.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cheap Loans</title>
</head>
<body>
    <form id="formSubmitLoanInfo" runat="server">
        <div>
            <asp:Label ID="LabelFName" runat="server" Text="First Name:"></asp:Label>
            <asp:TextBox ID="TextBoxFName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorFName" runat="server" ControlToValidate="TextBoxFName" ErrorMessage="First name is required" ForeColor="Maroon"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="LabelLName" runat="server" Text="Last Name:"></asp:Label>
            <asp:TextBox ID="TextBoxLName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLName" runat="server" ControlToValidate="TextBoxLName" ErrorMessage="Last name is required" ForeColor="Maroon"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="LabelLoan" runat="server" Text="Loan Amount:"></asp:Label>
            <asp:TextBox ID="TextBoxLoan" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorLoan" runat="server" ControlToValidate="TextBoxLoan" ErrorMessage="Loan amount is required" ForeColor="Maroon"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="LabelRate" runat="server" Text="Annual Interest Rate:"></asp:Label>
            <asp:TextBox ID="TextBoxRate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorRate" runat="server" ControlToValidate="TextBoxRate" ErrorMessage="Annual interest rate is required" ForeColor="Maroon"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="LabelNumPay" runat="server" Text="Number of Payments:"></asp:Label>
            <asp:TextBox ID="TextBoxNumPay" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNumPay" runat="server" ControlToValidate="TextBoxNumPay" ErrorMessage="Number of payments is required" ForeColor="Maroon"></asp:RequiredFieldValidator>
            <br /><br />
            <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
            <asp:Button ID="ButtonSave" runat="server" Text="Save" OnClick="ButtonSave_Click" />
            <asp:Button ID="ButtonDisplay" runat="server" Text="Display Loans" OnClick="ButtonDisplay_Click" />
            <asp:SqlDataSource ID="SqlDataSourceLoans" runat="server" ConnectionString="<%$ ConnectionStrings:CheapLoansConnectionString %>" SelectCommand="SELECT * FROM [Loans]"></asp:SqlDataSource>
            <br /><br />
            <asp:Label ID="LabelMonthly" runat="server" Text=""></asp:Label>

        </div>        
    </form>
</body>
</html>
