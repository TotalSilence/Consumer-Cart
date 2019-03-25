<%@ Page Title="" Language="C#" MasterPageFile="~/Navigator.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="ConsumerCart.MainPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">

    <link href="CSS/headers.css" type="text/css" rel="stylesheet" />
    
    <div style="margin-left:600px;">
        <asp:DropDownList ID="ctglist" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" Width="500px" AutoPostBack="true"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnection %>" SelectCommand="SELECT [name] FROM [categories]"></asp:SqlDataSource>
        </div>
        <div>
        <asp:Repeater ID="productrepeater" runat="server">
            <ItemTemplate>

                <div class="productdiv">

                    <table>
                        <tr>
                            <td class="td1 col-md-10">
                                <h3 class="products"><b>
                                    
                                    <%#DataBinder.Eval(Container,"DataItem.pname") %>
                                                     </b></h3>
                            </td>
                        </tr>
                        <tr>
                            <td class="td1 col-md-10">
                                <hr />
                            </td>
                        </tr>
                        <tr>

                            <td class="td1 col-md-5">
                                <asp:Label ID="lbl" Text="Price: Rs." runat="server"></asp:Label>
                                <asp:Label ID="pricelbl" Text='<%#Eval("pprice") %>' runat="server" CssClass="productlabel"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="td1 col-md-10">
                                <hr />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="image" ImageUrl='<%#Eval("pimage") %>' runat="server" CssClass="productimage" Height="100px" Width="100px" />
                            </td>
                        </tr>

                        <tr>
                            <asp:LinkButton ID="addtocart" Text="Add To Cart" CommandArgument='<%#Eval("pid")+";"+ Eval("sid") %>' runat="server" OnClick="addtocart_Click"></asp:LinkButton>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:DropDownList ID="quantityddl" AutoPostBack="true" runat="server" Width="500px" style="margin-left:600px;">
        </asp:DropDownList>
    </div>
</asp:Content>