<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="WebApplicationAug.FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;
            <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload File" />
            <br />
            <asp:Label ID="lblMessage" runat="server" Font-Bold="true"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
