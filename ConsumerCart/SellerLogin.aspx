<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SellerLogin.aspx.cs" Inherits="ConsumerCart.SellerLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link href="CSS/headers.css" type="text/css" rel="stylesheet" />
    <form id="form1" runat="server">
        <div style="position: absolute; left: 500px">
            <table>
                <tr>
                    <td>Seller EmailID
                    </td>
                    <td>
                        <asp:TextBox ID="emailbox" runat="server" TextMode="Email" AutoPostBack="true" CssClass="txtbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Seller Password
                    </td>
                    <td>
                        <asp:TextBox ID="passwordbox" runat="server" TextMode="Password" AutoPostBack="true" CssClass="txtbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="submit" Text="Login" runat="server" ForeColor="Black" BackColor="#ff6600" Style="box-shadow: none;" OnClick="submit_Click" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lbl" runat="server" Text="" Visible="false"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>