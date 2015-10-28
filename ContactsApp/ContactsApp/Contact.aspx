<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ContactsApp.Contact" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h1>Contact Us</h1>
        <asp:Panel ID="pnlFormFields" runat="server" Visible="true">
            <p>
                <asp:Label ID="lblName" runat="server" AssociatedControlID="txtName" Text="Name:" />
                <asp:TextBox ID="txtName" runat="server" />
                <asp:RequiredFieldValidator ID="valName" runat="server" ControlToValidate="txtName" Text="Please enter your name" />
            </p>
            <p>
                <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtEmail" Text="Email:" />
                <asp:TextBox ID="txtEmail" runat="server" />
                <asp:RequiredFieldValidator ID="valEmail" runat="server" ControlToValidate="txtEmail" Text="Please enter your email" />
                <asp:RegularExpressionValidator ID="valEmailRegex" runat="server"  ControlToValidate="txtEmail" 
                    Text="Please enter valid email address" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" />
        
            </p>
            <p>
                <asp:Label ID="lblSubject" runat="server" AssociatedControlID="txtSubject" Text="Subject:" />
                <asp:TextBox ID="txtSubject" runat="server" />
                <asp:RequiredFieldValidator ID="valSubject" runat="server" ControlToValidate="txtSubject" Text="Please enter your subject" />

            </p>
            <p>
                <asp:Label ID="lblMessage" runat="server" AssociatedControlID="txtMessage" Text="Message:" /><br/>
                <asp:TextBox ID="txtMessage" TextMode="MultiLine" Columns="40" Rows="10" runat="server" />
                <asp:RequiredFieldValidator ID="valMessage" runat="server" ControlToValidate="txtMessage" Text="Please enter your message" />

            </p>
            <p>
                <asp:Button ID="btnSubmit" runat="server" Text="Send" OnClick="btnSubmit_Click" />

            </p>
        </asp:Panel>
        <asp:Panel ID="pnlSuccessMessage"  runat="server" Visible="false">
            <p>Thank you for sending your message <a href="contact.aspx">Go back to form</a> </p>
        </asp:Panel>
    </asp:Content>