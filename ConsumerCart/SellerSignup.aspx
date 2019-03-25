<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SellerSignup.aspx.cs" Inherits="ConsumerCart.SellerProducts" %>

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
                    <td>Name
                    </td>
                    <td>
                        <asp:TextBox ID="nametxt" runat="server" CssClass="txtbox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="nametxt" runat="server" ErrorMessage="This is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>Email
                    </td>
                    <td>
                        <asp:TextBox ID="emailtxt" runat="server" CssClass="txtbox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ControlToValidate="emailtxt" runat="server" ErrorMessage="Enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>Phone Number
                    </td>
                    <td>
                        <asp:TextBox ID="phonetxt" runat="server" CssClass="txtbox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ControlToValidate="phonetxt" runat="server" ErrorMessage="Enter a valid Phone Number" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>Password
                    </td>
                    <td>
                        <asp:TextBox ID="pswdtxt" runat="server" CssClass="txtbox" TextMode="Password"></asp:TextBox>
                    </td>

                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="pswdtxt" runat="server" ErrorMessage="This is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="register" Text="Register" CausesValidation="true" OnClick="register_Click" runat="server" Style="position: absolute; left: 200px; color: black; background-color: orangered" />
                    </td>
                </tr>
                <tr>
                    <asp:Label ID="lbl" Text="" runat="server"></asp:Label>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>