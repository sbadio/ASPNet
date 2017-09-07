﻿
Partial Class Controls_Banner
    Inherits System.Web.UI.UserControl

    Public Property DisplayDirection As Direction

    Public Property NavigateUrl() As String
        Get
            Dim _navigateUrl As Object = ViewState("NavigateUrl")
            If _navigateUrl IsNot Nothing Then
                Return CType(_navigateUrl, String)
            Else
                Return "http://p2p.wrox.com" ' Return a default value
            End If
        End Get
        Set(value As String)
            ViewState("NavigateUrl") = value
        End Set
    End Property


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Select Case DisplayDirection
            Case Direction.Horizontal
                HorizontalPanel.Visible = True
                VerticalPanel.Visible = False
                HorizontalLink.HRef = NavigateUrl
            Case Direction.Vertical
                HorizontalPanel.Visible = False
                VerticalPanel.Visible = True
                VerticalLink.HRef = NavigateUrl
        End Select
    End Sub
End Class
