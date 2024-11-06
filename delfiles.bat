@echo off
:: Verificar si el script se está ejecutando con privilegios elevados (administrador)
NET SESSION >nul 2>&1
if %errorlevel% neq 0 (
    echo Este script requiere privilegios de administrador.
    echo Ejecutando con privilegios elevados...
    powershell -Command "Start-Process cmd -ArgumentList '/c %0' -Verb runAs"
    exit /b
)

:: Eliminar los archivos de la carpeta de Descargas del usuario
echo Eliminando archivos de la carpeta Descargas...
del /f /s /q "C:\Users\%USERNAME%\Downloads\*"
echo Los archivos de la carpeta Descargas han sido eliminados.

:: Eliminar los archivos de la carpeta de Documentos del usuario
echo Eliminando archivos de la carpeta Documentos...
del /f /s /q "C:\Users\%USERNAME%\Documents\*"
echo Los archivos de la carpeta Documentos han sido eliminados.

:: Verificar y eliminar los datos de Chrome si existe la carpeta
echo Eliminando los datos de Chrome...
if exist "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data" (
    powershell -Command "Remove-Item -Recurse -Force 'C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data'"
    echo El directorio de datos de Chrome ha sido eliminado.
) else (
    echo No se encontraron datos de Chrome para eliminar.
)

:: Eliminar los archivos de Roblox si existe la carpeta
echo Eliminando los archivos de Roblox...
if exist "C:\Users\%USERNAME%\AppData\Local\Roblox" (
    powershell -Command "Remove-Item -Recurse -Force 'C:\Users\%USERNAME%\AppData\Local\Roblox'"
    echo Los archivos de Roblox han sido eliminados.
) else (
    echo No se encontraron archivos de Roblox para eliminar.
)

:: Opcionalmente, eliminar los archivos de la Papelera de reciclaje (si existe)
echo Verificando la Papelera de reciclaje...
powershell -Command "if (Test-Path 'C:\$Recycle.Bin') { Clear-RecycleBin -Force -Confirm:$false } else { echo La Papelera de reciclaje no existe o está vacía. }"
echo La Papelera de reciclaje ha sido vaciada (si existía).

pause
