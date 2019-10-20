<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="PracticeWeb.SignUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
</head>
<body>
    <h1 align="center">Welcome to Signup Page</h1>
    <h5 align="center"><a href="./Default.aspx">Login</a></h5>
    <form id="form1" runat="server">
    <table border=1 cellpadding="5" cellspacing="5" align="center">
    <tr>

    <td>Email:</td>
        <td><asp:TextBox ID="txtEmailSignUp" runat="server" Required></asp:TextBox></td>
    </tr>

    <tr>
    <td>Full Name:</td>
        <td><asp:TextBox ID="txtNameSignUp" runat="server" Required></asp:TextBox></td>
    </tr>


    <tr>
    <td>Password:</td>
        <td><asp:TextBox ID="TxtPassSignUp" textMode="Password" runat="server" Required></asp:TextBox></td>
    </tr>

         <tr>
     <td>Login:</td>
        <td><asp:Button ID="btnSave" Text="Save" runat="server" onclick="btnSave_Click"/></td>
    </tr>

    </table>
    <hr />
    <center>
    <asp:GridView ID="xGrid" runat="server" BackColor="White" BorderColor="#336666" 
            BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
            EnableModelValidation="True" GridLines="Horizontal">
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <hr />
    Enter ID: <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
    <asp:Button ID="btnDelete" Text="Delete" runat="server" onclick="btnDelete_Click"/> 
    </center>
    </form>
        
</body>
</html>
