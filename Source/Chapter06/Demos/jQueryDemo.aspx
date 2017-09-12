<%@ Page Title="jQuery Demo" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="jQueryDemo.aspx.vb" Inherits="Demos_jQuery_Demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
    <input id="Button1" type="button" value="button" />
    <script>
        $(document).ready(function () {
            $('#MainContent').css('background-color', 'green')

            $('#Button1').click(function () {
                $('#MainContent').css('background-color', 'red')
                .animate({ width: '100px', height: '800px' })
            });
        });
    </script>
  
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>This is to show you that I'm using a template page right hur!</p>
</asp:Content>

