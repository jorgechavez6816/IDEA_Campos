Sub Main
	Call ModifyField()	'Ejemplo-Detalle de ventas.IMD
End Sub


' Modificar campo
Function ModifyField
	Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
	Set task = db.TableManagement
	Set field = db.TableDef.NewField
	field.Name = "NUM1_"
	field.Description = ""
	field.Type = WI_VIRT_CHAR
	field.Equation = " NUM_FACT  +  ""-""  + COD_PROD "
	field.Length = 12
	task.ReplaceField "NUM1", field
	task.PerformTask
	Set task = Nothing
	Set db = Nothing
	Set field = Nothing
End Function