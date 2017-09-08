Imports System.Net.Mail
Partial Class Demos_Email
    Inherits BasePage
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim myMessage As MailMessage = New MailMessage()
        myMessage.Subject = "Test Message"
        myMessage.Body = "Hello World, from Planet Wrox"
        myMessage.From = New MailAddress("sergebadio@hotmail.com", "Serge Junior Badio")
        myMessage.To.Add(New MailAddress("sergebadio@hotmail.com", "Serge Junior Badio"))

        Dim mySmtpClient As SmtpClient = New SmtpClient()
        mySmtpClient.Send(myMessage)
    End Sub
End Class
