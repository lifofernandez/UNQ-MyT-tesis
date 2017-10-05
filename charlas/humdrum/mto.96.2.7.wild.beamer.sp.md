
# Universidad Nacional de Quilmes \newline Taller de Tesis 

## Exposición de artículo referente \newline Representaciones de Información Musical

Docente: **Esteban Calcagno** 

Alumno: **Lisandro Fernández**

\bigskip
Septiembre, 2017
   
   
## Reseña sobre "Humdrum Toolkit" \newline Herramientas UNIX para Investigación Musical, creadas por David Huron

**A Review of the Humdrum Toolkit: UNIX Tools for Musical Research, created by David Huron**

**Jonathan Wild**
\note{
    McGill University
    Faculty of Music, Dept. of Theory
    555 Sherbrooke West
    Montreal, Quebec, H3A 1A3
    jon@music.mcgill.ca
}

\bigskip
Music Theory Online, Volume 2, Number 7, November 1996

*Copyright © 1996 Society for Music Theory*                                                                                                                  
\bigskip


\note{
    **Abstract:**
    David Huron’s Humdrum Toolkit is a set of software tools created for
    computer-assisted musical research. This review describes and evaluates the
    Toolkit and the music representation schemes that support it.
}

**Resumen:**
Humdurm Toolkit de David Huron es un conjunto de herramientas de software
creadas para la investigación musical asistida por computadoras. Esta reseña
describe y evalua el Toolkit y el esquema representacion musical 
que lo apoya.

# 1. Introducción
## 1.1 Justificación

Las variedad en las intenciones de la teoría musical es vasta.

* En un extremo del espectro está el análisis de la técnica dentro de una 
pieza en especifica.

* En el otro, los intentos de responder preguntas generales sobre como funciona 
la musica.

Como los objetivos de un investigador tienden hacia total de un continuo,
él o ella debe explorar un repertorio cada vez más grande.

* Acrecetado por el nivel de intimidad en detalles musicales, un gran cuerpo 
de música puede exceder rápidamente la capacidad de una vida académica.

A servicio de esto, es indispensable la acumulación y el mantenimiento de una 
gran base de datos informática de música.

\note{
	Incluso el estudio de repertorios acotados es mas flexibe cuando la representación digital y la manipulación automatizada está disponible.
}

