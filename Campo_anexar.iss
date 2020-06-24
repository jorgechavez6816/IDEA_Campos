Sub Main
	IgnoreWarning(True)
	Call AppendField()	'Ejemplo-Detalle de ventas.IMD
	Call AppendField1()	'Ejemplo-Detalle de ventas.IMD
	Call AppendField2()	'Ejemplo-Detalle de ventas.IMD
	Call AppendField3()	'Ejemplo-Detalle de ventas.IMD
	Call AppendField4()	'Ejemplo-Detalle de ventas.IMD
	Client.RefreshFileExplorer
End Sub


' Anexar campo
Function AppendField
	Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
	Set task = db.TableManagement
	Set field = db.TableDef.NewField
	field.Name = "NUM1"
	field.Description = ""
	field.Type = WI_VIRT_CHAR
	field.Equation = " NUM_FACT "
	field.Length = 8
	task.AppendField field
	task.PerformTask
	Set task = Nothing
	Set db = Nothing
	Set field = Nothing
End Function

' Anexar campo
Function AppendField1
	Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
	Set task = db.TableManagement
	Set field = db.TableDef.NewField
	field.Name = "NUM2"
	field.Description = ""
	field.Type = WI_CHAR_FIELD
	field.Equation = " NUM_FACT "
	field.Length = 12
	task.AppendField field
	task.PerformTask
	Set task = Nothing
	Set db = Nothing
	Set field = Nothing
End Function

' Anexar campo
Function AppendField2
	Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
	Set task = db.TableManagement
	Set field = db.TableDef.NewField
	field.Name = "NUM3"
	field.Description = ""
	field.Type = WI_EDIT_CHAR
	field.Equation = " NUM_FACT "
	field.Length = 12
	task.AppendField field
	task.PerformTask
	Set task = Nothing
	Set db = Nothing
	Set field = Nothing
End Function

' Anexar campo
Function AppendField3
	Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
	Set task = db.TableManagement
	Set field = db.TableDef.NewField
	field.Name = "NUM4"
	field.Description = ""
	field.Type = WI_BOOL
	field.Equation = "1"
	task.AppendField field
	task.PerformTask
	Set task = Nothing
	Set db = Nothing
	Set field = Nothing
End Function

' Anexar campo
Function AppendField4
	Set db = Client.OpenDatabase("Ejemplo-Detalle de ventas.IMD")
	Set task = db.TableManagement
	Set field = db.TableDef.NewField
	field.Name = "NUM5"
	field.Description = ""
	field.Type = WI_MULTISTATE
	field.Equation = "1"
	task.AppendField field
	task.PerformTask
	Set task = Nothing
	Set db = Nothing
	Set field = Nothing
End Function