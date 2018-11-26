# Altair

`Altair` utiliza lo que se conoce como “gramatica de gráficos”. El énfasis es en _describir_ la apariencia visual y el comportamiento interactivo de tu visualización. La simplicidad de `altair` (que proviene de utilizar `Vega` y `Vega-lite`) la vuelve una herramienta muy eficáz para explorar y presentar datos.


## Instalación
[Instrucciones completas en la documentación de Altair](https://altair-viz.github.io/getting_started/installation.html)

La mejor manera de trabajar con `altair` es en `Jupyter Lab`. Se recomienda crear un nuevo entorno virtual (puedes utilizar cualquier librería que te guste `pipenv`, `conda`, `virtualenv`).
Ya que hayas creado tu entorno puedes instalar `altair` y `jupyter lab` fácilmente con `pip` o `conda`.

##### Conda
```python
conda install -c conda-forge altair vega_datasets jupyterlab
```
##### Pip
```python
pip install -U altair vega_datasets jupyterlab
```

Notarás que estas instalando 3 librerías, `vega_datasets` contiene varios conjuntos de datos (_datasets_) con los que puedes recrear los ejemplos de la galería de `altair` [(en su documentación online)](https://altair-viz.github.io/gallery/index.html)

ya que hayas instalado lo necesario puedes ejecutar lo siguiente desde tu línea de comando:
```sh
jupyter lab
```

jupyter lab 

jupyter notebooks

google colab



## Comenzando

***


## `Vega-Lite`
> Vega-Lite es una gramática de gráficos interactivos de alto nivel. Proporciona una concisa sintaxis en JSON para generar visualizaciones rápidamente para apoyar el análisis. Las especificaciones de Vega-Lite se pueden compilar según las especificaciones de Vega

> Las especificaciones de Vega-Lite describen visualizaciones como asignaciones de datos a propiedades de marcas gráficas (por ejemplo, puntos o barras). El compilador Vega-Lite produce automáticamente componentes de visualización que incluyen ejes, leyendas y escalas. Luego determina las propiedades de estos componentes basándose en un conjunto de reglas cuidadosamente diseñadas. Este enfoque permite que las especificaciones sean sucintas y expresivas, pero también proporciona control al usuario. Como Vega-Lite está diseñado para el análisis, admite transformaciones de datos tales como agregación, agrupación, filtrado, clasificación y transformaciones visuales, incluyendo apilamiento y facetado. Además, las especificaciones de Vega-Lite se pueden componer en pantallas de múltiples vistas y en capas, e interactuar con selecciones.
> <br> _https://vega.github.io/vega-lite/_
