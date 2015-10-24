<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ContactsApp.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="lblName" runat="server" AssociatedControlID="txtName" Text="Name:" />
            <asp:TextBox ID="txtName" runat="server" />
        </p>
        <p>
            <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Email:" />
            <asp:TextBox ID="txtEmail" runat="server" />
        </p>
        <p>
            <asp:Label ID="lblSubject" runat="server" AssociatedControlID="txtSubject" Text="Subject:" />
            <asp:TextBox ID="txtSubject" runat="server" />
        </p>
        <p>
            <asp:Label ID="lblMessage" runat="server" AssociatedControlID="txtMessage" Text="Message:" /><br/>
            <asp:TextBox ID="txtMessage" TextMode="MultiLine" Columns="40" Rows="10" runat="server" />
        </p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Send" />

        </p>
    </form>
</body>
</html>
