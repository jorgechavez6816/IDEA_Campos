Sub Main
	Call RemoveField()	'Ejemplo-Detalle de ventas.IMD
End Sub


' Eliminar campo
Function RemoveField
	Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
	Set task = db.TableManagement
	task.RemoveField "NUM1_"
	task.PerformTask
	Set task = Nothing
	Set db = Nothing
End Function