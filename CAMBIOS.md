# Historial de cambios

## Versión 0.2

- Desarrollo completo del Capítulo 2: Álgebra lineal para aprendizaje automático.
- Inclusión de vectores, matrices, espacios vectoriales, productos internos, normas y proyecciones.
- Inclusión de rango, espacio columna, valores propios, descomposición espectral y SVD.
- Conexiones formales con regresión lineal, PCA y redes neuronales.
- Nuevos ejercicios conceptuales, algebraicos y aplicados.

## Versión 0.3

- Desarrollo completo del Capítulo 3: Probabilidad y estadística para aprendizaje automático.
- Inclusión de espacios de probabilidad, probabilidad condicional, independencia y teorema de Bayes.
- Inclusión de variables aleatorias discretas y continuas, esperanza, varianza, covarianza y correlación.
- Inclusión de vectores aleatorios, matriz de covarianza y distribución normal multivariada.
- Inclusión de ley de los grandes números y teorema central del límite.
- Inclusión de estimación puntual, sesgo, consistencia, máxima verosimilitud y estimación bayesiana.
- Nuevos ejemplos, ejercicios y conexiones con regresión logística, árboles de decisión y PCA.

## Versión 0.4

- Desarrollo completo del Capítulo 4: Cálculo multivariable y optimización.
- Inclusión de derivadas parciales, gradiente, Jacobiana y Hessiana.
- Inclusión de regla de la cadena y expansión de Taylor.
- Inclusión de puntos críticos, convexidad y condiciones de optimalidad.
- Inclusión de descenso por gradiente, descenso estocástico, mini-lotes y método de Newton.
- Inclusión de multiplicadores de Lagrange y condiciones KKT.
- Conexiones formales con regresión lineal, regresión logística, PCA, SVM y redes neuronales.
- Nuevos ejemplos, código en R y ejercicios matemáticos y aplicados.

## Versión 0.5

- Inicio de la Parte II: Fundamentos del aprendizaje automático.
- Desarrollo completo del Capítulo 5: Formulación matemática del aprendizaje supervisado.
- Inclusión de espacios de entrada y salida, muestras, hipótesis y espacios de hipótesis.
- Inclusión de funciones de pérdida, riesgo esperado, riesgo empírico y minimización del riesgo empírico.
- Desarrollo de generalización, brecha de generalización, sobreajuste y subajuste.
- Inclusión del compromiso sesgo-varianza y ruido irreducible.
- Inclusión de regularización L1 y L2, validación y selección de modelos.
- Conexiones con regresión, clasificación, k-NN, árboles y redes neuronales.
- Nuevos ejemplos, código en R y ejercicios matemáticos y aplicados.

## Versión 0.6

- Desarrollo completo del Capítulo 6: Teoría matemática de la clasificación.
- Inclusión de regiones y fronteras de decisión.
- Derivación del riesgo condicional, regla de Bayes y error de Bayes.
- Inclusión de pérdidas asimétricas y clasificación sensible al costo.
- Desarrollo de matriz de confusión y métricas de clasificación.
- Inclusión de curvas ROC, AUC, curvas precisión-recall y calibración.
- Extensión formal a clasificación multiclase.
- Conexiones con regresión logística, k-NN, árboles y SVM.
- Nuevos ejemplos, código en R y ejercicios matemáticos y aplicados.

## Versión 0.7

- Desarrollo completo del Capítulo 7: Evaluación, validación y selección de modelos.
- Inclusión de error de entrenamiento, prueba, generalización y optimismo.
- Desarrollo de holdout, validación cruzada, LOOCV y validación repetida.
- Inclusión de particiones estratificadas, agrupadas y temporales.
- Desarrollo de bootstrap, error out-of-bag y estimador .632.
- Inclusión de búsqueda de hiperparámetros y regla de un error estándar.
- Desarrollo de validación cruzada anidada y sesgo por selección.
- Inclusión de fuga de información, pipelines y preprocesamiento correcto.
- Nuevos ejemplos, código en R y ejercicios conceptuales y aplicados.

## Versión 0.8

- Desarrollo completo del Capítulo 8: Regularización y control de la complejidad.
- Derivación formal de regresión ridge.
- Inclusión de interpretación espectral, sesgo, varianza y grados de libertad efectivos.
- Desarrollo de LASSO, subgradientes y operador soft-thresholding.
- Inclusión de interpretación geométrica de las penalizaciones L1 y L2.
- Desarrollo de elastic net y su relación con variables correlacionadas.
- Inclusión de interpretación bayesiana de ridge y LASSO.
- Inclusión de regularización en regresión logística, redes neuronales y árboles.
- Nuevos ejemplos, código en R y ejercicios conceptuales y aplicados.

## Versión 0.9

- Inicio de la Parte III: Modelos de regresión.
- Desarrollo completo del Capítulo 9: Regresión lineal simple.
- Derivación formal de los estimadores de mínimos cuadrados.
- Inclusión de propiedades de insesgadez, varianza y teorema de Gauss-Markov.
- Desarrollo de inferencia para pendiente e intercepto.
- Inclusión de intervalos de confianza y predicción.
- Desarrollo de ANOVA, coeficiente de determinación y relación con correlación.
- Inclusión de análisis de residuos, apalancamiento y distancia de Cook.
- Conexión con máxima verosimilitud y aprendizaje supervisado.
- Nuevos ejemplos, código en R y ejercicios conceptuales y aplicados.

## Versión estable 1.0

- Primera versión estable preparada para publicación.
- Incluye los capítulos 1 al 9.
- Configuración de salida HTML en `docs`.
- Metadatos de repositorio y sitio web.
- Archivos BAT para primera publicación y actualizaciones posteriores.

## Versión estable 1.1

- Se agregó el botón de descarga del PDF en la barra lateral del libro web.
- Se definió el archivo `fundamentos-matematicos-aprendizaje-automatico.pdf`.
- Los archivos de publicación ahora generan simultáneamente HTML y PDF.
- Se agregó `GENERAR_PDF.bat` para comprobar y generar únicamente el PDF.
- Se añadieron instrucciones para instalar TinyTeX cuando sea necesario.

## Versión estable 1.3

- Se eliminaron fórmulas matemáticas de los encabezados de sección.
- Se corrigió el encabezado `lambda_max` que provocaba `Argument of \@sect has an extra }`.
- Se reemplazaron otros encabezados matemáticos potencialmente problemáticos para prevenir nuevos errores en LaTeX.
- Las fórmulas permanecen dentro del contenido de cada sección.

