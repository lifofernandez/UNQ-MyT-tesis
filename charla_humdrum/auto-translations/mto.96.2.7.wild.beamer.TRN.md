# Universidad Nacional de Quilmes \newline Taller de Tesis
## Exposición de artículo referente \newline Representaciones de Información Musical
Docente: **Esteban Calcagno**
Alumno: **Lisandro Fernández**
gran salto
Septiembre, 2017


## Reseña sobre"Humdrum Toolkit"\newline Herramientas UNIX para Investigación Musical, creadas por David Huron
** Una revisión del kit de herramientas de Humdrum: UNIX Tools for Musical Research, creado por David Huron **
** Jonathan Wild **
\Nota{ null
Universidad McGill
Facultad de Música, Departamento de Teoría
555 Sherbrooke West
Montreal, Quebec, H3A 1A3
jon@music.mcgill.ca
}
gran salto
Teoría De La Música En Línea, Volumen 2, Número 7, Noviembre 1996
* Copyright © 1996 Sociedad de Teoría de la Música *
gran salto
\Nota{ null
**Abstracto:**
Humdrum Toolkit de David Huron es un conjunto de herramientas de software creadas para
investigación musical asistida por ordenador.  Esta revisión describe y evalúa las
Toolkit y los esquemas de representación musical que lo apoyan.
}
**Resumen:**
Humdurm Toolkit de David Huron es un conjunto de herramientas de software
creadas para la investigación musical asistida por computadoras. Esta reseña
describe y evalua el Toolkit y el esquema representacion musical
que lo apoya.
# 1. Introducción
## 1.1 Justificación
Los esfuerzos musicales teóricos varían mucho en su amplitud.
* En un extremo del espectro están las cuentas de un compositor particular
técnica dentro de una pieza en particular.
* En el otro, los intentos de responder a las preguntas más generales sobre
como funciona la musica
Como los objetivos de un investigador tienden hacia el último extremo del continuo,
él o ella debe explorar un repertorio más grande y más grande.
* Compuesto por el nivel de intimidad con detalles musicales que
una investigación sistemática puede requerir, un gran cuerpo de música puede exceder rápidamente
la capacidad de una vida académica.
Un paso indispensable en la búsqueda de este tipo más amplio de investigación es
la acumulación y el mantenimiento de una gran base de datos informática de música.
Incluso el estudio de repertorios de tamaño manejable se lleva a cabo con mayor flexibilidad
cuando la representación digital y la manipulación automatizada de la música está disponible.
## 1.2 Contexto
El Centro de Investigación Asistida por Computador en Humanidades (CCARH) en
Stanford tiene un proyecto de base de datos musical en curso.
De importancia vital para la utilidad de tal tarea es el formato de
representación musical dentro de la base de datos.
Como resultado de los éxitos de la musicología asistida por ordenador, la representación musical
proliferatinge, jockeying para la posición hasta el momento que una cierta clase de
estándar.
* La mayoría de los esquemas fueron diseñados para ayudar a los compositores de música por computadora.
Cuyos requisitos no necesariamente se cruzan con los de los investigadores.
En la base de datos del CCARH, se utilizan simultáneamente varios formatos para codificar música,
todos los subconjuntos de la representación maestra de CCARH MuseData.
* Lo más prometedor entre los esquemas es la representación Humdrum,
diseñado por David Huron.
# 2. Humdrum \newline Dos aspectos, Representación y Manipulación
## 2.1 La Sintaxis
En primer lugar, está la sintaxis definida para representar información discreta
como una serie de registros en un archivo de computadora.
* Su definición permite que se codifiquen muchos tipos de información.
* El esquema utilizado en la base de datos CCARH para el tono musical esencial y la duración
la información es sólo uno de un conjunto abierto.
* Algunos otros miembros pueden ser aumentados por esquemas definidos por el usuario para
tareas de investigación.
## 2.2 El Conjunto Comandos
Segundo, está el conjunto de comandos, el Humdrum Toolkit, diseñado para
manipular archivos que se ajusten a la sintaxis Humdrum en el nombre de
la investigación asistida por ordenador en la música.
* El énfasis aquí debe ser en"ayudado":
* Humdrum no posee facultades analíticas de nivel superior per se.
* Más bien, su poder deriva de la flexibilidad de su kit de
elementales, que el usuario debe aprender a utilizar en combinación
para explotar plenamente el potencial del sistema.
# 3. Representaciones Humdrum
## 3.1 \*\*kern: Representación esencial de altura/duracion
Permite inspeccionar las convenciones de una representación particular de Humdrum, por
medios de un fragmento musical.
El ejemplo 1 (a continuación) contiene las dos primeras fases del coral de Bach
"Nun danket alle Gott"en el esquema de representación de pitch / duration de Humdrum,
\ * \ * Core.
* Las tres primeras líneas, cada una marcada por un triple signo de exclamación, son referencia
registros, cada uno de cuyos significados deberían ser fácilmente evidentes.
* Humdrum especifica más de 80 tipos de registros de referencia para las puntuaciones electrónicas,
proporcionando información tan diversa como el número de catálogo, el nombre del dedicado,
manuscrito o título traducido en más de cuarenta idiomas.
## Ejemplo 1
```
COM: Bach, Johann Sebastian
OTL: Nun gracias a todos Gott
ENC: Wild, Jon
núcleo núcleo núcleo núcleo
*A:     *A:     *A:     *A:
4АА 4ц # чаее null
=1      =1      =1      =1
8 чс # чаеее null
8B  .  .
8ö # чс # чаее null
8A.  .  .
8Д 4д ча 4фф # null
8E.  .  .
8F # 4d 4ff # null
8D.  .  .
```
## 3.2 Registros/Archivos Humdrum
Un archivo de Humdrum se compone de una serie de registros, cada uno ocupando una línea.
* Las cuatro columnas que siguen los registros de referencia se denominan espinas;  son
separados por caracteres de tabulación.
* Los acontecimientos en la misma línea ocurren simultáneamente mientras que los acontecimientos en la misma espina dorsal
ocurren secuencialmente.
* El encabezamiento \ * \ * kern, que es la interpretación exclusiva de cada espina aquí,
significa que la información dentro de las preocupaciones de tono y duración.
* Un archivo puede contener cualquier número de espinas con varias representaciones exclusivas.
* En este ejemplo cada espina dorsal representa una voz de un coral de cuatro partes.
* El quinto registro de datos contiene una interpretación en tándem para cada espina dorsal que
denota la clave del fragmento.
* Otras interpretaciones en tándem dentro de \ * \ * kern contienen información sobre el metro
firma, tempo, instrumento, etc.
## 3.3 Púas (spines)
Una representación de kern puede ser pensada como una rotación, 90-horario, de
la partitura musical.
* Así, la columna vertebral más a la izquierda corresponde a la voz más baja.
* El tiempo corre hacia abajo en la página en lugar de izquierda a derecha.
Espinas adicionales podrían contener
* Cosas bastante directas, como texto vocal (representación de texto * * *), análisis armónico romano-numeral (\ * \ * representación de daño).
* O información relativamente abstrusa como coordenadas cocleares (\ * \ * cocho), disonancia sensorial (\ * \ * diss), datos espectrales acústicos (\ * \ * spect).
Algunas de estas otras representaciones pueden ser generadas como salida por comandos
operando en una espina dorsal o conjunto de espinas.
* El comando ** pcset ** añadirá automáticamente una columna vertebral de \ * \ * pcset
que etiquetó cada simultaneidad por su nombre Fortean de clase-conjunto, forma primo o
intervalo vector.
\Nota{ null
* Los datos para una espina dorsal de \ * \ *, por otro lado, deben ser introducidos manualmente
(hasta que se desarrolle un algoritmo para esta tarea).
}
## 3.4 Duración
Cada nota codificada en el ejemplo 1 tiene al menos dos partes, correspondiendo
respectivamente a la duración de la nota y el tono:
* Un número entero y una o más letras mayúsculas o minúsculas.
El entero representa la duración a través del recíproco del valor de nota norteamericano;
* Por ejemplo, una cuarta nota por"4"y una decimosexta nota por"16."
* Una breve (longitud de dos notas enteras) toma el valor especial 0.
* Los tripletes de octava nota se asignarían cada uno al número entero 12, ya que cada uno de ellos
abarcan un tercio de una cuarta nota, lógicamente son doce notas.
* Una nota que participa en un septuplet en el tiempo de una cuarteta punteada
recibe el valor 28 (una séptima de una nota de cuarto o una nota de 28) aumentada
por un punto.
\Nota{ null
Pa una nueva subdivisión de esta nota en tres partes daría lugar a
punteado 84-nota.
}
## 3.4.1 Duraciones complejas
Esta convención puede parecer inicialmente opaca, pero maneja sucintamente y
consistentemente para expresar casi todas las duraciones.
* Las excepciones que vienen a la mente incluyen el obstáculo
subdivisiones de una breve, como tripletes de nota completa (tres a una breve), y
tales atrocidades ferneyhoughianas como"cuatro en el tiempo de tres notas de un
quintuplet", que requieren el uso de lazos superfluos y / o puntos.
## 3.5 Alturas, articulaciones, barras...
* Las letras mayúsculas o minúsculas indican la clase de tono y la octava de una nota.
* También se proporcionan alteraciones cromáticas.
* Al igual que un gran número de marcas de articulación, adornos, rediseñaciones,
Stem y Beam.
* Los descansos se indican combinando una duración recíproca con la
letra"r".
* los caracteres de período frecuente son meramente marcadores de posición,"nulo
tokens"en un registro de datos con actividad en otra columna vertebral.
* Barlines aparecen como registros con un signo de igualdad líder;
* Un elaborado sistema de correspondencias visuales distingue entre varios
formas de líneas de doble barra y / o repetir señales.
Eech de los componentes de la representación de una nota es opcional: un archivo
que sólo contienen duraciones, podrían compilarse
## 3.5.1...pero, no dinamicas
La dinámica está notablemente ausente en \ * \ * kern, y de hecho no
aparecen en cualquiera de los esquemas de representación predefinidos documentados
manual.
* Si se requieren para una tarea específica, el investigador puede
inventar su propio esquema.
## 3.6 Codificación de piezas
Codificar a fondo una pieza de música puede ser un proceso bastante laborioso.
Aunque hay funciones diseñadas para capturar datos desde un controlador MIDI,
a menudo puede ser más sencillo ingresar los datos de \ * \ * kern manualmente una vez que uno esté familiarizado con
el formato de codificación.
Pero con una entrada más compleja, tal como se encuentra en, digamos, un trabajo tardío de piano romántico,
pasará algún tiempo antes de que una computadora pueda analizar correctamente la música en
Hilos significativos adecuados para las espinas de Humdrum
La traducción automatizada de un archivo MIDI estándar en un formato Humdrum
mismos problemas aunque la conversión opuesta, de cualquiera de varios formatos de Humdrum
a un archivo MIDI estándar, es posible e incluso implementado en el kit de herramientas.
## 3.7 Otras representaciones pre-definidas
Si bien aquí no es el lugar para un examen detallado de todos los
predefinidos de Humdrum, un par más servirán como ejemplos adicionales para
\ * \ * Core.
* La representación de la tablatura para los instrumentos fretted, * * * fret, es
particularmente bien desarrollado,
* Puede acomodar instrumentos no estándar y no-occidental.
* La afinación de cada cuerda y la posición exacta de cada traste son
especificadas en interpretaciones en tándem
* La información detallada se codifica en cada registro de datos sobre,
cuáles cuerdas son arrancadas, cómo son arrancadas, y en qué traste.
* El esquema \ * \ * IPA representa fonéticamente los textos vocales a través de un ASCII
alfabeto, e incluye información de la tensión y de la entonación.
\Nota{ null
* El comando"formant"se puede utilizar para generar una columna vertebral con los dos
las frecuencias de formantes más fuertes de cada vocal codificada en la representación \ * \ * IPA.
}
# 4. Comandos Humdrum
## 4.1 Componentes Activos
El componente"activo"de Humdrum es el kit de herramientas para manipular archivos de datos
que se ajustan a la sintaxis Humdrum.
Una vez instalado el Toolkit, los comandos se invocan a través de un terminal UNIX estándar,
y la mayor parte del trabajo de un investigador probablemente dependerá de comandos ordinarios de UNIX
tales como"grep"o"ordenar".
Un mínimo de familiaridad con este sistema operativo es necesario para el aspirante Humdrummer
para embarcarse en un proyecto de investigación, y cuanto más a gusto él o ella está en UNIX
ambiente más pronto Humdrum será dominado.
Hay aproximadamente una docena de comandos UNIX básicos que un usuario debe poder negociar, pero no
introducción a este conocimiento básico dentro de la documentación actual de Humdrum.
## 4.2 Nombres y proposito de algunos comandos basicos
Una mirada a los nombres de la mayoría de los comandos de Humdrum revela muy poco sobre
su finalidad: sólo una pequeña minoría de ellos, como"tran"(transponer),
"Reihe"(dar forma de fila variante),"iv"(determinar vectores de intervalo) y"freq"
(frecuencia de retorno en Hz), tienen cualquier significación musical obvia.
Y, como se señala en el manual de referencia, éstos tienden a ser los comandos menos útiles, ya que
son tan especializados.
La naturaleza de muchos de los comandos básicos tomados individualmente es bastante abstracta.
# 5. Ejemplo de problema
## 5.1 Abordaje de la Sensible Tonal en los Corales de Bach
** ¿En qué proporción son los tonos principales en las melodías corales de Bach acercadas
desde abajo, y en qué proporción desde arriba?
Si no nos ayudan las computadoras, la pregunta no planteará ningún problema
mientras restringimos el número de corales que queremos considerar: para algunos propósitos
bastarán unos cuantos y las notas apropiadas se pueden contar fácilmente a mano.
Pero si queremos considerar un gran número de corales, nuestra tarea será
considerablemente más fácil y proporcionará respuestas más confiables si dejamos que la computadora
hacer el recuento.
Trabajemos a través de los pasos involucrados, asumiendo la existencia de un archivo que contenga

