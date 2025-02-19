

![](logo45.jpg)

# Repo de Laboratorios PFLC
 Gparted para RESIZE 100gb
 Invitar a Ubuntu 18 se instale tarda 20 minutos
 
 # Algun problema con el APT que marca error:

    sudo apt clean
    sudo apt autoclean
    sudo apt -f install
    sudo dpkg --configure -a
    sudo apt -f install
    
 # MOVER EL ORDEN DEL GRUB
 
cd /etc/grub.d
sudo mv 30_os-prober 05_os-prober
sudo update-grub
 
# Ubuntu Setup de Labs, es 1 linea y par de lineas.
```
// Para la dual particion y poner foto imagen
sudo add-apt-repository ppa:danielrichter2007/grub-customizer

// para instalarlo
sudo apt-get update
sudo apt-get install grub-customizer gdebi-core -y 

//Baja e instala Chrome (normal)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
sudo gdebi google-chrome-stable_current_amd64.deb 
```


# Chrome con Incognito por default
# Borrar y crear este archivo para INCOGNITO, preciona con CTRL+Y, y pegar el contenido de abajo.
## recordar borrar todo lo que aparece porque sera reemplazado por abajo...(usar CTR+A, delete)

    sudo gedit /usr/share/applications/google-chrome.desktop  
    // Y presiona CRTL + A y despues tecla DELETE
    
*Reemplazo*  (copy-paste)
```
#!/usr/bin/env xdg-open
[Desktop Entry]
Version=1.0
Name=Chorme incognito
Exec=/opt/google/chrome/google-chrome --incognito
Terminal=false
Icon=google-chrome
Type=Application
Categories=Network;WebBrowser;
MimeType=text/html;text/xml;application/xhtml_xml;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;
```

# Correr Grub-Customizer seleccionando 
> Windows Boot Manager a **60 segundos con un ENTER** (de lo contrario no lo acepta)
> Poner el fondo de pantalla de logotipo45.jpeg se guarda en la carpeta de VIDEO.


# Office 2019 VL
> Descargar hasta 30 minutos o mas
setup /download configuration.xml

> Instalar y puede moverse a USB
setup /config configuration.xml


-----
# Powershell Laps
```
net user
net user prestamo *
net user soporte *
Set-LocalUser -Name "prestamo" -PasswordNeverExpires 1
Set-LocalUser -Name "soporte" -PasswordNeverExpires 1

# Desbloquear usuario
Disable-LocalUser -Name "Admin02"

```
-------
# Borrar doctos, descargas y roblox
```
@echo off
del /F /Q /S C:\Users\Estudiante\Downloads
del /F /Q /S C:\Users\Estudiante\Documents
del /s /q  C:\Users\Estudiante\AppData\Local\Roblox
del /q/f/s %TEMP%\* 
rd %temp% /s /q
md %temp%
```
---
# Para ue Chrome no haga perfiles y se purge solo (solo copiar el parametro a Chrome)
chrome.exe --no-first-run --user-data-dir="C:\TempChrome"


