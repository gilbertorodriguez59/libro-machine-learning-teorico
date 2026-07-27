@echo off
chcp 65001 > nul
title Generar PDF del libro teorico

cd /d C:\libro-machine-learning-teorico-estable

echo ================================================
echo Comprobando instalacion de Quarto...
echo ================================================
quarto check
if errorlevel 1 goto ERROR

echo.
echo ================================================
echo Generando solamente el PDF...
echo ================================================
quarto render --to pdf
if errorlevel 1 goto PDF_ERROR

if not exist docs\fundamentos-matematicos-aprendizaje-automatico.pdf (
    echo No se encontro el PDF en la carpeta docs.
    goto ERROR
)

echo.
echo ================================================
echo PDF GENERADO CORRECTAMENTE
echo docs\fundamentos-matematicos-aprendizaje-automatico.pdf
echo ================================================
pause
exit /b 0

:PDF_ERROR
echo.
echo No fue posible generar el PDF.
echo Instale o repare TinyTeX con:
echo.
echo quarto install tinytex
echo.
echo Luego ejecute nuevamente este archivo.
goto ERROR

:ERROR
echo.
echo ================================================
echo PROCESO INTERRUMPIDO
echo ================================================
pause
exit /b 1
