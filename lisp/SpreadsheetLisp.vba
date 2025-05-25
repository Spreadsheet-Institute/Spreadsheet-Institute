' SpreadsheetLisp.vba imports SL definitions into the Name Manager

' To run this macro:
' 1. Open any macro-enabled workbook (.xlsm) in Microsoft Excel
' 2. Open the VBA Editor (Alt + F11 on PC / Opt + F11 on Mac)
' 3. From the top menu, select Insert > Module
' 4. Copy this file into the new module window
' 5. Save the macro (Ctrl+S on PC / Command+S on Mac)
' 6. In the workbook, click Developer > Macros > SpreadsheetLisp > Run
' 7. Select the downloaded Spreadsheet Lisp source file

Sub SpreadsheetLisp()

    ' Open filepicker to allow selection of Spreadsheet Lisp source file
    Dim filepath As String
    Set filepicker = Application.FileDialog(msoFileDialogFilePicker)
    With filepicker
        .AllowMultiSelect = False
        .Title = "Select a Spreadsheet Lisp file"
        .Filters.Clear
        .Filters.Add "Spreadsheet Lisp", "*.sl"
        
        If .Show = True Then
            filepath = Dir(.SelectedItems(1))
        End If
    End With
    
    ' Open Spreadsheet Lisp source file for parsing
    Dim f, fso, firstcomma
    Const ForReading = 1
    Const TristateUseDefault = -2
    Set fso = CreateObject("Scripting.FilesystemObject")
    Set f = fso.OpenTextFile(filepath, ForReading, False, TristateUseDefault)
    
    ' Parse lines into Name Manager
    Dim linetext, definiendum, definiens As String
    Do While Not f.AtEndOfStream
        linetext = f.ReadLine
        If Len(Trim(linetext)) > 0 Then
            ' Position of first comma
            firstcomma = InStr(1, linetext, ",", vbBinaryCompare)
            
            ' Everything between DEFINE( and first comma
            definiendum = Split(Left(linetext, firstcomma - 1), "(")(1)
            ' MsgBox ("Definiendum: " & definiendum)
            
            ' Everything after first comma, without final closing parenthesis
            definiens = "=" & Mid(linetext, firstcomma + 1, Len(linetext) - firstcomma - 1)
            ' MsgBox ("Definiens: " & definiens)
            
            ' Add definition to Name Manager
            ActiveWorkbook.Names.Add Name:=definiendum, RefersTo:=definiens
        End If
    Loop
    
    ' Close Spreadsheet Lisp source file
    f.Close
    
    ' Mission accomplished
    MsgBox ("Spreadsheet Lisp imported successfully.")
    
End Sub
