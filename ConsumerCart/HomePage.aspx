<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ConsumerCart.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style1 {
            position: page;
            left: 150px;
            margin-right: 250px;
        }

        .auto-style2 {
            width: 1011px;
        }
    </style>
</head>
<body style="background-color: #2d2c2d; overflow: hidden; color: white">
    <link href="bootstrap-3.3.7-dist/css/bootstrap.css" type="text/css" rel="stylesheet" />
    <link href="headers.css" type="text/css" rel="stylesheet" />
    <form id="form1" runat="server">
        <div>

            <table style="border-width: 0px; text-align: right">
                <tr>
                    <td class="td1" style="width: 600px;">
                        <div>
                            <asp:ImageButton ID="logo" runat="server" ImageUrl="~/Consumer Cart/logo_transparent.png" Width="200px" Height="200px" PostBackUrl="~/HomePage.aspx" CssClass="auto-style1" />
                        </div>
                    </td>
                    <td class="td1" style="width: 600px;">
                        <div>
                            <h1 class="heading">Consumer Cart<br />
                                <small style="color: grey">The consumer first shopping experience
                                </small>
                            </h1>
                        </div>
                    </td>
                    <td class="auto-style2" style="text-align: right">
                        <asp:Button CssClass="btntheme" ID="loginbtn" runat="server" Text="Login" OnClick="loginbtn_Click" ForeColor="Black" BackColor="SeaGreen" /><br />
                        <asp:Button CssClass="btntheme" ID="signupbtnn" runat="server" Text="Sign Up" OnClick="signupbtnn_Click" ForeColor="Black" BackColor="SeaGreen" /><br />
                        <asp:Button CssClass="btntheme" ID="sellersignup" runat="server" Text="Seller Login" OnClick="sellersignup_Click" ForeColor="Black" BackColor="SeaGreen" /><br />
                        <asp:Button CssClass="btntheme" ID="sellerlogin" runat="server" Text="Seller Sign Up" OnClick="sellerlogin_Click" ForeColor="Black" BackColor="SeaGreen" />
                    </td>
                </tr>
            </table>
        </div>
        <table>
            <tr>
                <td class="td1">
                    <div>
                        <asp:ImageButton ImageUrl="~/Consumer Cart/signup.png" runat="server" ImageAlign="TextTop" AlternateText="Sign Up now" Height="300px" Width="300px" OnClick="Unnamed_Click" />
                    </div>
                </td>
                <td colspan="2">
                    <div style="width: 1000px">
                        <h1 style="color: white; text-align: center">We sell Electronics at a price hard to beat</h1>
                        <asp:Image ImageUrl="~/Consumer Cart/BestPrice.png" runat="server" Height="200px" Width="200px" ImageAlign="Middle" Style="margin-left: 300px" />
                    </div>
                </td>
            </tr>
        </table>
        <table style="font-family: sans-serif;">
            <tr>
                <th>Difference between us and our competition
                </th>
                <th>Benefits to the customer
                </th>
            </tr>
            <tr>
                <td class="td1" style="width: 700px;">
                    <ul>
                        <li>Cheaper Products
                        </li>
                        <li>More effecient delivery
                        </li>
                        <li>More importance to the customer's priority
                        </li>
                        <li>Full transperancy
                        </li>
                        <li>Fair to the seller
                        </li>
                        <li>More power to the seller
                        </li>
                    </ul>
                </td>
                <td class="td1" style="width: 700px;">
                    <ul>
                        <li>Price beat Guarantee
                        </li>
                        <li>Fastest delivery possible*
                        </li>
                        <li>More reliable customer service
                        </li>
                    </ul>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>