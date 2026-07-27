@echo off
chcp 65001 > nul
title Publicar libro teorico estable por primera vez

cd /d C:\libro-machine-learning-teorico-estable

echo ================================================
echo 1. Renderizando el libro en HTML...
echo ================================================
quarto render --to html
if errorlevel 1 goto ERROR

echo.
echo ================================================
echo 2. Inicializando repositorio Git...
echo ================================================
if not exist .git (
    git init
    git branch -M main
)

git add .
git commit -m "Publicar version estable inicial del libro teorico"

git remote remove origin 2>nul
git remote add origin https://github.com/gilbertorodriguez59/libro-machine-learning-teorico.git

echo.
echo ================================================
echo 3. Subiendo a GitHub...
echo ================================================
git push -u origin main
if errorlevel 1 goto ERROR

echo.
echo ================================================
echo PUBLICACION COMPLETADA
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
echo No se realizaron pasos posteriores.
echo ================================================
pause
exit /b 1
