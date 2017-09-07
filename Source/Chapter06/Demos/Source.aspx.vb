
Partial Class Demos_Source
    Inherits BasePage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        'Client side page redirect
        'Response.Redirect("Target?Test=SomeValue")

        'Server side page redirect
        Server.Transfer("Target.aspx?Test=SomeValue")

    End Sub
End Class
