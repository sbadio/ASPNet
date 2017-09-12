﻿<%@ Page Title="jQuery Demos" Language="VB" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="false" CodeFile="jQueryDemos.aspx.vb" Inherits="Demos_jQueryDemos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1 title="First Header">First Header</h1>
    <table id="DemoTable">
        <tr><td>Row 1 Cell 1</td><td>Row 1 Cell 2</td></tr>
        <tr><td>Row 2 Cell 1</td><td>Row 2 Cell 2</td></tr>
        <tr><td>Row 3 Cell 1</td><td>Row 3 Cell 2</td></tr>
        <tr><td>Row 4 Cell 1</td><td>Row 4 Cell 2</td></tr>
        <tr><td>Row 5 Cell 1</td><td>Row 5 Cell 2</td></tr>        
    </table>
    <h2>Second <span style="font-style: italic; font-weight: bold;">
        Header</span></h2>
    <input id="Button1" type="button" value="button" />
    <input id="Text1" type="text" />
    <input id="CheckBox1" type="checkbox" />
    <input id="CheckBox2" type="checkbox" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>This is to show you that I'm using a template page right hur!</p>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cpClientScript">
    <script>
        
        alert($('#DemoTable td:contains("Row 1 Cell 2") ').prev()[0].innerHTML);
    </script>
    
</asp:Content>

