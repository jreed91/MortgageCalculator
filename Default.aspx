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
        <br /><br />
        Annual Interest %:<asp:TextBox ID="tbAnnualInterest" runat="server"></asp:TextBox>
        <br /><br />

        Loan Term:(Yrs):<asp:TextBox ID="tbLoanTerm" runat="server"></asp:TextBox>
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        <br /><br />

        Monthly Payment: <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>

        <br /><br />
        <asp:GridView ID="loanGridView" runat="server"></asp:GridView>
    </div>
    </form>
</body>
</html>