## 1.2 Contexto
El [Centro de Investigación Asistida por Computador en Humananidades](http://www.ccarh.org/) (CCARH) de Standford tiene un proyecto en curso de una base de datos musicales.

De importancia vital para la utilidad de tal tarea es **el formato de
representación musical** dentro de la base de datos.

Como resultado de los éxitos de la musicología asistida por ordenador, la representación musical prolifera, compitiendo hasta el momento que una cierta clase se convierta en estándar.

* La mayoría fueron diseñados para ayudar a los compositores de música por computadora. Cuyos requisitos no necesariamente se cruzan con los de los investigadores.

En la base de datos del CCARH, se utilizan simultáneamente varios formatos para codificar música.

* El más prometedor entre los esquemas es la representación Humdrum,
diseñado por David Huron.

# 2. Humdrum \newline Dos aspectos, Representación y Manipulación
## 2.1 La Sistaxis 

En primer lugar, está la sintaxis definida para representar información discreta como una serie de registros en un archivo de computadora.

* Su definición permite que se codifiquen muchos tipos de información.

* El esquema esencial utilizado en la base de datos CCARH para la altura y la duración musical es sólo **uno de un conjunto abierto**.  

	* Algunos otros miembros **pueden ser aumentados por esquemas definidos por el usuario** para tareas de investigación.  

## 2.2 El Conjunto Comandos

Segundo, está el conjunto de comandos, el Humdrum Toolkit, diseñado para manipular archivos que se ajusten a la sintaxis Humdrum, en el nombre de la investigación asistida por ordenador en la música.

El énfasis aquí debe ser en "asistido":

* Humdrum no posee facultades analíticas de nivel superior per se.

* Más bien, su poder deriva de la flexibilidad de su kit de **aplicaciones
elementales**, que el usuario debe aprender a utilizar **en combinación**
para explotar plenamente el potencial del sistema.

# 3. Representaciones Humdrum 
## 3.1 \*\*kern: Representación esencial de altura/duracion

Inspeccionemos las convenciones de una representación particular de Humdrum, por medios de un fragmento musical.

El ejemplo 1 contiene las dos primeras fases del coral de Bach "Nun danket alle Gott" en el esquema de representación de altura / duration de Humdrum, \*\*kern.

* Las tres primeras líneas, cada una marcada por un triple signo de exclamación, son referencia registros, cada uno de cuyos significados deberían ser fácilmente evidentes.

	* Humdrum especifica más de 80 tipos de registros de referencia para las puntuaciones electrónicas, proporcionando información tan diversa como el número de catálogo, el nombre del dedicado, manuscrito o título traducido en más de cuarenta idiomas.


## Ejemplo 1

```
!!!COM: Bach, Johann Sebastian
!!!OTL: Nun danket alle Gott
!!!ENC: Wild, Jon
**kern 	**kern 	**kern 	**kern
*A:     *A:     *A:     *A:
4AA     4c#     4a      4ee
=1      =1      =1      =1
8A      4c#     4a      4ee
8B      .       .       .
8c#     4c#     4a      4ee
8A      .       .       .
8D      4d      4a      4ff#
8E      .       .       .
8F#     4d      4a      4ff#
8D      .       .       .
```

## 3.2 Registros/Archivos Humdrum

Un archivo de Humdrum se compone de una serie de registros, cada uno ocupando una línea.

* Las columnas que siguen a las referencia se denominan espinas; son separados por caracteres de tabulación.

* Los eventos en la misma línea ocurren **simultáneamente**, los acontecimientos en la misma espina ocurren **secuencialmente**.

* El encabezamiento \*\*kern, significa que la información dentro de las columnas es de tono y duración.

* Un archivo puede contener cualquier número de espinas con varias representaciones exclusivas.

* En este ejemplo cada espina representa una voz de un coral de cuatro partes.

* El quinto registro contiene la clave.

* Otras interpretaciones dentro de \*\*kern contienen información sobre el metro, tempo, instrumento, etc.

## 3.3 Espinas


Una representación de kern puede ser pensada como una rotación, 90° horario, de la partitura musical. 

* Así, la columna izq. corresponde a la voz más baja.

* El tiempo corre hacia abajo en lugar de izquierda a derecha.

Espinas adicionales podrían contener

* Cosas bastante directas, como texto vocal (\*\*text), análisis armónico romano-numeral (\*\*harm).

* O información relativamente abstrusa como coordenadas cocleares (\*\*cocho), disonancia sensorial (\*\*diss), datos espectrales acústicos (\*\*spect).

Otras representaciones pueden ser generadas por comandos.

* Por Ej, el comando **pcset** añadirá automáticamente una columna \*\*pcset con el nombre Fortean del PCS, forma prima o vector interválico.

## 3.4 Duración 

Cada nota codificada en el ejemplo 1 tiene al menos dos partes, correspondiendo respectivamente a la duración de la nota y el tono:

* Un número entero y, una o más letras mayúsculas o minúsculas.

El entero representa la duración a través del valor de nota norteamericano recíproco;

* Por ejemplo, una negra esta representada por un "4" y una corchea por un "16"

* Una breve (longitud de dos notas enteras) toma el valor especial 0.

* Los tresillos de corchea se asignarían cada uno al número entero 12, ya que cada uno de ellos abarcan un tercio de una negra, lógicamente son doce notas.


## 3.4.1 Duraciones complejas 

Esta convención puede parecer inicialmente opaca, pero maneja sucintamente y consistentemente para expresar casi todas las duraciones.

* Las excepciones que vienen a la mente incluyen como obstáculo subdivisiones de una breve, como tripletes de redonda (tres a una breve), y tales atrocidades ferneyhoughianas como "cuatro en el tiempo de tres notas de un quintllo", que requieren el uso de lazos superfluos y/o puntos.

## 3.5 Alturas, articulaciones, barras... 

* Las letras mayúsculas o minúsculas indican la clase de tono y la octava de una nota.

* También se proporcionan alteraciones cromáticas.

* Al igual que un gran número de marcas de articulación, ornamentos, editorialismos, plecas y conectores.

* Los silencios se indican con la letra "r".

* Los caracteres de punto frecuente son meramente marcadores de posición, "tokens nulos" en un registro de datos con actividad en otra espina.

* Barras aparecen como registros con un signo de igual (=);

	* Un sistema de correspondencias visuales distingue entre formas de líneas de doble barra y/o repetición.

Los componentes de la representación de nota **son opcionales: un archivo que sólo contienen duraciones, podrían compilarse.**

## 3.5.1 ...pero, no dinamicas 

La dinámica está notablemente ausente en \*\*kern, y de hecho no
aparecen en ninguno de los esquemas de representación predefinidos documentados en el manual.

* Si se requieren para una tarea específica, el investigador puede inventar su propio esquema.

## 3.6 Codificación de piezas

Codificar a fondo una pieza de música puede ser un proceso bastante laborioso.

Aunque hay funciones diseñadas para capturar datos desde un controlador MIDI, a menudo puede ser más sencillo ingresar los datos de \*\*kern manualmente una vez que uno esté familiarizado con el formato de codificación.

Pero con una entrada más compleja, tal como se encuentra en, digamos, un trabajo tardío de piano romántico, pasará algún tiempo antes de que una computadora pueda analizar correctamente la música en hilos significativos adecuados para las espinas de Humdrum

La traducción automatizada de un archivo MIDI estándar en un formato Humdrum conlleva los mismos problemas aunque la conversión opuesta, de cualquiera de varios formatos de Humdrum a un archivo MIDI estándar, es posible e incluso implementado en el kit de herramientas.

## 3.7 Otras representaciones pre-definidas

Si bien aquí no es el lugar para un examen detallado de todos los predefinidos de Humdrum, un par más servirán como ejemplos adicionales para \*\*kern.  

* La representación de la tablatura \*\* fret,está particularmente bien desarrollado

	* Puede soportar instrumentos no convencionales y no occidental.

	* La afinación de cada cuerda y la posición exacta de cada traste son especificadas en interpretaciones en tándem

	* Información detallada se codifica en cada registro de datos sobre, cuáles cuerdas son pulsadas, cómo son pulsadas y en qué traste.

* El esquema \*\*IPA representa fonéticamente los textos vocales a través de un alfabeto ASCII, e incluye información de la tensión y de la entonación.

# 4. Humdrum Commands 
## 4.1 Componentes Activos 

El componente "activo" de Humdrum es el kit de herramientas para manipular archivos de datos que se ajustan a la sintaxis Humdrum.

Una vez instalado el Toolkit, los comandos se invocan a través de un terminal UNIX estándar, y la mayor parte del trabajo de un investigador probablemente dependerá de **comandos ordinarios de UNIX tales como "grep" o "sort"**.

Un mínimo de familiaridad con este sistema operativo es necesario para el aspirante Humdrummer para embarcarse en un proyecto de investigación, y cuanto más a gusto él o ella está en el ambiente UNIX más pronto Humdrum será dominado.

Hay aproximadamente una docena de comandos UNIX básicos que un usuario debe poder negociar, pero no exixte introducción a este conocimiento elemental dentro de la documentación actual de Humdrum.

## 4.2 Nombres y proposito de algunos comandos basicos

Una mirada a los nombres de la mayoría de los comandos de Humdrum revela muy poco sobre su finalidad: sólo una pequeña minoría de ellos, como "tran"  transponer), "reihe" (dar forma alternativa de fila), "iv" (determinar vectores de intervalo) y "freq" (frecuencia en Hz), tienen una significación musical obvia.

