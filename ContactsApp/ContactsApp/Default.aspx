<%@ Page Language="C#" Title="Default Page" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ContactsApp.Default" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h1>Home</h1>
    <a href="<%: GetRouteUrl("ContactForm", null) %>">Contact Us</a>
</asp:Content>
