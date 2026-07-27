@echo off
chcp 65001 > nul
title Publicar libro teorico estable por primera vez

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
echo 2. Inicializando repositorio Git...
echo ================================================
if not exist .git (
    git init
    git branch -M main
)

git add .
git commit -m "Publicar version estable inicial con PDF descargable"

git remote remove origin 2>nul
git remote add origin https://github.com/gilbertorodriguez59/libro-machine-learning-teorico.git

echo.
echo ================================================
echo 3. Subiendo la web y el PDF a GitHub...
echo ================================================
git push -u origin main
if errorlevel 1 goto ERROR

echo.
echo ================================================
echo PUBLICACION COMPLETADA
echo PDF:
echo docs\fundamentos-matematicos-aprendizaje-automatico.pdf
echo.
echo Configure GitHub Pages en:
echo Settings - Pages - Deploy from a branch
echo Branch: main
echo Folder: /docs
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
