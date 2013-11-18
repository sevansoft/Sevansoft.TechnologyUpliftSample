#Region "Header Block"
Option Explicit On
Option Strict On
#End Region

Imports System

Imports NUnit.Framework

Imports Sevansoft.TechnologyUpliftSample

Namespace Sevansoft.TechnologyUpliftSample.Tests
    <TestFixture()> _
    Public Class PersonTests
        <Test()> _
        Public Sub ContructorTest()
            Dim person As Person = New Person()

            Assert.AreEqual(String.Empty, person.Firstname, "Firstname is invalid")
            Assert.AreEqual(String.Empty, person.Surname, "Firstname is invalid")

            person = New Person("Michael", "Mouse")

            Assert.AreEqual("Michael", person.Firstname, "Firstname is invalid")
            Assert.AreEqual("Mouse", person.Surname, "Firstname is invalid")

        End Sub
    End Class
End Namespace