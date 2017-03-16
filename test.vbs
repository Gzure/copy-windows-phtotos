FolderPath = "f:\photoes"
Set objShell = CreateObject("Shell.Application")
Set objFolder = objShell.Namespace(FolderPath)
Set oFSO = CreateObject("Scripting.FileSystemObject")
Set oFolder = oFSO.GetFolder(FolderPath)
For Each x In oFolder.Files
FileName = x.Name
set objFolderItem = objFolder.ParseName(FileName)
Width = objFolder.GetDetailsOf(objFolderItem, 169)
Height = objFolder.GetDetailsOf(objFolderItem, 171)
Width = Right(Left(Width,5),4)
Height = Right(Left(Height,5),4)
if Width<>"1920" or Height<>"1080" Then 
Set a = CreateObject("Scripting.FileSystemObject")
a.DeleteFile FolderPath+"\"+FileName
End if
Next






