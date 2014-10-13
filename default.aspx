<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>

        <span class="header">Mike&#39;s Massively Awesome Loan Calculator</span><br /><br />

        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="rfv_loan">Please enter a loan amount.</asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="rfv_AnnualInterest">Please enter a annual interest rate.</asp:RequiredFieldValidator>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="rfv_LoanTerm" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="RequiredFieldValidator">Please enter a loan length.</asp:RequiredFieldValidator>
        
        <br /><br />

        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Text="Clear" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        <br />
          
        <% If Not IsPostBack Then %>
        <p> Welcome to my mortgage calculator. Please complete the field above to have your monthly payment and loan repayment schedule calculated for you.</p>
        <% Else%>      
        Monthly Payment: &nbsp; <span class="header"><asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></span>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" />
        
        <%End If%>
           
        </div>
    </form>
</body>
</html>
