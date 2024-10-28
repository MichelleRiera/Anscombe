<img src="https://upload.wikimedia.org/wikipedia/commons/b/b0/Logo_Universidad_Politécnica_Salesiana_del_Ecuador.png" alt="Logo UPS" width="50%">

# Universidad Politécnica Salesiana (UPS)

### Carrera: Computación 
### Periodo: 65
### Estudiante: Michelle Parraga 
---

## Cuarteto de Anscombe y DataSaurus Dozen

### Cuarteto de Anscombe

El cuarteto de Anscombe es un conjunto de cuatro datasets creados por el estadístico Francis Anscombe en 1973. Estos cuatro conjuntos de datos tienen propiedades estadísticas idénticas o muy similares:
- La **media** y **varianza** de las variables `x` e `y`.
- La **correlación** entre `x` e `y`.
- La **ecuación de la regresión lineal**.

A pesar de tener estas características en común, las distribuciones de los datos son completamente diferentes cuando se visualizan en gráficos de dispersión. Esto muestra que las estadísticas descriptivas, aunque útiles, no son suficientes para comprender completamente la estructura de los datos. La visualización es crucial para identificar patrones, tendencias, y valores atípicos que podrían pasar desapercibidos con solo números.

### DataSaurus Dozen

El **DataSaurus Dozen** es un conjunto más reciente que amplía la idea del cuarteto de Anscombe, creado por Alberto Cairo y promovido a través del paquete `datasauRus` en R. Este conjunto incluye **13 datasets**, todos con las mismas estadísticas descriptivas básicas (media, desviación estándar y correlación), pero que son visualmente muy distintos cuando se grafican.

Estos datasets incluyen patrones como:
- Formas geométricas (círculos, estrellas).
- Figuras complejas como un dinosaurio.
- Distribuciones lineales, curvas, y con valores atípicos.

Este conjunto enfatiza la idea de que, aunque los datos compartan las mismas estadísticas descriptivas, sus estructuras visuales pueden variar drásticamente. Es una demostración moderna y creativa de cómo las visualizaciones son fundamentales para interpretar los datos correctamente.

### Comparación y Importancia

| Aspecto                  | Cuarteto de Anscombe                           | DataSaurus Dozen                           |
|-------------------------|------------------------------------------------|-------------------------------------------|
| **Número de Datasets**  | 4                                              | 13                                        |
| **Propiedades**         | Media, varianza, correlación y regresión lineal iguales. | Medias, desviaciones estándar y correlaciones iguales. |
| **Estructura Visual**   | Diversas, incluyendo lineales y con valores atípicos. | Formas y patrones más complejos (figuras, curvas).     |
| **Mensaje Principal**   | La visualización es fundamental para interpretar correctamente los datos. | Los datos con las mismas estadísticas descriptivas pueden tener estructuras completamente diferentes. |

Estos conjuntos son herramientas educativas y prácticas que refuerzan la necesidad de integrar la visualización en cualquier análisis estadístico. Las visualizaciones ayudan a identificar patrones y anomalías que no son evidentes con estadísticas descriptivas simples, proporcionando una imagen más completa y precisa de los datos.

---

## Organización del Repositorio

### 1. **Portada**
   - Universidad: Universidad Politécnica Salesiana (UPS)
   - Carrera: Computación
   - Periodo: 65
   - Estudiante: Michelle Parraga
   - Explicación breve: Se incluye una breve explicación del cuarteto de Anscombe y su relevancia en el análisis visual de datos.

### 2. **Estructura del Repositorio**

#### - Directorio: `data`
   Contiene todos los conjuntos de datos utilizados en esta práctica, incluyendo:
   - **Cuarteto de Anscombe** (`df_nscombe.csv`): Archivo con los datos del cuarteto de Anscombe en formato CSV.
   - **DataSaurus Dozen**: Este conjunto de datos no se descarga como archivo, sino que se importa directamente en 
   R utilizando el paquete **`datasauRus`**. El dataset se accede mediante el nombre `datasaurus_dozen` una vez que 
   el paquete se ha cargado. Este conjunto de datos incluye 13 datasets que se utilizan para mostrar cómo, a pesar de
   tener estadísticas similares, las distribuciones pueden ser muy diferentes visualmente. 

   > Nota: Si se desea exportar el dataset como archivo `.csv`, se puede usar el siguiente código en R:
   ```r
   library(datasauRus)
   write.csv(datasaurus_dozen, "datasaurus_dozen.csv", row.names = FALSE)
```

#### - Directorio: `anscombe`
   Este directorio contiene el análisis completo del cuarteto de Anscombe, incluyendo el código fuente y los resultados visuales. La estructura es la siguiente:
   
   - **Jupyter Notebook** (`cuarteto de Anscombe.ipynb`): El archivo de código fuente en formato Jupyter Notebook 
   que realiza un análisis detallado del cuarteto de Anscombe. Este análisis incluye:
     - **Carga del dataset**: Se importan y preparan los datos del cuarteto de Anscombe utilizando bibliotecas como `pandas` y `seaborn`.
     - **Resúmenes estadísticos**: Se calculan estadísticas como la media, varianza, correlación, y regresión lineal para cada uno de los cuatro conjuntos de datos.
     - **Gráficas de dispersión**: Se crean gráficos de dispersión para cada grupo, mostrando las diferencias visuales entre ellos, a pesar de tener las mismas estadísticas.
     - **Gráficas de boxplot**: Se generan gráficos de boxplot para cada grupo, proporcionando una visualización comparativa de la distribución y variabilidad de los valores en cada conjunto de datos.
     - **Documentación**: El notebook está documentado con celdas de Markdown que explican y contextualizan cada paso del análisis para facilitar su comprensión.

   - **Resultado en HTML** (`cuarteto de Anscombe.html`): Este archivo es una exportación en formato HTML del Jupyter Notebook, lo que permite visualizar el análisis completo, incluyendo las gráficas y explicaciones, sin necesidad de ejecutar el código. Es una forma conveniente de explorar los resultados y entender la importancia de la visualización en el análisis estadístico.


