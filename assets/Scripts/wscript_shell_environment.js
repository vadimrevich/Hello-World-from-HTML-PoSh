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
// Переменные среды Windows 
// environment.js 
//**********************************************   
var WshShell2; var WshEnvirSys, WshEnvirUsr1, WshEnvirVol, WshEnvirProc; 
var s="", u="", v="", p="";   
// формируем ссылку на объект 
WshShell2 = WScript.CreateObject("WScript.Shell")   
// тип SYSTEM 
WshEnvirSys = new Enumerator(WshShell2.Environment("SYSTEM")); 
// тип USER 
WshEnvirUsr1 = new Enumerator(WshShell2.Environment("USER")); 
// тип VOLATILE 
WshEnvirVol = new Enumerator(WshShell2.Environment("VOLATILE")); 
// тип PROCESS 
WshEnvirProc = new Enumerator(WshShell2.Environment("PROCESS"));   
for (; !WshEnvirSys.atEnd(); WshEnvirSys.moveNext()) 
	s+=WshEnvirSys.item()+"\n"; 
for (; !WshEnvirUsr1.atEnd(); WshEnvirUsr1.moveNext()) 
	u+=WshEnvirUsr1.item()+"\n"; 
for (; !WshEnvirVol.atEnd(); WshEnvirVol.moveNext()) 
	v+=WshEnvirVol.item()+"\n"; 
for (; !WshEnvirProc.atEnd(); WshEnvirProc.moveNext()) 
	p+=WshEnvirProc.item()+"\n";   
WScript.Echo ( "Системные:\n\n" + s); 
WScript.Echo ( "Пользовательские:\n\n" + u); 
WScript.Echo ( "Временные:\n\n" + v); 
WScript.Echo ( "Текущий процесс:\n\n" + p);
//Источник: http://scriptcoding.ru/2013/06/27/wscript-shell-environment/ Внимание! Права на публикацию материалов сайта находятся под охраной © http://matrixblog.ru