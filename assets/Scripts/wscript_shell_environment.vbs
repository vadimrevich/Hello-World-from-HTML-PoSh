'********************************************* 
' wscript_shell_environment 
' ���������� ����� Windows 
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
' ��������� ������ �� ������ 
set WshShell = WScript.CreateObject("WScript.Shell")   
' ��� SYSTEM 
set WshEnvirSys = WshShell.Environment 
' ��� USER 
set WshEnvirUsr = WshShell.Environment("USER") 
' ��� VOLATILE 
set WshEnvirVol = WshShell.Environment("VOLATILE") 
' ��� PROCESS 
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
MsgBox "���������:" & vbCrLf & vbCrLf& s 
MsgBox "����������������:" & vbCrLf & vbCrLf & u 
MsgBox "���������:" & vbCrLf & vbCrLf & v 
MsgBox "������� �������:" & vbCrLf & vbCrLf & p
'��������: http://scriptcoding.ru/2013/06/27/wscript-shell-environment/ ��������! ����� �� ���������� ���������� ����� ��������� ��� ������� � http://matrixblog.ru