## 5.2 Extracto
En primer lugar, sólo nos interesa la melodía, que está en la parte soprano,
o la cuarta columna del archivo.
Para esto podemos usar el comando Humdrum"extract", que selecciona ciertos datos de
un archivo.
El comando completo sería
```
extracto -p 4 coralesu003e temp1
```
Donde el"-p 4"indica la cuarta columna, y"temp1"es el nombre del
archivo temporal que estamos creando para la columna extraída.
## 5.3 y \ * \ * usted
El archivo original representa las notas por su tono.  Necesitamos escala-grado
información en su lugar, para localizar los tonos principales.
El comando"deg"convertirá un archivo de \ * \ * kern registros de datos en un archivo de
\ * \ * deg, donde cada nota aparece como un número de 1 a 7, representando
su grado de escala.
* El cálculo es relativo a la clave actual, como se especifica en la clave tandem
interpretación en el archivo.
También requerimos información de contorno;  felizmente la representación de \ * \ * grados
incluye un indicador de dirección:
* La letra minúscula v significa"inferior a la nota anterior"
* Y el caret ^ significa"más alto que la nota anterior."
El siguiente paso en nuestro problema de la muestra es así:
```
deg -x temp1u003e temp2
```
## 5.3b usted Salida
Donde el"-x"elimina ciertos datos extraños.  El nuevo archivo, temp2, comenzará
algo como esto:
```
COM: Bach, Johann Sebastian
XEN: J. S. Bach Coro Armonizaciones
OTL: Anímate, mi mente débil
ONM: No.  9
SCT: BWV 454
** usted
! soprano
* Mh / 4 null
*GRAMO: null
1
.
=1
1
.
^2
..etc.
```
## 5.4.1 librar
Este es un archivo bastante desordenado, ya que incluye:
* Comentarios (registros con signos de exclamación).
* Fichas nulas (registros que sólo contienen el signo de puntuación del período).
* Líneas de barras (registros con signos de igualdad principales).
Podríamos invocar el comando"rid"de Humdrum para obtener"deshacerse"de los elementos superfluos
a nuestra investigación, pero no es estrictamente necesario.

