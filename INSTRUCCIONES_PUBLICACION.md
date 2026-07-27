# Publicación inicial en GitHub Pages

## 1. Crear la carpeta estable

Descomprime esta carpeta directamente como:

`C:\libro-machine-learning-teorico-estable`

## 2. Crear el repositorio en GitHub

En GitHub crea un repositorio público con el nombre exacto:

`libro-machine-learning-teorico`

No agregues README, `.gitignore` ni licencia desde GitHub, porque el proyecto ya contiene los archivos iniciales.

## 3. Primera publicación

Ejecuta:

`PUBLICAR_PRIMERA_VEZ.bat`

El archivo:

1. renderiza el libro;
2. crea el repositorio Git local;
3. crea el primer commit;
4. conecta con GitHub;
5. sube la rama `main`.

## 4. Activar GitHub Pages

En el repositorio abre:

`Settings > Pages`

Selecciona:

- Source: `Deploy from a branch`
- Branch: `main`
- Folder: `/docs`

Guarda la configuración.

## 5. Dirección esperada

`https://gilbertorodriguez59.github.io/libro-machine-learning-teorico/`

## 6. Actualizaciones posteriores

Después de transferir una versión revisada a la carpeta estable, ejecuta:

`ACTUALIZAR_ESTABLE.bat`
