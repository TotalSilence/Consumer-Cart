<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SellerEmailCheck.aspx.cs" Inherits="ConsumerCart.SellerEmailCheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <div style="margin-left:500px;margin-top:200px">
        <div>
            Email:
            <asp:TextBox ID="emailbox" TextMode="Email" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="check" Text="Confirm" runat="server" OnClick="check_Click" />

        </div>
            <div>
                <asp:Label ID="msg" runat="server" Visible="false"></asp:Label>
            </div>
            </div>
    </form>
</body>
</html>
