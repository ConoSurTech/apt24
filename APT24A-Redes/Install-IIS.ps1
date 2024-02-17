# Instalar el rol de IIS
Add-WindowsFeature Web-Server

# Cambiar el puerto del sitio web predeterminado a 8081
Import-Module WebAdministration
Set-ItemProperty 'IIS:\Sites\Default Web Site' -Name bindings -Value @{protocol="http";bindingInformation="*:8081:"}

# Agregar el nombre del equipo al archivo Default.htm
Add-Content -Path "C:\inetpub\wwwroot\Default.htm" -Value $env:computername