<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="InstallmentWeb._Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>::DHA-Shop::</title>
</head>
<body>
    <form id="form1" runat="server">
    <table border="1" cellpadding="5" cellspacing="5" align="center">
    <tr><td colspan="2"><img src="Items.jpg" /></td></tr>
    <tr>
    <td bgcolor="LightBlue">Product:</td>
    <td><asp:DropDownList ID="cmbItems" runat="server">
    <asp:ListItem>Bike</asp:ListItem>
    <asp:ListItem>Oven</asp:ListItem>    
    </asp:DropDownList></td>
    </tr>
    <tr>
    <td bgcolor="LightBlue">Actual-Price</td>
    <td><asp:TextBox ID="txtPrice" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td bgcolor="LightBlue">Advance:</td>
    <td><asp:TextBox ID="txtAdv" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td bgcolor="LightBlue">No.Months</td>
    <td><asp:TextBox ID="txtMonth" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td bgcolor="LightBlue">.</td>
    <td><asp:Button ID="btnCalc" Text="Calculate" runat="server" 
            onclick="btnCalc_Click" /></td>
    </tr>
    <tr>
    <td bgcolor="LightBlue">Qist:</td>
    <td><asp:TextBox ID="txtQist" runat="server"></asp:TextBox></td>
    </tr>

    <tr>
    <td bgcolor="LightBlue">.</td>
    <td><asp:Button ID="btnPlan" Text="Gen-Plan" runat="server" 
            onclick="btnPlan_Click" /></td>
    </tr>   

    </table>
    <hr />
    <center><asp:GridView ID="xGrid" runat="server"></asp:GridView></center>


    </form>
</body>
</html>
