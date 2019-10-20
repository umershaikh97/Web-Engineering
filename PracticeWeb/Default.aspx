<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PracticeWeb._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Practice Web</title>
</head>
<body>
    <form id="form1" runat="server">
    <table border=1 cellpadding="5" cellspacing="5" align="left">
    <tr>

    <td>Email:</td>
        <td><asp:TextBox ID="txtEmail" runat="server" Required></asp:TextBox></td>
    </tr>

    <tr>
    <td>Password:</td>
        <td><asp:TextBox ID="TxtPass" textMode="Password" runat="server" Required></asp:TextBox></td>
    </tr>

     <tr>
     <td><a href="./SignUp.aspx">Signup</a></td>
        <td><asp:Button ID="btnLogin" Text="Login" runat="server" onclick="btnLogin_Click"/></td>
    </tr>

    </table>
    </form>
</body>
</html>
