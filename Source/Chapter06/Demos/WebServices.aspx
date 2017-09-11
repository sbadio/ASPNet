﻿<%@ Page Title="Web Services Demo" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="WebServices.aspx.vb" Inherits="Demos_WebServices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/WebServices/NameService.svc" />
        </Services>
    </asp:ScriptManagerProxy>
    <input id="YourName" type="text" />
    <input id="SayHello" type="button" value="Say Hello" onclick="helloWorld();"/>
    <script>
        function helloWorld()
        {
            var yourName = document.getElementById('YourName').value;
            NameService.HelloWorld(yourName, helloWorldCallback);
        }
        function helloWorldCallback(result)
        {
            alert(result);
        }
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

