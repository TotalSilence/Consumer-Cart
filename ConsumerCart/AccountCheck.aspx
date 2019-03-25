<%@ Page Title="" Language="C#" MasterPageFile="~/Navigator.Master" AutoEventWireup="true" CodeBehind="AccountCheck.aspx.cs" Inherits="ConsumerCart.AccountCheck" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <div>
        <table>
            <tr>
                <td>Email
                </td>
                <td>
                    <asp:TextBox ID="emaitxt" runat="server" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password
                </td>
                <td>
                    <asp:TextBox ID="pswdtxt" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="margin-left: 50px;">
                    <asp:Button ID="check" Text="Confirm" runat="server" OnClick="check_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>