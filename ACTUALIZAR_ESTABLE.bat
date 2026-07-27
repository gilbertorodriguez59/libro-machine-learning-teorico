@echo off
chcp 65001 > nul
title Actualizar libro teorico estable con PDF

cd /d C:\libro-machine-learning-teorico-estable

echo ================================================
echo 1. Generando libro web y archivo PDF...
echo ================================================
quarto render
if errorlevel 1 goto ERROR

if not exist docs\fundamentos-matematicos-aprendizaje-automatico.pdf (
    echo.
    echo ERROR: No se genero el archivo PDF esperado.
    echo Revise la instalacion de TinyTeX o LaTeX.
    goto ERROR
)

echo.
echo ================================================
echo 2. Guardando la web y el PDF...
echo ================================================
git add .
git commit -m "Actualizar libro web y PDF descargable"
if errorlevel 1 (
    echo No hay cambios nuevos para guardar.
)

echo.
echo ================================================
echo 3. Subiendo los cambios a GitHub...
echo ================================================
git push origin main
if errorlevel 1 goto ERROR

echo.
echo ================================================
echo ACTUALIZACION COMPLETADA
echo.
echo PDF publicado:
echo docs\fundamentos-matematicos-aprendizaje-automatico.pdf
echo ================================================
pause
exit /b 0

:ERROR
echo.
echo ================================================
echo OCURRIO UN ERROR. Revise el mensaje anterior.
echo.
echo Si el error corresponde a LaTeX o PDF, ejecute:
echo quarto install tinytex
echo.
echo Despues vuelva a ejecutar este archivo.
echo ================================================
pause
exit /b 1
