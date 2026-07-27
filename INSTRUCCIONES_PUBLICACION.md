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
## PDF descargable en la versión web

La configuración incluye:

```yaml
book:
  downloads: [pdf]
  output-file: "fundamentos-matematicos-aprendizaje-automatico"
```

Al ejecutar:

```bash
quarto render
```

Quarto genera dentro de `docs`:

- el sitio HTML;
- `fundamentos-matematicos-aprendizaje-automatico.pdf`.

La versión web mostrará un botón de descarga del PDF debajo del título del libro.

Si la generación del PDF falla, instala TinyTeX:

```bash
quarto install tinytex
```

Después ejecuta:

`GENERAR_PDF.bat`

o directamente:

```bash
quarto render
```
