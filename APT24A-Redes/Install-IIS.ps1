# Instalar el rol de IIS y la Interfaz de Administración de IIS
Add-WindowsFeature Web-Server, Web-Mgmt-Console

# Modificar el archivo Default.htm
Add-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value $env:computername

# Eliminar el enlace existente que escucha en el puerto 80
Remove-WebBinding -Name "Default Web Site" -Protocol "http" -Port 80

# Crear un nuevo enlace para que el sitio web predeterminado escuche en el puerto 8081
New-WebBinding -Name "Default Web Site" -IPAddress "*" -Port 8081 -Protocol "http"

# Habilitar el puerto 8081 en el Firewall de Windows
New-NetFirewallRule -DisplayName "Allow TCP Port 8081" -Direction Inbound -Protocol TCP -LocalPort 8081 -Action Allow
