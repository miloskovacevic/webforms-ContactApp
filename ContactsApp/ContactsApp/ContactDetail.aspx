<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactDetail.aspx.cs" Inherits="ContactsApp.ContactDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <span class="error"><asp:Literal ID="error" runat="server" /></span>
        <p><asp:Literal ID="Name" runat="server" /> (<asp:Literal ID="Email" runat="server" />) <asp:Literal ID="DateSent" runat="server" /> </p>
        <p><asp:Literal ID="Subject" runat="server" /></p>
        <p><asp:Literal ID="Message" runat="server" /></p>
    </form>
</body>
</html>