## 5.4.2 agarre
Para nuestros propósitos los únicos expedientes que importan son los que contienen el dígito 7,
para el tono principal, y comience con un signo hacia arriba o hacia abajo (^ o v).
Podemos usar el comando UNIX"grep"(Get Regular ExPression) para peinar el archivo
bajo control de una cadena de destino, y emitir sólo aquellas líneas que contengan
menos una ocurrencia de la cadena.
La sintaxis de la cadena de destino sin duda será oscura para aquellos que no están familiarizados con UNIX
expresiones regulares;  dejando a un lado por ahora, el siguiente comando (trabajo
en el archivo generado anteriormente):
```
grep ^ v ^ 7 temp2u003e temp3
```
## 5.4b rid y grep Output
Esto producirá el siguiente archivo, llamado temp3:
```
^7
v7
v7
^7
v7-
..etc.
```
## 5.5 Septima menor y grep '-v'
Observe que algunos registros con un signo menos aparecen en este archivo.  Estas
representan los grados de escala reducidos de la séptima, como pueden ocurrir en una
IV, o en el área mediana de un coral de menor importancia.
Para ignorar estos registros podemos hacer uso de la opción -v de grep, que elimina cualquier
líneas que contienen la cadena de destino y sólo devuelve aquellas líneas sin ella:
```
grep -v - temp3u003e temp4
```
## 5.6 sort y uniq
El archivo original se ha reducido a una serie de registros que
contienen exclusivamente los tonos principales no potenciados junto con la información direccional.
El paso final será comparar la frecuencia de ocurrencia de ^ 7 con la de
v7.  Esto requiere el comando compuesto UNIX estándar |  uniq -c |  ordenar,
que elimina todas las líneas duplicadas de un archivo, registrando el número de
ocurrencias de cada uno, y devuelve el contenido en orden creciente de frecuencia.
El último paso en nuestro problema, entonces, es:
```
ordenar temp4 |  uniq -c |  ordenar
```
## 5.7 Cadena de procesos completa
La secuencia de comandos dada anteriormente generó una cadena de intermedio,
"archivos basura.
Los comandos Humdrum y UNIX generalmente crean nuevos archivos, dejando
aquellos en los que trabajaron intactos.
En su lugar todo el proceso, una vez diseñado y probado en un archivo más corto,
podría ser amalgamado en un"oleoducto"de órdenes, cada uno pasando su resultado a
el siguiente a través de UNIX"pipe"(|):
```
extracto -p 4 corales |  deg -x |  grep ^ v ^ 7 |  \
grep -v - |  ordenar |  uniq -c |  ordenar
```
El resultado final se verá así:
```
15 ^7
22 v7
```
Indicando que, dentro de la muestra de 16 corales, la
líder se aproxima el tono desde arriba aproximadamente el 50% más a menudo que desde abajo.
## 5.8 Combinando comandos, soluciones reproducibles y modificables
Como se puede deducir de lo anterior, la dificultad de
solución asistida por la máquina no radica en comprender el funcionamiento
individuales, sino en idear una manera apropiada de combinarlas.  los
las ventajas de una solución asistida por máquina a este problema son triples.
* Las cantidades extremadamente grandes de música podrían ser procesadas sin
trabajo extra por parte del investigador, y la tarea se mantendría
dentro de un plazo razonable.
* Obtenemos un resultado concreto y objetivo, reproducible
por otros trabajadores con acceso a los mismos datos.
* Si decidimos después que queremos variar la pregunta,
decir, descontando los tonos principales acercados por salto en lugar de paso,
simplemente agregue un par de pasos a nuestro oleoducto de comandos.
# 6. El juego de herramientas
## 6.1 Herramientas especializadas
El manual divide el conjunto de herramientas en categorías de
herramientas básicas.
Las herramientas especializadas sólo funcionan en un subconjunto
representaciones.  Dos que aparecen frecuentemente en análisis analíticos estándar
las aplicaciones derivan intervalos armónicos y melódicos de espinas tipo kern;
éstos son invocados respectivamente por la"indirecta"y la"menta."
las representaciones de la echada se generan de una espina dorsal del kern por las órdenes
"Centavos"(distancia en centésimas de semitono de un punto de referencia),"freq"
(frecuencia en Hz),"semits"(semitonos lejos de un punto de referencia), y
varios otros, que podrían ser útiles dependiendo de la naturaleza de la propia
investigación.  (Personalmente no puedo imaginar una aplicación para el \ * \ * solfg
representación, que codifica el tono como sílabas solfejas francesas, pero
nadie sueña uno hasta Humdrum está preparado.) Hay varios comandos avanzados
que calculan los resultados numéricos de las espinas ya presentes, tales como"espect,"
que reúne el contenido espectral de las sonoridades para tareas acústicas,"synco",
que da una medida de síncopa métrica para cada nota, y"diss", que
implementa la medida de disonancia Kameoka / Kuriyagawa.  Los algoritmos que
realizar los cálculos están bien documentados, donde sea aplicable.
## 6.2 Reproduccion de archivos Humdrum
El comando"perform"reproduce el contenido de un archivo MIDI Humdrum,
convertido de un archivo \ * \ * kern por el comando midi (y además convertible en un
archivo MIDI estándar por el comando smf, para exportar a un secuenciador u otro
programa de aplicación externo). ^ (11) La reproducción se realiza a través de un MIDI externo
sintetizador y tarjeta de control (no incluido!), y permite al usuario
prueba-escuche interactivamente, cambiando el tempo, repitiendo secciones y saltando
hacia delante o hacia atrás hasta el número de barra deseado.
Una característica muy prometedora
desde un punto de vista pedagógico es que"realizar"relés comentarios codificados
junto a la música en la pantalla.  Así, la codificación de una sonata
incluyen etiquetas para las diversas secciones formales o dispositivos armónicos particulares,
que aparecería en la pantalla en el momento apropiado durante la reproducción.
Otra aplicación sería utilizar el comando"patrón"para localizar las filas de tonos
en una pieza de doce tonos y etiquetarlos con un comentario, dejando"realizar"saltar
directamente a cada ocurrencia de la fila y proporcionar comentarios en pantalla sobre
la forma de la fila. (12)
## 6.3 Herramientas básicas
Las herramientas básicas, contrarias a las herramientas especializadas, hacen su
representación.  Muchos de ellos combinan o disocian espinas,
partes de archivos como pasos intermedios en la solución de un problema;  éstas incluyen
"Ensamblar","extraer","rasgar","arrancar"y"cortar"(se utiliza este último comando
en el sentido más antiguo, de"unirse", como en"un hombre se unirá a su esposa", más bien
que su contrario, como en"la roca de los siglos, hendida para mí").  También hay varios
herramientas útiles para las medidas estadísticas y teóricas de la información;  estas
incluyen"correl", que proporciona un coeficiente de correlación entre la
datos numéricos en dos espinas,"simil", que mide la similitud entre dos
espinas basadas en"distancia de edición"tipográfica,"infot", que describe la
flujo de información, y"scramble"que aleatoriza los registros de datos para el control
los propósitos.
Patrón de patrón 6.4
Dos herramientas básicas muy potentes merecen una mención especial:"patt"y
"Patrón", que difieren sólo ligeramente en su funcionamiento.  Cada uno permite
usuario para definir un patrón en una plantilla que debe coincidir con una o
registros de datos en el archivo, no necesariamente contiguos.  Humdrum procederá
exhaustivamente para localizar patrones en la selección codificada que
modelo.  Los patrones pueden ser horizontales (simultáneos), verticales (secuenciales
dentro de una columna), o incluso diagonal (útil para identificar Klangfarbenmelodie
u otros patrones"roscados"), y puede ser definido como explícitamente o como"fuzzily"
según sea necesario.  El investigador puede utilizar otras representaciones que \ * \ * kern en
conjuntamente con estas herramientas, por ejemplo para descubrir la digitación idiomática
patrones de una representación freelance, o progresiones armónicas particulares de
una representación de daño \ * \ *.  Hay un considerable arte involucrado en
definir la plantilla de destino;  lectores familiarizados con la expresión regular UNIX
sintaxis, crucial aquí en la creación de una plantilla, apreciará la
las sutilezas involucradas en el ajuste de una expresión que se busca.  El manual
justamente incluye un tutorial en la sintaxis de expresión regular, y está en su mejor
esta sección muy clara acerca de lo que en otras manos podría fácilmente
han aparecido especialmente crípticos.  Humdrum también proporciona
comprobación de una expresión regular contra un archivo de prueba definible por el usuario,
comando"regexp".
## 6.5 La"demo"incluida en el Kit
El programa de demostración incluido en el Toolkit resuelve diez problemas
pantalla, explicando cada paso a medida que se implementa.  Trabajar a través de los problemas
me encontré con que tenía que referirme a los scripts de shell que contenían los comandos que
realizar las manipulaciones, en lugar de las versiones en pantalla, que
son algo simplificados.  La mitad de los problemas de la muestra incorporan audio
ilustraciones;  incluyen la localización de todas las ocurrencias de"B-A-C-H"en una
Concierto de Brandeburgo y una comparación de la síncopa en George Gershwin y
Stephen Foster.  El manual de referencia ofrece varios otros ejemplos de preguntas
que Humdrum podría ser utilizado para responder;  ellos incluyen: Are crescendos in Wagner
más fuertemente asociado con el aumento de tono que con otros
compositores  En Bartok, las disonancias son más comunes en posiciones métricas fuertes
que en posiciones métricas débiles?  En canciones populares urdu, ¿qué tan común es el llamado
"Arco melódico"- donde las frases tienden a ascender y luego descender en el tono?  Mientras
el software de demostración proporciona cierta ayuda para apreciar cómo pueden
soluciones Humdrum conectadas, y mientras que las soluciones anotadas para
problemas de muestra no pertenecen, estrictamente hablando, en un trabajo de referencia,
los usuarios pueden sentir que necesitan más sugerencias de las que pueden deducir del comando individual
especificaciones sobre cómo responder a estas preguntas. (13)
## 6.6 Representaciones especificas para una tarea"hechas en casa"
El Kit de herramientas y los esquemas de representación no tienen por objeto
requisitos de la contingencia de un investigador, ni podrían serlo.  Creando
Representaciones específicas de tareas"caseras"es un trabajo sencillo, dado
discusión en el manual.  La creación de nuevos comandos, por otro lado, es
probablemente seguirá siendo el dominio de quienes ya están familiarizados con
idioma.  Un esqueleto programa para ayudar en el desarrollo de software se proporciona,
escrito en el lenguaje de programación AWK e incorporando varios
funciones.
# 7. Documentacion
## 7.1 Manual de referencia
El compendioso manual de referencia de Humdrum es un modelo de claridad, integridad
y el diseño lógico, funcionando a 550 páginas incluyendo un índice substancial de algunos
2700 términos.  La"Introducción General"está especialmente bien escrita, y
admirable en su presentación cabecera y paciente de los elementos de
Humdrum-habiéndome probado me doy cuenta de lo difícil que es explicar claramente
lo que Humdrum realmente es y hace.  Cada esquema de comando y representación es
totalmente documentado, en un estilo consistente que tiende a equivocarse en el
redundancia en lugar de tratar de ser excesivamente conciso.  Considerando que los errores tipográficos y
las omisiones tienden a fluir con facilidad en las obras de referencia, aquí hay
pocos.  El número de digitaciones teóricamente posibles para una obra de piano se da
como diez veces el número de pulsaciones de teclas implicadas, en lugar del número de teclas
presiona elevando a la décima potencia (página 514);  dos cadenas tipográficas sin
se dice que los símbolos en común exhiben una distancia de edición mínima, en lugar del máximo
editar-distancia (página 420);  varios comandos (spec, espect, formant y diss)
mencionada de pasada, pero no se le ha entregado la documentación adecuada
representaciones que producen son);  se sugiere que una séptima dominante
acorde en el grado supertónico se etiquetará V7 / ii (página 86);  y los dos
cuentas del significante para notas doblemente bajadas en la representación de \ * \ * deg
son inconsistentes (páginas 59, 264).
# 8. Humdrum ahora y en el futuro
## 8.1 Obtener e instalar el software
El Toolkit se puede descargar actualmente desde el servidor de la Universidad
de Waterloo.  El sitio FTP es, y Humdrum reside en el directorio llamado /
uw-datos.  Aunque el software es gratuito, los usuarios deben licenciar su copia después de diez
días enviando sus estadísticas vitales a David Huron en Waterloo;  esta
información se utiliza para demostrar a las agencias otorgantes que el software es
siendo utilizado.  Se ejecuta en entornos UNIX, DOS, Windows95 u OS / 2, pero el último
tres requieren la presencia de algunas utilidades de UNIX: el lenguaje AWK y un shell
intérprete de comandos antes de que se pueda instalar Humdrum.  En máquinas UNIX, el
realizar, codificar y grabar funciones no se han implementado hasta el momento, y varios
otros comandos deben ser compilados localmente antes de que puedan ejecutarse, tuve dificultad
obteniendo el comando simil para compilar, y finalmente renunció.  Todas las instrucciones
se indican claramente en la Guía de instalación, que se incluye con el
software en formato PostScript, como es el Manual de Referencia.  Una pregunta muy clara
(Frequently Asked Questions) archivo se incluye con el lanzamiento, también;  Hurón
recomienda que los usuarios potenciales lean este documento cuidadosamente antes de decidir
descargue el Toolkit.  Se puede ver en un sitio Web en: http: //
www.lib.virginia.edu/dmmc/Music/Humdrum
## 8.2 Partituras que incluidaidas
Las puntuaciones que acompañan a la versión actual de Humdrum incluyen una selección
de dieciséis corales de Bach, tanto en representaciones de daño como de daño;  los 48
fugas del Clave Bien Temperado;  melodías vocales de Schubert Lieder y
una colección de melodías populares escocesas e inglesas.  Una base de datos temática
Se espera que unos diez mil temas clásicos bien conocidos (solo melodía)
accesible a través de la World Wide Web a principios de año nuevo, y está siendo
considerado como parte del Humdrum Toolkit en un futuro próximo.  Tal
los catálogos temáticos ya existen en los libros, pero la flexibilidad de la búsqueda
que Humdrum ofrece sobrepasa lo posible en el medio impreso.  por
ejemplo, se podría encontrar rápidamente todas las melodías en la base de
cuatro notas tienen duraciones crecientes;  o cuyo alcance es exactamente un sexto menor;
o que están en Eb menor y metro triple.  Esto podría ser muy útil en una música
biblioteca, entre otros contextos.  Un usuario puede desear encontrar la fuente de una melodía
que comenzó con, por ejemplo, tres notas descendentes paso a paso, seguido por hacia arriba
movimiento de una nota y luego una noción a la baja para una nota, el último de estos cinco
siendo las notas más largas que las otras.  Una vez que la cadena de búsqueda
definido, Humdrum podría encontrar cualquier fósforo, y, si hay más de uno,
proporcionar un rendimiento MIDI de cada uno de los candidatos.  O mejor que definir la
la cadena de destino explícitamente, el usuario podría jugar su mejor
la melodía de un controlador MIDI;  Humdrum encontraría las coincidencias más
base de datos y dar la medida numérica de la correlación con lo que se
cada partido.
## 8.3 Guía de Usuario
Huron está a punto de terminar una Guía de Usuarios de Humdrum que"toma
principiantes por la mano, y enseña tanto Humdrum y el Unix pertinente
utilidades". (14) A muchos problemas de la muestra se les darán soluciones anotadas,
llenando una brecha en la documentación de Humdrum tal como está actualmente.  Dominar el
seguirá exigiendo trabajo duro, pero la frustración de aprender a
navegar por el entorno desconocido de UNIX se espera que se reduzca.  Un
forma alternativa de aprender Humdrum es a través de un seminario: Profesor Huron
enseñó un curso de verano de dos semanas sobre el uso del Toolkit en Stanford.
año, ^ (15) y en McGill el verano anterior.
## 8.4 Proselitismo en vano
Todo este proselitismo puede todavía no convencer, dada la renuencia
y la inercia que muchos de nosotros es probable experimentar cuando se enfrentan con tan nuevo y como
vasto recurso como Humdrum.  Do, los desarrolladores de software han vuelto su atención
a las interfaces gráficas de usuario basadas en Humdrum, que pueden resultar más apetecibles
a aquellos que se sienten claustrofóbicos cuando están restringidos a un shell UNIX desnudo.  Dos
Se han desarrollado interfaces gráficas de terceros con Humdrum, en Irlanda y
en Alemania. (16) En el momento de redactar el presente informe, no he podido inspeccionarlos,
aunque Andreas Kornstaedt aparentemente se describe en una publicación reciente.
(17) También está en las obras un tercero traductor de Humdrum a un
basado en la notación, para que los archivos de Humdrum se puedan ver como
impreso en notación tradicional.
## 8.5 Respuestas conretas a preguntas bien formuladas
Humdrum proporciona respuestas concretas a preguntas bien planteadas.  Sorprendente o
respuestas antiintuitivas podrían ser genuinas, o podrían ser el resultado de
una pregunta malformada o una implementación incorrecta de los comandos de Humdrum.  Por lo tanto
cuando se utilizan métodos asistidos por máquinas para probar o refutar una
hipótesis, para documentar sus métodos.  Documentación completa de los procesos de Humdrum
podría convertirse rápidamente en una distracción, tedioso o inviable en un artículo impreso
donde los extremos, y no los medios, constituyen el punto principal.  Sin embargo,
ser un asunto sencillo para colocar los scripts de Humdrum y los resultados codificados en
un sitio de Internet, referido por el artículo, y disponible para los interesados
partes para su recuperación.
# 9. Conclusión
## 9.1 De la experiencia a la apreciación
Apreciación de todo el potencial de Humdrum es definitivamente una práctica
experiencia.  En palabras de David Huron, del manual de referencia:
u003e cualquier conjunto de herramientas requiere el desarrollo de una experiencia concomitante, y
u003e el Humdrum Toolkit no es una excepción.  Espero que la inversión de
u003e el tiempo requerido para aprender a usar Humdrum será más que compensado por el
u003e ganancias académicas posteriores.
Huron ciertamente ha demostrado la última parte de este fragmento a través de su propio
investigación, gran parte de la cual ha dependido de Humdrum.  Su trabajo en la percepción musical
incluye la inclusión en el Toolkit de algunas herramientas especializadas
que en realidad los usuarios de Humdrum hasta ahora han tendido a trabajar en la percepción de la música
o etnomusicología, mientras que los teóricos y los musicólogos históricos han sido lentos
para reconocer el potencial del sistema.  Huron ofrece el siguiente muestreo de
proyectos que conoce que se apoyaron en Humdrum: ^ (18) un estudio de canónica
las reglas de composición de Zarlino, un estudio de la música cortesana coreana, un estudio del texto /
relaciones melódicas en canto gregoriano, un estudio de idiomaticismo en trompeta
trabajos, prueba del modelo de estructura melódica de Narmour, estudio de
textura, de cuartetos de cuerdas Haydn, de fraseo y dinámica en obras de piano, y
en experimentos perceptivos, etc.
## 9.2 CLI vs GUI
Humdrum u otros sistemas como él ofrecen los recursos para una marca nueva
paradigma para la investigación musical.  El tedio de recopilar pruebas sólidas de la propia
las teorías pueden ser grandemente aliviadas por la automatización, y la música más examinada
mayor será el rigor de la prueba de las hipótesis.  Sin embargo, el desafortunado
posibilidad es que muchos de los musicólogos y teóricos actuales que
se benefician de una pequeña intuición asistida por la máquina.
Interfaz totalmente basada en texto de Humdrum.  Aunque en el análisis final
Los comandos estilo UNIX son seguramente más flexibles y eficientes
"Amigable para el usuario", pueden parecer intimidantes para
no programadores, muchos de los cuales pueden ser disuadidos de hacer uso de un
herramienta de otra manera valiosa.  Independientemente de que los teóricos de la música decidan o no aumentar
su invaluable intuición musical con valiosas pruebas empíricas
resultados, basados ​​en las cantidades máximas de datos pertinentes, será un
factor en la evolución de nuestra disciplina.
\Nota{ null

1. Stephen Travis Pope (Editor),"Representación y puntuación de la música (partes 1 y
2),"Computer Music Journal, 17.3, 17.4 (1993).
Volver al texto