Y, como se señala en el manual de referencia, éstos tienden a ser los comandos menos útiles, ya que son especializados.

La naturaleza de muchos de los comandos básicos tomados individualmente es bastante abstracta.

# 5. Sample Problem
## 5.1 Abordaje de la Sensible Tonal en los Corales de Bach

**¿En qué proporción son las sensibles tonales en las melodías corales de Bach abordadas desde abajo, y en qué proporción desde arriba?**

Sin la ayuda de las computadoras, la pregunta no planteará ningún problema mientras restringimos el número de corales que queremos considerar: para algunos propósitos bastarán unos cuantos y las notas apropiadas se pueden contar fácilmente a mano.

Pero si queremos considerar un gran número de corales, nuestra tarea será considerablemente más fácil y proporcionará respuestas más confiables si dejamos que la computadora haga el recuento.

Trabajemos a través de los pasos involucrados, asumiendo la existencia de un archivo que contenga varios corales de Bach.

## 5.2 extract 

En primer lugar, sólo nos interesa la melodía, que está en la parte soprano, o la cuarta columna del archivo.

Para esto podemos usar el comando Humdrum "extract", que selecciona ciertos datos de un archivo.

El comando completo sería:

```
extract -p 4 chorales > temp1
```
Donde el "-p 4" indica la cuarta columna, y "temp1" es el nombre del archivo temporal que estamos creando para la columna extraída.


