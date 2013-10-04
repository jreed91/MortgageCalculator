<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Jacob's Mortgage Calculator

        <br /><br />
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvLoanAmt" runat="server" ErrorMessage="** Please Enter A Loan Amount" ControlToValidate="tbLoanAmt" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /><br />
        Annual Interest %:<asp:TextBox ID="tbAnnualInterest" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvAnnualInterest" runat="server" ErrorMessage="** Please Enter An Interest Rate" ControlToValidate="tbAnnualInterest" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /><br />

        Loan Term:(Yrs):<asp:TextBox ID="tbLoanTerm" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvLoanTerm" runat="server" ErrorMessage="** Please Enter A Loan Term" ControlToValidate="tbLoanTerm" ForeColor="Red"></asp:RequiredFieldValidator>
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        <br /><br />

        <% If Not IsPostBack Then%>
            <p> Welcome to my mortgage calculator. Please complete the fields above to have your monthly payment and loan calculated for you. </p>
        <% Else%>

        Monthly Payment: <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>

        <% End If%>
        <br /><br />
        <asp:GridView ID="loanGridView" runat="server"></asp:GridView>
    </div>
    </form>
</body>
</html>
