<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadioButtonList.aspx.cs" Inherits="WebApplicationAug.RadioButtonList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Text="Red" Value="1"></asp:ListItem>
                <asp:ListItem Text="Green" Value="2"></asp:ListItem>
                <asp:ListItem Text="Blue" Value="3"></asp:ListItem>
                <asp:ListItem Text="Brown" Value="4"></asp:ListItem>

            </asp:RadioButtonList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Show Selection" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Clear Selection" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
