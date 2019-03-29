
![](logo45.jpg)

# Repo de Laboratorios PFLC
 Gparted para RESIZE 100gb
 Invitar a Ubuntu 18 se instale tarda 20 minutos
 
# Ubuntu Setup de Labs, es 1 linea y par de lineas.
```
sudo add-apt-repository ppa:danielrichter2007/grub-customizer

sudo apt-get update
sudo apt-get install grub-customizer gdebi-core -y 

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
sudo gdebi google-chrome-stable_current_amd64.deb 
```

## Poner Logotipo en GrubCustomizer  /home/estudiante/(directorio)
# Instalar GAMBAS3
## https://www.linuxhelp.com/how-to-install-gambas-3-10-90-on-ubuntu-18-04
 add-apt-repository ppa:gambas-team/gambas-daily
 apt-get update
 apt-get install gambas3
> son como 200mb de actualizaciones


# Chrome con Incognito por default
# Borrar y crear este archivo para INCOGNITO, preciona con CTRL+Y, y pegar el contenido de abajo.
    sudo gedit /usr/share/applications/google-chrome.desktop  

*Reemplazo*
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
