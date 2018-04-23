Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		If (Not IsPostBack) Then
			ASPxFilterControl1.FilterExpression = ASPxComboBox1.Text
		End If
	End Sub


	Protected Sub ASPxComboBox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs)
	   ASPxFilterControl1.FilterExpression= ASPxComboBox1.Text
	End Sub
End Class