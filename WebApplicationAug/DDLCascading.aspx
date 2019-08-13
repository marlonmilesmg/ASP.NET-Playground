<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DDLCascading.aspx.cs" Inherits="WebApplicationAug.DDLCascading" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:DropDownList ID="ddlContinents" runat="server" Height="18px" Width="230px" AutoPostBack="true" DataTextField="ContinentName" DataValueField="ContinentId" OnSelectedIndexChanged="ddlContinents_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <asp:DropDownList ID="ddlCountries" runat="server" Height="33px" Width="230px" AutoPostBack="true" DataTextField="CountryName" DataValueField="CountryId" OnSelectedIndexChanged="ddlCountries_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <asp:DropDownList ID="ddlCities" runat="server" Height="32px" Width="230px" DataTextField="CityName" DataValueField="CityId">
            </asp:DropDownList>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
