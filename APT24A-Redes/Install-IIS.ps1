# Instalar el rol de IIS y la Interfaz de Administración de IIS
Add-WindowsFeature Web-Server, Web-Mgmt-Console

# Modificar el archivo Default.htm
Add-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value $env:computername