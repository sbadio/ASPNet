<%@ Control Language="VB" AutoEventWireup="false" CodeFile="ContactForm.ascx.vb" Inherits="Controls_ContactForm" %>

<style type="text/css">
    .auto-style1 {
        height: 30px;
    }
</style>

<script>
    function validatePhoneNumbers(source, args) {
        var phoneHome = document.getElementById('<%= PhoneHome.ClientID %>');
        var phoneBusiness = document.getElementById('<%= PhoneBusiness.ClientID %>');
        if (phoneHome.value != '' || phoneBusiness.value != '') {
            args.IsValid = true;
        }
        else {
            args.IsValid = false;
        }
    }
</script>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div id="TableWrapper">
            <table class="auto-style1" runat="server" id="FormTable">
                <tr>
                    <td colspan="3">
                        <h1>Use the form below to contact us.</h1>
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="Name" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a name" ControlToValidate="Name" Text="*" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>E-mail Address</td>
                    <td>
                        <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter an e-mail address1" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToValidate="EmailAddress"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter a valid e-mail address" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToValidate="EmailAddress" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Repeat e-mail address</td>
                    <td>
                        <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Confirm the e-mail address2" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToValidate="ConfirmEmailAddress"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The e-mail addresses don't match" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Home phone number</td>
                    <td>
                        <asp:TextBox ID="PhoneHome" runat="server" TextMode="Phone"></asp:TextBox></td>
                    <td>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your home or business phone number" Text="*" ClientValidationFunction="validatePhoneNumbers">*</asp:CustomValidator>
                    </td>

                </tr>
                <tr>
                    <td>Business phone number</td>
                    <td>
                        <asp:TextBox ID="PhoneBusiness" runat="server" TextMode="Phone"></asp:TextBox></td>
                    <td></td>
                </tr>
                <tr>
                    <td>Comments</td>
                    <td>
                        <asp:TextBox ID="Comments" runat="server" Height="139px" TextMode="MultiLine" Width="512px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter a comment" Text="*" Display="Dynamic" CssClass="ErrorMessage" ControlToValidate="Comments"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style1">
                        <asp:Button ID="SendButton" runat="server" Text="Send" /></td>
                    <td class="auto-style1"></td>

                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors:" ShowMessageBox="False" ShowSummary="True" />
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
        <asp:Label ID="Message" CssClass="Attention" runat="server" Text="Message Sent" Visible="false"></asp:Label>
        <p runat="server" id="MessageSentPara" visible="false">Thank you for your message. We'll get in touch with you if necessary.</p>
    </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div class="PleaseWait">
            Please Wait... 
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>
<script>
    $(function () {
        $('form').bind('submit', function () {
            if(Page_IsValid)
            {
                $('#TableWrapper').slideUp(3000);
            }
        });
    });
    function pageLoad() {
        $('.Attention').animate({ width: '600px' }, 3000).
        animate({ width: '100px' }, 3000).fadeOut('slow');
    }
</script>

