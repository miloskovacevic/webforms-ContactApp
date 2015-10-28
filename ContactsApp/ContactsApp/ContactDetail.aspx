<%@ Page Language="C#" Title="Detail Page" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactDetail.aspx.cs" Inherits="ContactsApp.ContactDetail" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h1>Contact Details</h1>
    <span class="error"><asp:Literal ID="error" runat="server" /></span>
    <p><asp:Literal ID="Name" runat="server" /> (<asp:Literal ID="Email" runat="server" />) <asp:Literal ID="DateSent" runat="server" /> </p>
    <p><asp:Literal ID="Subject" runat="server" /></p>
    <p><asp:Literal ID="Message" runat="server" /></p>
</asp:Content>