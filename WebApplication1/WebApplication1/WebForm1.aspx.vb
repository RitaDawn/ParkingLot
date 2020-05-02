Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim userData As Data.DataView = DSuserData.Select(DataSourceSelectArguments.Empty)
        Dim count As Integer = userData.Count
        Dim x As Integer = 0
        Dim userNameBit As Integer = 0
        Dim passwordBit As Integer = 0

        For x = 0 To count - 1
            Dim userName As String = userData.Item(x).Row(0).ToString
            Dim password As String = userData.Item(x).Row(1).ToString

            If userName = tbUserName.Text And password = tbPassword.Text Then
                userNameBit = 1

            End If
        Next

        If userNameBit = 1 Then
            lbLoginMessage.Text = ""
        Else
            lbLoginMessage.Text = "Login Details Is Incorrect"
            lbLoginMessage.ForeColor = Drawing.Color.Red
        End If

    End Sub

End Class