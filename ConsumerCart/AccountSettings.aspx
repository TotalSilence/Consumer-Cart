<%@ Page Title="" Language="C#" MasterPageFile="~/Navigator.Master" AutoEventWireup="true" CodeBehind="AccountSettings.aspx.cs" Inherits="ConsumerCart.AccountSettings" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div style="position: absolute; left: 700px; top: 300px;">
        <table>
            <tr>
                <td>New Name
                </td>
                <td>
                    <asp:TextBox ID="nametxt" runat="server" Style="border-radius: 10px 10px; box-shadow: none; border: solid;">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>New Address
                </td>
                <td>
                    <asp:TextBox ID="addrtxt" runat="server" Style="border-radius: 10px 10px; box-shadow: none; border: solid;"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>New Password
                </td>
                <td>
                    <asp:TextBox ID="pswdtxt" runat="server" TextMode="Password" Style="border-radius: 10px 10px; box-shadow: none; border: solid;"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>

            <tr>
                <td>New Phone number
                </td>
                <td>
                    <asp:TextBox ID="phonetxt" runat="server" Style="border-radius: 10px 10px; box-shadow: none; border: solid;"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="changebtn" Text="Change" OnClick="changebtn_Click" runat="server" Style="margin-left: 100px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>