2. Los esquemas de representación incluyen dos asteriscos principales en su nombre.  Tándem
Las interpretaciones que se describen a continuación incluyen un asterisco principal.  Es
desafortunado pero esperanzadamente no demasiado confuso que los asteriscos también se utilizan para
llamar la atención a una palabra o frase de texto ASCII, a modo de cursiva.


3. Un esquema llamado \ * \ * dynam aparece en los archivos de demostración que vienen con
El software.
Volver al texto

4."SCORE-to-Humdrum de Andreas Kornstaedt: Un entorno gráfico para
Musicological Analysis,"Computación en Musicología, Vol.  10 (1996): 105-122
describe un programa de traducción del programa de notación ampliamente utilizado SCORE a un
Formato de Humdrum.  Si la traducción resulta confiable, una gran cantidad de
las puntuaciones comercialmente publicadas codificadas en SCORE se convertirán teóricamente en
disponible para su uso con Humdrum.
Volver al texto

5. Vea a continuación sobre una próxima Guía de Usuarios para usuarios principiantes.
Volver al texto

6. Haré la misma renuncia que David Huron hace para su propio Humdrum
problemas de demostración: mi intención es ilustrar el uso del Toolkit, no
proporcionar una solución hermética al problema.
Volver al texto

7. Se incluyen 16 corales (entre otras puntuaciones) con el Humdrum
software.  Deben ser concatenados en un archivo, llamado corales, para esto
solicitud. null
Volver al texto

