<%@ Page Language="C#" Title="Contact Log Page" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="ContactsApp.Log" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <style>
        .odd {
            background-color: white;
        }
        .even {
            background-color: #4cff00;
        
        }
    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h1>Contact Log</h1>
    <asp:Repeater ID="MessageRepeater" runat="server" ItemType="ContactsApp.Models.ContactLog">
        <HeaderTemplate>
            <table border="0" cellspacing="2" cellpadding="2">
                    
                <thead>
                        <th>Name</th                      
                        <th>Subject</th>
                        <th>Date Sent</th>
                </thead>
                <tbody>
        </HeaderTemplate>
        <ItemTemplate>
            <tr class="odd">
                <td><a href="<%#: GetRouteUrl("ContactDetail", new { contactLogId = Item.ID })   %>">
                        <%#: Item.Name %> 
                    </a></td>
                <td><%#: Item.Subject %></td>
                <td><%#: Item.DateSent %></td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr class="even">
                <td><a href="<%#: GetRouteUrl("ContactDetail", new { contactLogId = Item.ID })   %>">
                    <%#: Item.Name %> 
                </a></td>
                <td><%#: Item.Subject %></td>
                <td><%#: Item.DateSent %></td>
            </tr>    
        </AlternatingItemTemplate>
        <FooterTemplate>
                </tbody>
            </table>
        </FooterTemplate>
    </asp:Repeater>

</asp:Content>