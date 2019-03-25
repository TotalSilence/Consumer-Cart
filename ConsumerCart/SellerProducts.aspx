<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SellerProducts.aspx.cs" Inherits="ConsumerCart.SellerProducts1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            left: 208px;
            top: 242px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="position: absolute; left: 500px">
            <table>
                <tr>
                    <td>Product Name
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
                    <td>Product Price
                    </td>
                    <td>
                        <asp:TextBox ID="pricetxt" runat="server" CssClass="txtbox"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="pricetxt" runat="server" ErrorMessage="This is a required field" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>Product Category
                    </td>
                    <td>
                        <asp:DropDownList ID="ctgddl" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="productadd" Text="Add Product" CausesValidation="true" OnClick="productadd_Click" runat="server" Style="color: black; background-color: orangered; box-shadow: none;" CssClass="auto-style1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        Product Image
                    </td>
                    <td>
                    <asp:FileUpload ID="imageuploader" runat="server" AllowMultiple="false" Visible="true"/></td>
                    
                </tr>
                <tr>
                    <td colspan="3">
                        <hr />
                    </td>
                </tr>
                    <asp:Label ID="lbl" Text="" runat="server"></asp:Label>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="message" runat="server" Text="" Visible="false"></asp:Label>
                        <asp:Label ID="lblMessage" runat="server" Visible="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="editpage" Text="Edit Product" PostBackUrl="~/EditSellerProducts.aspx" runat="server"></asp:LinkButton>
                        <asp:Button ID="logout" Text="Logout" PostBackUrl="~/HomePage.aspx" runat="server" OnClick="logout_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <hr />
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingConnectionString %>" SelectCommand="SELECT [name] FROM [categories]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>