La suposición por defecto de 8. deg es que el tono principal"elevado"en menor es el
norma;  el séptimo menor"natural"está marcado como una nota alterada cromáticamente.
Volver al texto

9. Para ilustrar, operando en este archivo:
```
orejas
dedos
dedos
dedos
nariz null
ojos
dedos
ojos
orejas
dedos
```
el comando ordenar |  uniq -c |  sort devolvería lo siguiente:
```
1 nariz
2 orejas
2 ojos
5 dedos
```

Volver al texto

10. En mi sistema, la tubería anterior tomó menos de 30 segundos para calcular una
respuesta para dieciséis corales;  todos los 371 corales de Bach tomarían unos cuantos
minutos-todavía insignificante comparado con los varios días que tomaría para compilar
los mismos resultados a mano.
Volver al texto

11. En la actualidad no hay utilidades de entrada y salida MIDI de Humdrum para UNIX
sistemas;  las funciones de ejecución, grabación y codificación están disponibles sólo para DOS o
OS / 2 machines.
Volver al texto

12. Kyle Dawkins ha escrito un reproductor externo para Humdrum (y MIDI estándar
archivos) que proporciona un control gráfico completo de las funciones de reproducción y un campo
para hacer eco de los comentarios incluidos en el archivo;  a partir de ahora se ejecuta en Windows95
solamente.  Kyle da la bienvenida a las preguntas sobre su jugador;  puede ser contactado en.
Volver al texto

13. Véase más adelante sobre una próxima Guía para Usuarios que
remediar esta falta de ayuda.
Volver al texto

14. Comunicación personal.
Volver al texto

15. Vea el sitio web en http://ccrma-www.stanford.edu/CCRMA/Courses/
SummerWorkshops / 96
Volver al texto

16. Comunicación personal de David Huron.
Volver al texto

17. Andreas Kornstaedt,"SCORE-to-Humdrum: Un entorno gráfico para
Musicological Analysis,"Computación en Musicología, Vol.  10 (1996): 105 - 122.
Volver al texto

18. Comunicación personal.
Volver al texto
}
