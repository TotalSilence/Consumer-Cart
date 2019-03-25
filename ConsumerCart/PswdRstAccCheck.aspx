<%@ Page Title="" Language="C#" MasterPageFile="~/Navigator.Master" AutoEventWireup="true" CodeBehind="PswdRstAccCheck.aspx.cs" Inherits="ConsumerCart.CSS.PswdRstAccCheck" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <link href="CSS/headers.css" type="text/css" rel="stylesheet" />
    <div style="margin-left: 500px;">
        <table>
            <tr>
                <td>Your Email ID:</td>
                <td>
                    <asp:TextBox ID="emailbox" runat="server" TextMode="Email"></asp:TextBox></td>
                <asp:Label ID="sglbl" runat="server" Visible="false"></asp:Label>
            </tr>
        </table>
        <asp:Button ID="SendPassword" Text="Send Password" OnClick="SendPassword_Click" runat="server" CssClass="flatbtn" />
        <asp:Button ID="Button1" Text="Back To Login" OnClick="Button1_Click" runat="server" CssClass="flatbtn" />

    </div>
</asp:Content>