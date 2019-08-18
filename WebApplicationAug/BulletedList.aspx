<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BulletedList.aspx.cs" Inherits="WebApplicationAug.BulletedList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

   
    <form id="form1" runat="server">
        <div>
            <asp:BulletedList ID="BulletedList1" runat="server" DisplayMode="HyperLink" Target="_blank">
            <asp:ListItem Text="Google" Value="http://google.com"></asp:ListItem>
            <asp:ListItem Text="Youtube" Value="http://youtube.com"></asp:ListItem>
            <asp:ListItem Text="Blogger" Value="http://blogger.com"></asp:ListItem>
            <asp:ListItem Text="Gmail" Value="http://gmail.com"></asp:ListItem>                        
            </asp:BulletedList>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
