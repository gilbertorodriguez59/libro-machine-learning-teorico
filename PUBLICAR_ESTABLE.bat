@echo off
chcp 65001 > nul
cd /d "%~dp0"

echo Publique solo despues de aprobar la version de desarrollo.
pause

if exist ".quarto" rmdir /s /q ".quarto"
if exist "_freeze" rmdir /s /q "_freeze"
if exist "docs" rmdir /s /q "docs"

quarto render --no-cache
if errorlevel 1 (
  echo ERROR AL GENERAR EL LIBRO.
  pause
  exit /b 1
)

if not exist "docs\index.html" (
  echo ERROR: falta docs\index.html
  pause
  exit /b 1
)

if not exist "docs\fundamentos-matematicos-aprendizaje-automatico.pdf" (
  echo ERROR: falta el PDF.
  pause
  exit /b 1
)

git add .
git commit -m "Publicacion estable v0.26"
git push

echo.
echo Version estable publicada.
pause
