<%@ Page Title="" Language="C#" MasterPageFile="~/Navigator.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ConsumerCart.Cart" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div>
        <link href="CSS/headers.css" type="text/css" rel="stylesheet" />
        <link href="bootstrap-3.3.7-dist/css/bootstrap.css" type="text/css" rel="stylesheet" />
        <asp:Label ID="intro" runat="server" Text="Your Cart Contains" Style="margin-left: 600px;"> </asp:Label>
        <asp:Repeater ID="cartrepeater" runat="server">
            <ItemTemplate>
                <div class="cartdiv">
                    <table >
                        <tr>
                            <td>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="namelbl" Text='<%#Eval("pname") %>' runat="server" CssClass="flattxtbox" AutoPostBack="true" ></asp:TextBox>
                                         
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="pricelbl" Text='<%#Eval("pprice") %>' runat="server" CssClass="flattxtbox" AutoPostBack="true">
                                        </asp:TextBox>
                                    </td>
                                </tr>

                                <td>
                                    <asp:TextBox ID="quantity" runat="server" Text='<%#Eval("quantity") %>' CssClass="flattxtbox" AutoPostBack="true"></asp:TextBox>
                                </td>
                        </tr>

                        <tr>
                            <td>
                                <asp:LinkButton ID="orderbtn" Text="Order" runat="server" CommandArgument='<%#Eval("pid")+";"+Eval("uid")+";"+Eval("sid")+";"+Eval("pname") %>' OnClick="orderbtn_Click">
                                </asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:LinkButton ID="removebtn" Text="Remove" runat="server" CommandArgument='<%#Eval("pid")+";"+Eval("uid")+";"+Eval("sid")+";"+Eval("pname") %>' OnClick="removebtn_Click">
                                </asp:LinkButton></td>
                        </tr>
                        </td>
                        <td>
                            <asp:Image ImageUrl='<%#Eval("pimage") %>' AlternateText='<%#Eval("pname") %>' Height="75px" Width="75px" runat="server" Style="margin-left: 350px;" />
                        </td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <div style="margin-left: 500px; width: 700px;">
        <table>
            <tr>
                <td>
                    <asp:DropDownList ID="paymentddl" runat="server">
                        <asp:ListItem>
                            Credit Cart
                        </asp:ListItem>
                        <asp:ListItem>
                            Debit Card
                        </asp:ListItem>
                        <asp:ListItem>
                            PayTM
                        </asp:ListItem>
                        <asp:ListItem>
                            Net Banking
                        </asp:ListItem>
                        <asp:ListItem>
                            Cash On Delivery
                        </asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>