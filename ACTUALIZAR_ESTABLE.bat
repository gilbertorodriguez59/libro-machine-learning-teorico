@echo off
chcp 65001 > nul
title Actualizar libro teorico estable

cd /d C:\libro-machine-learning-teorico-estable

echo ================================================
echo 1. Renderizando el libro en HTML...
echo ================================================
quarto render --to html
if errorlevel 1 goto ERROR

echo.
echo ================================================
echo 2. Guardando y subiendo cambios...
echo ================================================
git add .
git commit -m "Actualizar version estable del libro teorico"
if errorlevel 1 (
    echo No hay cambios nuevos para guardar.
)

git push origin main
if errorlevel 1 goto ERROR

echo.
echo ================================================
echo ACTUALIZACION COMPLETADA
echo ================================================
pause
exit /b 0

:ERROR
echo.
echo ================================================
echo OCURRIO UN ERROR. Revise el mensaje anterior.
echo ================================================
pause
exit /b 1
