Public Class userRegistration
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'here we first validate the data'
        Dim userData As Data.DataView = DSuserData.Select(DataSourceSelectArguments.Empty)
        Dim count As Integer = userData.Count
        Dim x As Integer = 0
        Dim userNameBit As Integer = 0
        Dim emailBit As Integer = 0
        Dim phoneNoBit As Integer = 0


        For x = 0 To count - 1
            Dim userName As String = userData.Item(x).Row(0).ToString
            Dim emailAdd As String = userData.Item(x).Row(1).ToString
            Dim phoneNo As String = userData.Item(x).Row(2).ToString

            If userName = tbUserName.Text Then
                userNameBit = 1
            ElseIf emailAdd = tbEmail.Text Then
                emailBit = 1
            ElseIf phoneNo = tbPhoneNo.Text Then
                phoneNoBit = 1
            End If
        Next
        If userNameBit = 1 Then
            lblError.Text = " User name already exist..! "
            lblError.ForeColor = Drawing.Color.Red
        ElseIf emailBit = 1 Then
            lblError.Text = " Email already exist..! "
            lblError.ForeColor = Drawing.Color.Red
        Else
            lblError.Text = ""
            insertData()
        End If

    End Sub
    Protected Sub insertData()
        Dim constr As String = ConfigurationManager.ConnectionStrings("OnlineParkingConnectionString").ConnectionString
        Dim conn As Data.SqlClient.SqlConnection = New Data.SqlClient.SqlConnection(constr)

        Dim sqlStr As String = "INSERT INTO [registration] ([username], [password], [email], [phoneNo]) VALUES (@username, @password, @email, @phoneNo)"

        Dim cmd As Data.SqlClient.SqlCommand = New Data.SqlClient.SqlCommand(sqlStr, conn)


        cmd.Parameters.AddWithValue("@username", tbUserName.Text)
        cmd.Parameters.AddWithValue("@password", tbPassword.Text)
        cmd.Parameters.AddWithValue("@email", tbEmail.Text)
        cmd.Parameters.AddWithValue("@phoneNo", tbPhoneNo.Text)

        Try
            conn.Open()
            cmd.ExecuteNonQuery()
            Response.Redirect("~/registeredUser/Default.aspx")
        Catch ex As Exception
        Finally
            conn.Close()
        End Try
    End Sub
End Class