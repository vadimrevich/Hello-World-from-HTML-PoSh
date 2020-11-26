'********************************************* 
' wscript_shell_environment 
' Переменные среды Windows 
' environment.vbs 
'********************************************** 
Option Explicit   
dim WshShell, index 
dim WshEnvirSys, WshEnvirUsr, WshEnvirVol, WshEnvirProc 
dim s, u, v, p 
s = "" 
v = "" 
u = "" 
p = ""   
' формируем ссылку на объект 
set WshShell = WScript.CreateObject("WScript.Shell")   
' тип SYSTEM 
set WshEnvirSys = WshShell.Environment 
' тип USER 
set WshEnvirUsr = WshShell.Environment("USER") 
' тип VOLATILE 
set WshEnvirVol = WshShell.Environment("VOLATILE") 
' тип PROCESS 
set WshEnvirProc = WshShell.Environment("PROCESS")   
For Each index In WshEnvirSys 
	s = s & index & vbCrLf 
Next   
For Each index In WshEnvirUsr 
	u = u & index & vbCrLf 
Next   
For Each index In WshEnvirVol 
	v = v & index & vbCrLf 
Next   
For Each index In WshEnvirProc 
	p = p & index & vbCrLf 
Next   
MsgBox "Системные:" & vbCrLf & vbCrLf& s 
MsgBox "Пользовательские:" & vbCrLf & vbCrLf & u 
MsgBox "Временные:" & vbCrLf & vbCrLf & v 
MsgBox "Текущий процесс:" & vbCrLf & vbCrLf & p
'Источник: http://scriptcoding.ru/2013/06/27/wscript-shell-environment/ Внимание! Права на публикацию материалов сайта находятся под охраной © http://matrixblog.ru