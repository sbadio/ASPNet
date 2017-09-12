<%@ Page Title="Basic Selectors" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="BasicSelectors.aspx.vb" Inherits="Demos_BasicSelectors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>Basic Selectors</h1>
    <div class ="SampleClass">Iam a div.</div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>This is to show you that I'm using a template page right hur!</p>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="cpClientScript">
    <script>
        $(function()
        {
            $('*').css('color', 'Green');                                   //Universal
            $('#Sidebar').css('border-bottom', '2px solid red');            //ID
            $('h1').bind('click', function () { alert('Hello World') });    //Element
            $('.SampleClass').addClass('PleaseWait').hide(5000);            //Class
            $('footer, header').slideUp('slow').slideDown('slow');          //Grouped
            $('#Sidebar img').fadeTo(5000, 0.1);
        })
    </script>
</asp:Content>


