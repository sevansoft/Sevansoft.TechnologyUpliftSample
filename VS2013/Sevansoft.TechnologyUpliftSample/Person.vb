﻿#Region "Header Block"
Option Explicit On
Option Strict On
#End Region

Imports System
Imports System.Diagnostics

Namespace Sevansoft.TechnologyUpliftSample
    Public Class Person
        Public Sub New()
            Me.New(String.Empty, String.Empty)
        End Sub

        Public Sub New(ByVal firstname As String, _
                       ByVal surname As String)
            _firstname = firstname
            _surname = surname
        End Sub

        Public ReadOnly Property Firstname() As String
            <DebuggerStepThrough()> _
            Get
                Return _firstname
            End Get
        End Property

        Public ReadOnly Property Surname() As String
            <DebuggerStepThrough()> _
            Get
                Return _surname
            End Get
        End Property

        Private _firstname As String
        Private _surname As String
    End Class
End Namespace