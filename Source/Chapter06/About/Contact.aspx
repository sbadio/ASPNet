<%@ Page Title="Contact Us" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="About_Contact" %>

<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="Wrox" TagName="ContactForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">;
    <Wrox:ContactForm runat="server" ID="ContactForm" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>This is to show you that I'm using a template page right hur!</p>
</asp:Content>

