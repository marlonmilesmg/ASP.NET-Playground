<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListControls.aspx.cs" Inherits="WebApplicationAug.ListControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server"></asp:RadioButtonList>
            <asp:ListBox ID="ListBox1" SelectionMode="Multiple" runat="server"></asp:ListBox>
            <asp:BulletedList ID="BulletedList1"  runat="server"></asp:BulletedList>   
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
