// === wscript_shell_environment ===
// (c) 2019
//
// []
// Arguments:
//
//
// Example:
//   Call("Scripts::Main", 1, "", "")
//
//********************************************* 
// wscript_shell_environment 
// ���������� ����� Windows 
// environment.js 
//**********************************************   
var WshShell2; var WshEnvirSys, WshEnvirUsr1, WshEnvirVol, WshEnvirProc; 
var s="", u="", v="", p="";   
// ��������� ������ �� ������ 
WshShell2 = WScript.CreateObject("WScript.Shell")   
// ��� SYSTEM 
WshEnvirSys = new Enumerator(WshShell2.Environment("SYSTEM")); 
// ��� USER 
WshEnvirUsr1 = new Enumerator(WshShell2.Environment("USER")); 
// ��� VOLATILE 
WshEnvirVol = new Enumerator(WshShell2.Environment("VOLATILE")); 
// ��� PROCESS 
WshEnvirProc = new Enumerator(WshShell2.Environment("PROCESS"));   
for (; !WshEnvirSys.atEnd(); WshEnvirSys.moveNext()) 
	s+=WshEnvirSys.item()+"\n"; 
for (; !WshEnvirUsr1.atEnd(); WshEnvirUsr1.moveNext()) 
	u+=WshEnvirUsr1.item()+"\n"; 
for (; !WshEnvirVol.atEnd(); WshEnvirVol.moveNext()) 
	v+=WshEnvirVol.item()+"\n"; 
for (; !WshEnvirProc.atEnd(); WshEnvirProc.moveNext()) 
	p+=WshEnvirProc.item()+"\n";   
WScript.Echo ( "���������:\n\n" + s); 
WScript.Echo ( "����������������:\n\n" + u); 
WScript.Echo ( "���������:\n\n" + v); 
WScript.Echo ( "������� �������:\n\n" + p);
//��������: http://scriptcoding.ru/2013/06/27/wscript-shell-environment/ ��������! ����� �� ���������� ���������� ����� ��������� ��� ������� � http://matrixblog.ru