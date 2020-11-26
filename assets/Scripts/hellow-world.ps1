# *****************************************************************************
#
# Hellow-World.ps1
#
# This Script Downloads two Command Files and Executes It
#
# First Command File Elevates the Second
# Second Command File Types "Hello World and Waits to Key Pressed
#
# You may also load your own programs
#
# ******************************************************************************

# ** Customizable Script **
$httpfref = "http://"
$httphost = "localhost"
$httpport = ":80"
$httppath = "/Hello-World/assets/Scripts/"
$WebClient = New-Object System.Net.WebClient

$batfile = "hellow-world.run1.bat"
$batexefile = "hellow-world.bat"
# ** /Customizable Script **

# *** Download $batexefile in temprorary directory ***
$download_url = $httpfref + $httphost + $httpport + $httppath + $batexefile
$local_path = $env:TEMP+"\" + $batexefile
$WebClient.DownloadFile($download_url, $local_path)
# *** /Download $batexefile ***

# *** Download $batfile in temprorary directory ***
$download_url = $httpfref + $httphost + $httpport + $httppath + $batfile
$local_path = $env:TEMP+"\" + $batfile
$fullbatfile = $local_path
$WebClient.DownloadFile($download_url, $local_path)
# *** /Download $batfile in temprorary directory ***

# ** Run bat file **
& $fullbatfile

# The End of Script