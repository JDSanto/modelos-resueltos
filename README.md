# Resueltos de modelos y Optimización I

Conjunto de ejercicios resueltos de la materia Modelos y Optimización I.

## Generar los PDFs

Para generar los PDFs, es necesario instalar:

- `pandoc`
- `texlive-core`
- `texlive-bin`
- `texlive-fontsextra`

Alternativamente, para no instalar `texlive-fontsextra`, se pueden instalar los paquetes de fuentes manualmente con `tllocalmgr`:
```
tllocalmgr install sourcesanspro ly1 sourcecodepro
sudo updmap-sys --enable Map SourceSansPro.map
sudo updmap-sys --enable Map SourceCodePro.map
sudo texhash
```

En la carpeta `assets` se encuentran los archivos base. Entre ellos está el template de latex [Eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template).

## Instrucciones `make`:

- `make EJ=<ejercicio>` para generar el PDF en la carpeta `ejercicio`.
- `make all` para generar el PDF de todas las carpetas.
- `make new EJ=<ejercicio>` para crear la carpeta y un markdown vacío.
- `make book` para generar un único PDF con todos los ejercicios.