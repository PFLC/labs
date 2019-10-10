
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