## 5.3 deg y \*\*deg

El archivo original representa las notas por su tono. Necesitamos los grados de la escla en su lugar, para localizar los tonos principales.

El comando "deg" convertirá un archivo de \*\*kern en un archivo \*\*deg, donde cada nota aparece como un número de 1 a 7, representando su grado de escala.

* El cálculo es relativo a la clave actua. 

También requerimos información de contorno; felizmente la representación \*\*deg incluye un indicador de dirección:

* La letra minúscula v significa "inferior a la nota anterior".

* Y el caret ^ significa "más alto que la nota anterior."

El siguiente paso en nuestro problema de la muestra es así:

```
deg -x temp1 > temp2
```
Donde "-x" elimina ciertos datos extraños.  

## 5.3b deg Output


El nuevo archivo, temp2, comenzará

```
!!!COM: Bach, Johann Sebastian
!!!XEN: J. S. Bach Chorale Harmonizations
!!!OTL: Ermuntre dich, mein schwacher Geist
!!!ONM: No. 9
!!!SCT: BWV 454
**deg
! soprano
*M4/4
*G:
1
.

=1
1
.

^2

..etc.
```

## 5.4.1 rid  

Este es un archivo bastante desordenado, ya que incluye:
* Comentarios (registros con signos de exclamación).
* Fichas nulas (registros que sólo contienen puntos).
* Líneas de barras (registros con signos de igualdad).

Podríamos invocar el comando "rid" de Humdrum para "deshacernos" de los elementos superfluos a nuestra investigación, pero no es estrictamente necesario.

## 5.4.2 grep  

Para nuestros propósitos los únicos registros que importan son los que contienen el dígito 7, para sensible tonal, y comience con un signo hacia arriba o hacia abajo (^ o v).

Podemos usar el comando UNIX "grep" (Get Regular ExPression) para filtrar el archivo con el control de una cadena de destino, y emitir sólo aquellas líneas que contengan al menos una ocurrencia de la cadena.

La sintaxis de la cadena de destino sin duda será oscura para aquellos que no están familiarizados con las expresiones regulares en UNIX;  dejando esto a un lado por ahora, el siguiente comando (trabajo en el archivo generado anteriormente) sería:

