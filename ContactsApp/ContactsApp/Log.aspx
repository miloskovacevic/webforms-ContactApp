<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log.aspx.cs" Inherits="ContactsApp.Log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .odd {
            background-color: white;
        }
        .even {
            background-color: #4cff00;
        
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
