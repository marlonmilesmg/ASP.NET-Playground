<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBoxAndListBoxRealTime.aspx.cs" Inherits="WebApplicationAug.CheckBoxAndListBoxRealTime" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                RepeatDirection="Horizontal" AutoPostBack="True"
                OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                <asp:ListItem Text="Diploma" Value="1"></asp:ListItem>
                <asp:ListItem Text="Graduate" Value="2"></asp:ListItem>
                <asp:ListItem Text="Post Graduate" Value="3"></asp:ListItem>
                <asp:ListItem Text="Doctrate" Value="4"></asp:ListItem>
                                
            </asp:CheckBoxList>
            <br />
            <asp:ListBox ID="ListBox1" runat="server" Height="98px" Width="191px"></asp:ListBox>
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="true"></asp:Label>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