```
grep ^v^7 temp2 > temp3
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

Observe que algunos registros con un signo menos aparecen en este archivo. Estas representan los séptimos grados de escala menorizado.

Para ignorar estos registros podemos hacer uso de la opción -v de grep, que elimina cualquier líneas que contienen la cadena de destino y sólo devuelve aquellas líneas sin ella:

```
grep -v - temp3 > temp4
```

## 5.6 sort y uniq

El archivo original se ha reducido a una serie de registros que contienen exclusivamente las sensibles junto con la información direccional.  

El paso final será comparar la frecuencia de ocurrencia de ^7 con la de v7.

Esto requiere el comando estandar compuiesto UNIX "sort | uniq -c | sort, que elimina todas las líneas duplicadas de un archivo, registrando el número de ocurrencias de cada uno, y devuelve el contenido en orden creciente de frecuencia.

El último paso en nuestro problema, entonces, es:

```
sort temp4 | uniq -c | sort
```

## 5.7 Cadena de procesos completa 

La secuencia de comandos dada anteriormente generó una cadena intermediia de  "archivos basura.

Los comandos Humdrum y UNIX generalmente crean nuevos archivos, dejando
aquellos en los que trabajaron intactos.

En su lugar todo el proceso, una vez diseñado y probado en un archivo más corto, podría ser amalgamado en un "conducto" (pipeline) de órdenes, cada uno pasando su resultado a el siguiente a través de "pipa" UNIX (representado por el simbolo pleca "|"):


```
extract -p 4 chorales | deg -x | grep ^v^7 | \
grep -v - | sort | uniq -c | sort
```

El resultado final se verá así:

```
15 ^7
22 v7
```

Indicando que, dentro de la muestra de 16 corales, la sensible se aproxima el tono desde arriba aproximadamente el 50% más a menudo que desde abajo.

## 5.8 Combinando comandos, soluciones reproducibles y modificables

Como se puede deducir de lo anterior, la dificultad de solución asistida por la máquina no radica en comprender el funcionamiento individuales, sino en idear una manera apropiada de combinarlas. 

Las ventajas de una solución asistida por máquina son:

* Las cantidades extremadamente grandes de música podrían ser procesadas sin trabajo extra por parte del investigador, y la tarea se mantendría dentro de un plazo razonable.

* Obtenemos un resultado concreto y objetivo, reproducible por otros trabajadores con acceso a los mismos datos.

* Si decidimos variar la pregunta, por decir, contar las semsibles abordadas por salto, simplemente agregamos un par de pasos a nuestra cadena de comandos.


# 6. Conclusión

## 6.1 De la experiencia a la apreciación 

Apreciación de todo el potencial de Humdrum es definitivamente a partir de la 
experiencia. En palabras de David Huron:

> Cualquier conjunto de herramientas requiere el desarrollo de una experiencia 
> concomitante, y Humdrum Toolkit no es una excepción.  Espero que la inversión de
> el tiempo requerido para aprender a usar Humdrum será más que compensado por 
> ganancias académicas posteriores.

Los usuarios de Humdrum hasta ahora han tendido a trabajar en la percepción 
de la música o etnomusicología, mientras que los teóricos y los musicólogos histioriadores han sido lentos
para reconocer el potencial del sistema. 


## 6.2 CLI vs GUI

Humdrum u otros sistemas como él ofrecen los recursos para una marcar un nuevo
paradigma para la investigación musical.  

El tedio de recopilar pruebas sólidas que apoyen las propias
teorías pueden ser aliviadas por la automatización, y cuanto 
mayor sea la cantidad de música examinada 
mayor será el rigor de la prueba de las hipótesis.  

Sin embargo, la desafortunada posibilidad es que muchos de los musicólogos 
y teóricos actuales que se benefician de una pequeña intuición asistida por la máquina
es probalbe que sean repelidos por la interfaz totalmente basada en texto de Humdrum.  

Aunque en el análisis final los comandos estilo UNIX son seguramente más flexibles y eficientes que 
una interfaz grafica "amigable", pueden parecer intimidantes para no programadores, muchos de los cuales pueden ser disuadidos de hacer uso de un herramienta de otra manera valiosa.

Independientemente de que los teóricos de la música decidan o no aumentar
su invaluable intuición musical con valiosas pruebas empíricas
resultados, basados en las cantidades máximas de datos pertinentes, será un
factor en la evolución de nuestra disciplina.




\note{
    
    1. Stephen Travis Pope (Editor), “Music Representation and Scoring (parts 1 and
    2),” Computer Music Journal, 17.3, 17.4 (1993).
    Return to text
    
    2. Representation schemes include two leading asterisks in their name. Tandem
    interpretations, discussed below, include one leading asterisk. It is
    unfortunate but hopefully not too confusing that asterisks are also used to
    draw attention to a word or phrase of ASCII text, in the manner of italics.
    Return to text
    
    3. A scheme called \*\*dynam appears in the demonstration files that come with
    the software.
    Return to text
    
    4. Andreas Kornstaedt’s “SCORE-to-Humdrum: A Graphical Environment for
    Musicological Analysis,” Computing in Musicology, Vol. 10 (1996): 105–122
    describes a translator program from the widely used notation program SCORE to a
    Humdrum format. Should the translation prove reliable a large quantity of
    commercially published scores encoded in SCORE will theoretically become
    available for use with Humdrum.
    Return to text
    
    5. See below regarding a forthcoming Users’ Guide for novice users.
    Return to text
    
    6. I shall make the same disclaimer that David Huron makes for his own Humdrum
    demonstration problems: my intent is to illustrate the use of the Toolkit, not
    provide an air-tight solution to the problem.
    Return to text
    
    7. Sixteen chorales (among other scores) are included with the Humdrum
    software. They should be concatenated into one file, called chorales, for this
    application.
    Return to text
    
    8. deg’s default assumption is that the “raised” leading-tone in minor is the
    norm; the “natural” minor seventh is tagged as a chromatically altered note.
    Return to text
    
    9. To illustrate, operating on this file:
    ```
    ears
    fingers
    fingers
    fingers
    nose
    eyes
    fingers
    eyes
    ears
    fingers
    ```
    the command sort | uniq -c | sort would return the following:
    ```
    1 nose
    2 ears
    2 eyes
    5 fingers
    ```
    
    Return to text
    
    10. On my system, the above pipeline took less than 30 seconds to compute an
    answer for sixteen chorales; all of Bach’s 371 chorales would take a few
    minutes—still negligible compared to the several days it would take to compile
    the same results by hand.
    Return to text
    
    11. There are at present no Humdrum MIDI input and output utilities for UNIX
    systems; the perform, record and encode features are available only for DOS or
    OS/2 machines.
    Return to text
    
    12. Kyle Dawkins has written an external player for Humdrum (and standard MIDI
    files) that provides full graphical control of playback features and a field
    for echoing comments embedded in the file; as of now it runs under Windows95
    only. Kyle welcomes inquiries about his player; he can be contacted at .
    Return to text
    
    13. See below regarding a forthcoming comprehensive Users’ Guide that will
    remedy this lack of help.
    Return to text
    
    14. Personal communication.
    Return to text
    
    15. See the website at http://ccrma-www.stanford.edu/CCRMA/Courses/
    SummerWorkshops/96
    Return to text
    
    16. Personal communication from David Huron.
    Return to text
    
    17. Andreas Kornstaedt, “SCORE-to-Humdrum: A Graphical Environment for
    Musicological Analysis,” Computing in Musicology, Vol. 10 (1996): 105–122.
    Return to text
    
    18. Personal communication.
    Return to text
}
