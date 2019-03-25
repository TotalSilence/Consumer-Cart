<%@ Page Title="" Language="C#" MasterPageFile="~/Navigator.Master" AutoEventWireup="true" CodeBehind="YourOrders.aspx.cs" Inherits="ConsumerCart.YourOrders" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <link href="CSS/headers.css" type="text/css" rel="stylesheet" />
    <div>

        <asp:Repeater ID="ordersrepeater" runat="server">
            <ItemTemplate>
                <div class="ordersdiv">
                    <table>
                        <tr>
                            <td>
                                <tr>
                                    <td>Product Name:
                                    </td>
                                    <td>
                                        <asp:Label ID="pnamelbl" runat="server" Text='<%#Eval("pname") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Price:
                                    </td>
                                    <td>
                                        <asp:Label ID="pprice" runat="server" Text='<%#Eval("pprice") %>'></asp:Label>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Quantity:
                                    </td>
                                    <td>
                                        <asp:Label ID="quantity" runat="server" Text='<%#Eval("quantity") %>'></asp:Label>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Delivery Date:
                                    </td>
                                    <td>
                                        <asp:Label ID="ddate" runat="server" Text='<%#Eval("deliverydate") %>'></asp:Label>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Total:
                                    </td>
                                    <td>

                                        <asp:Label ID="total" runat="server" Text='<%#Eval("total") %>'></asp:Label>
                                    </td>
                                </tr>
                            </td>
                            <td>
                                <asp:Image ImageUrl='<%#Eval("pimage") %>' Height="75px" Width="75px" runat="server"/>
                            </td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>