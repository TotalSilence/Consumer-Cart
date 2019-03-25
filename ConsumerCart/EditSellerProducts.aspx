<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditSellerProducts.aspx.cs" Inherits="ConsumerCart.EditSellerProducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:500px;margin-top:200px">
            <table>
                <tr>
                    <td>Product ID
                    </td>
                    <td>
                        <asp:TextBox ID="idtxt" AutoPostBack="true" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Product Name
                    </td>
                    <td>
                        <asp:TextBox ID="nametxt" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Product Price
                    </td>
                    <td>
                        <asp:TextBox ID="pricetxt" runat="server"></asp:TextBox>
                    </td>

                </tr>
                <tr>
                    <td>
                        Product Category
                    </td>
                    <td>
                        <asp:DropDownList ID="ctgddl" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Product Image
                    </td>
                    <td>
                        <asp:FileUpload ID="imageuploader" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="updtbtn" OnClick="updtbtn_Click" Text="Update" runat="server" />
                        <asp:Button ID="deletebtn" OnClick="deletebtn_Click" Text="Delete" runat="server" />
                    </td>
                </tr>
            </table>
            
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:shoppingConnectionString %>" SelectCommand="SELECT [name] FROM [categories]"></asp:SqlDataSource>
    </form>
</body>
</html>
     