#### - Directorio: `DataSaurus`
   Este directorio contiene el análisis completo del conjunto de datos `DataSaurus Dozen` y está organizado de la siguiente manera:

   - **Archivo R Markdown** (`practica3.Rmd`): Este archivo contiene el código en R utilizado para mostrar y analizar los 13 conjuntos de datos del `datasaurus_dozen` proporcionados por el paquete `datasauRus`. El análisis incluye:
     - **Carga del dataset**: El dataset se importa directamente desde la librería `datasauRus` en R.
     - **Resúmenes estadísticos**: Se calculan estadísticas descriptivas, como medias, desviaciones estándar y correlaciones para cada conjunto de datos, demostrando que tienen estadísticas similares a pesar de sus diferentes distribuciones visuales.
     - **Gráficas de dispersión**: Se visualizan los 13 conjuntos de datos mediante gráficos de dispersión, organizados en una cuadrícula para mostrar cómo, a pesar de tener las mismas estadísticas, los datos pueden distribuirse de formas muy diferentes.
     - **Regresión lineal**: Se aplica un análisis de regresión lineal a uno de los datasets seleccionados (`h_lines`) y se genera la gráfica correspondiente con `ggplot2`.

   - **Resultado en HTML** (`practica3.html`): Este archivo es la exportación del archivo R Markdown en formato HTML, que muestra los resultados del análisis de `DataSaurus` de manera interactiva y visual. Incluye todas las gráficas y resúmenes estadísticos generados en el archivo R Markdown, proporcionando una vista completa sin necesidad de ejecutar el código en R.

   > **Nota**: El dataset `datasaurus_dozen` no se descarga como un archivo estático, sino que se importa utilizando la librería `datasauRus` en R para facilitar el análisis y las visualizaciones en el entorno de R.


#### - Directorio: `regresion_lineal_ggplot2`
   Este directorio contiene el análisis de regresión lineal realizado utilizando el paquete `ggplot2` en R, aplicándolo a un dataset específico del conjunto `DataSaurus`. A continuación se detalla el contenido del directorio:

   - **Archivo R Markdown** (`regresionLineal.Rmd`): Este archivo contiene el código en R utilizado para realizar la regresión lineal en el dataset `h_lines` del conjunto `DataSaurus Dozen`. El código incluye:
     - **Filtrado del dataset**: Se filtra el dataset `h_lines` para enfocarse en este subconjunto específico de `datasaurus_dozen`.
     - **Visualización de puntos**: Se utilizan funciones de `ggplot2` para graficar los puntos de dispersión, coloreándolos para distinguir claramente el dataset.
     - **Regresión lineal**: Se agrega una línea de regresión lineal utilizando `geom_smooth(method = "lm")`, mostrando visualmente la relación lineal entre las variables.

   - **Resultado en HTML** (`regresionLineal.html`): Este archivo es la exportación en HTML del archivo R Markdown, mostrando la visualización y los resultados de la regresión lineal sin necesidad de ejecutar el código en R.

   > **Nota**: El análisis y la visualización se realizaron utilizando el paquete `ggplot2`, una biblioteca poderosa para la creación de gráficos en R que permite crear visualizaciones complejas y personalizadas de manera eficiente.


---

## Instrucciones

Para reproducir este análisis, asegúrese de tener instaladas las siguientes bibliotecas:

- **Python**: `Jupyter Notebook`, `pandas`, `matplotlib`, `seaborn` (para el análisis del cuarteto de Anscombe).
- **R**: `tidyverse`, `ggplot2`, `dplyr`, `conflicted`, `datasauRus` (para el análisis de los datasets `datasaurus_dozen` y la regresión lineal con `ggplot2`).

Puede acceder a los resultados en formato HTML directamente en el repositorio o ejecutar los archivos `.ipynb` y `.Rmd` en su entorno local para experimentar con los datos y las visualizaciones. Los archivos `.ipynb` corresponden al análisis del cuarteto de Anscombe, y los archivos `.Rmd` corresponden a los análisis de `datasaurus_dozen` y la regresión lineal.

---

## Conclusión

Este repositorio demuestra la importancia del análisis visual de datos a través de ejemplos icónicos como el cuarteto de Anscombe y el `datasaurus_dozen`. Aunque las estadísticas descriptivas pueden ser útiles, las visualizaciones permiten identificar patrones y anomalías que no son evidentes a simple vista, reforzando la idea de que una imagen vale más que mil palabras en el análisis estadístico. Los gráficos ayudan a revelar distribuciones y relaciones que las simples estadísticas no pueden mostrar, subrayando la necesidad de combinar ambos enfoques para un análisis completo y preciso.

## Referencias
- Anscombe, F. J. (1973). Graphs in Statistical Analysis. American Statistician, 27(1), 17-21.
- Cairo, A. (2016). The Datasaurus Dozen: Same Stats, Different Graphs. Fuente en línea.
- Wickham, H., & Grolemund, G. (2016). R for Data Science: Import, Tidy, Transform, Visualize, and Model Data. O'Reilly Media.
- datasauRus package. A Collection of Datasets Illustrating the Importance of Visualizing Data. CRAN Package.