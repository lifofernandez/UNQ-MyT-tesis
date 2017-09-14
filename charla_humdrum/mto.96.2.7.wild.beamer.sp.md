
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

Incluso el estudio de repertorios acotados es mas flexibe cuando la representación digital y la manipulación automatizada está disponible.

## 1.2 Contexto
El [Centro de Investigación Asistida por Computador en Humananidades](http://www.ccarh.org/) (CCARH) de Standford tiene un proyecto en curso de una base de datos musicales.

De importancia vital para la utilidad de tal tarea es **el formato de
representación musical** dentro de la base de datos.

Como resultado de los éxitos de la musicología asistida por ordenador, la representación musical prolifera, compitiendo hasta el momento que una cierta clase se convierta en estándar.

* Hasta el momento, la mayoría de los esquemas fueron diseñados para ayudar a los compositores de música por computadora. Cuyos requisitos no necesariamente se cruzan con los de los investigadores.

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

* Las columnas despúes de los registros de referencia se denominan espinas; son separados por caracteres de tabulación.

* Los eventos en la misma línea ocurren simultáneamente, mientras que los acontecimientos en la misma espina ocurren secuencialmente.

* El encabezamiento \*\*kern, que es la interpretación exclusiva de cada espina aquí, significa que la información dentro de las columnas es de tono y duración.

* Un archivo puede contener cualquier número de espinas con varias representaciones exclusivas.

* En este ejemplo cada espina representa una voz de un coral de cuatro partes.

* El quinto registro de datos contiene una interpretación en tándem para cada espina que denota la clave del fragmento.

* Otras interpretaciones en tándem dentro de \*\*kern contienen información sobre el metro, tempo, instrumento, etc.

## 3.3 Espinas


Una representación de kern puede ser pensada como una rotación, 90° horario, de la partitura musical. 

* Así, la columna más a la izquierda corresponde a la voz más baja.

* El tiempo corre hacia abajo en lugar de izquierda a derecha.

Espinas adicionales podrían contener

* Cosas bastante directas, como texto vocal ( \*\*text ), análisis armónico romano-numeral ( \*\*harm).

* O información relativamente abstrusa como coordenadas cocleares ( \*\*cocho ), disonancia sensorial ( \*\*diss ), datos espectrales acústicos (\*\*spect ).

Algunas de estas otras representaciones pueden ser generadas como salida por comandos operando en una espina o conjunto de espinas.

* Por Ej, el comando **pcset** añadirá automáticamente una columna etiquetada \*\*pcset con el nombre Fortean del pitch class set, forma prima o vector interválico en simultaneo a cada conjunto de notas.

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

* Los silencios se indican combinando una duración recíproca con la letra "r".

* Los caracteres de punto frecuente son meramente marcadores de posición, "tokens nulos" en un registro de datos con actividad en otra espina.

* Barras aparecen como registros con un signo de igual (=);

	* Un elaborado sistema de correspondencias visuales distingue entre varios formas de líneas de doble barra y/o repetición.

Cada uno de los componentes de la representación de una nota **es opcional: un archivo que sólo contienen duraciones, podrían compilarse.**

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

Las ventajas de una solución asistida por máquina a este problema son triples.

* Las cantidades extremadamente grandes de música podrían ser procesadas sin trabajo extra por parte del investigador, y la tarea se mantendría dentro de un plazo razonable.

* Obtenemos un resultado concreto y objetivo, reproducible por otros trabajadores con acceso a los mismos datos.

* Si decidimos después que queremos variar la pregunta, por decir, contando los tonos principales abordados por salto en lugar de grado conujuto, simplemente agregamos un par de pasos a nuestro conducto de comandos.

# 6. The Toolkit

## 6.1 Herramientas especializadas 
The manual divides the Toolkit into the categories of specialized and
basic tools. 
Specialized tools work only on a particular subset of exclusive
representations. Two that crop up frequently in standard analytical
applications derive harmonic and melodic intervals from \*\*kern-type spines;
these are respectively invoked by “hint” and “mint.” Alternative
representations of pitch are generated from a \*\*kern spine by the commands
“cents” (distance in hundredths of a semitone from a reference point), “freq”
(frequency in Hz), “semits” (semitones away from a reference point), and
several others, which could all be useful depending on the nature of one’s
research. (I personally can’t imagine an application for the \*\*solfg
representation, which encodes pitch as French solfege syllables, but should
anyone dream one up Humdrum is prepared.) There are several advanced commands
that calculate numerical results from spines already present, such as “spect,”
which assembles sonorities’ spectral content for acoustical tasks, “synco,”
which gives a measure of metric syncopation for each note, and “diss,” which
implements the Kameoka/Kuriyagawa measure of dissonance. The algorithms that
perform the calculations are well documented, where applicable.

## 6.2 Reproduccion de archivos Humdrum
The “perform” command plays back the contents of a Humdrum MIDI file,
converted from a \*\*kern file by the midi command (and further convertible to a
standard MIDI file by the smf command, for exporting to a sequencer or other
external application program).^(11) Play-back is via an external MIDI
synthesizer and control card (not included!), and allows the user to
proof-listen interactively, changing the tempo, repeating sections and skipping
forwards or backwards to the desired bar number.
An extremely promising feature
from a pedagogical point of view is that “perform” relays comments encoded
alongside the music onto the screen. Thus the encoding of a sonata could
include labels for the various formal sections or particular harmonic devices,
which would appear on the screen at the appropriate moment during playback.
Another application would be to use the “pattern” command to locate tone rows
in a twelve-tone piece and tag them with a comment, letting “perform” skip
straight to each occurrence of the row and provide on-screen commentary about
the row-form.^(12)

## 6.3 Herramientas básicas 
Basic tools, contrary to specialized tools, do their work on any
representation scheme. Many of them combine or dissociate spines, files or
parts of files as intermediate steps in a problem’s solution; these include
“assemble,” “extract,” “rend,” “yank,” and “cleave” (this last command is used
in the older sense, of “join”, as in “a man shall cleave unto his wife,” rather
than its opposite, as in “rock of ages, cleft for me”). There are also several
tools useful for statistical and information-theoretical measures; these
include “correl,” which provides a coefficient of correlation between the
numeric data in two spines, “simil,” which measures the similarity between two
spines based on typographical “edit distance,” “infot,” which describes the
flow of information, and “scramble” which randomizes data records for control
purposes.

## 6.4 patt y pattern
Two very powerful basic tools deserve special mention: “patt” and
“pattern,” which differ only slightly in their functioning. Each allows the
user to define a pattern in a template that should match one or a sequence of
data records in the file, not necessarily contiguous. Humdrum will proceed
exhaustively to locate patterns in the encoded selection that match the
template. Patterns can be horizontal (simultaneous), vertical (sequential
within one spine), or even diagonal (useful for identifying Klangfarbenmelodie
or other “threaded” patterns), and can be defined as explicitly or as “fuzzily”
as is needed. The researcher can use other representations than \*\*kern in
conjunction with these tools—for example to discover idiomatic fingering
patterns from a \*\*fretrepresentation, or particular harmonic progressions from
a \*\*harm representation. There is a considerable art involved in correctly
defining the target template; readers familiar with UNIX regular expression
syntax, crucial here in the creation of a template, will appreciate the
niceties involved in fine-tuning an expression that is to be sought. The manual
justly includes an tutorial in regular-expression syntax, and is at its best in
this exceedingly clear section dealing with what in other hands could easily
have appeared especially cryptic. Humdrum also provides for interactive
checking of a regular expression against a user-definable test file, via the
command “regexp.”

## 6.5 La "demo" incluida en el Kit
The demonstration program bundled with the Toolkit solves ten problems on
screen, explaining each step as it is implemented. To work through the problems
myself I found I had to refer to the shell scripts containing the commands that
actually perform the manipulations, rather than the onscreen versions, which
are somewhat simplified. Half of the sample problems incorporate audio
illustrations; they include locating all occurrences of “B-A-C-H” in a
Brandenburg Concerto and a comparison of syncopation in George Gershwin and
Stephen Foster. The reference manual gives several other examples of questions
that Humdrum could be used to answer; they include: Are crescendos in Wagner
more strongly associated with rising pitch than is the case with other
composers? In Bartok, are dissonances more common in strong metric positions
than in weak metric positions? In Urdu folk songs, how common is the so-called
“melodic arch”—where phrases tend to ascend and then descend in pitch? While
the demonstration software provides some help in appreciating how problems can
be solved using connected Humdrum tools, and while annotated solutions to
sample problems do not belong, strictly speaking, in a reference work, novice
users may feel they need more hints than they can glean from individual command
specifications as to how these questions might be answered.^(13)

## 6.6 Representaciones especificas para una tarea "echas en casa" 
The Toolkit and representation schemes are not intended to meet the
requirements of a researcher’s every contingency, nor could they be. Creating
“home-made” task-specific representations is a simple job, given some
discussion in the manual. The creation of new commands, on the other hand, is
likely to remain the domain of those already familiar with a programming
language. A skeleton program to aid in software development is provided,
written in the AWK programming language and incorporating several useful
functions.

# 7. Documentacion
## 7.1 Reference Manual
Humdrum’s compendious reference manual is a model of clarity, completeness
and logical design, running to 550 pages including a substantial index of some
2700 terms. The “General Introduction” is especially well written, and
admirable in its level-headed and patient presentation of the elements of
Humdrum—having tried myself I realize how difficult it is to explain clearly
what Humdrum actually is and does. Each command and representation scheme is
fully documented, in a consistent style that tends to err on the side of
redundancy rather than attempt to be overly concise. Whereas typos and
omissions tend to creep in quite easily in reference works, here there are very
few. The number of theoretically possible fingerings for a piano work is given
as ten times the number of key presses involved, instead of the number of key
presses raised to the tenth power (page 514); two typographical strings with no
symbols in common are said to exhibit minimum edit-distance, instead of maximum
edit-distance (page 420); several commands (specc, spect, formant and diss) are
mentioned in passing but not given proper documentation (though the
representations they produce are); it is suggested that a dominant seventh
chord on the supertonic degree be labelled V7/ii (page 86); and the two
accounts of the signifier for doubly-lowered notes in the \*\*deg representation
are inconsistent (pages 59, 264).

# 8. Humdrum Now and in the Future  

## 8.1 Obtener e instalar el software
The Toolkit can currently be downloaded from the server at the University
of Waterloo. The FTP site is , and Humdrum resides in the directory called /
uw-data. Although the software is free, users must license their copy after ten
days by sending their vital statistics to David Huron at Waterloo; this
information is used to demonstrate to granting agencies that the software is
being used. It runs in UNIX, DOS, Windows95 or OS/2 environments, but the last
three require the presence of some UNIX utilities—the AWK language and a shell
command interpreter—before Humdrum can be installed. On UNIX machines the
perform, encode and record functions are not implemented as of yet, and several
other commands must be compiled locally before they can run—I had difficulty
getting the simil command to compile, and eventually gave up. All instructions
are given very clearly in the Installation Guide, which is included with the
software in PostScript format, as is the Reference Manual. A very clear FAQ
(Frequently Asked Questions) file is included with the release, too; Huron
recommends that potential users read this document carefully before deciding to
download the Toolkit. It can be viewed on a World Wide Web site at: http://
www.lib.virginia.edu/dmmc/Music/Humdrum

## 8.2 Partituras que incluidaidas
Scores that accompany the current release of Humdrum include a selection
of sixteen Bach chorales, in both \*\*kern and \*\*harm representations; all 48
fugues from the Well-Tempered Clavier; vocal melodies from Schubert Lieder and
a collection of Scottish and English folk tunes. A \*\*kern thematic database of
some ten thousand well-known classical themes (melody only) is expected to be
accessible via the World Wide Web early in the new year, and is being
considered for release as part of the Humdrum Toolkit in the near future. Such
thematic catalogues exist in books already, but the flexibility of searching
that Humdrum offers far surpasses that possible in the printed medium. For
instance, one could very quickly find all tunes in the database whose first
four notes have increasing durations; or whose range is exactly a minor sixth;
or which are in Eb minor and triple metre. This could be very useful in a music
library, among other contexts. A user might wish to find the source of a tune
that started with, say, three notes descending stepwise, followed by upwards
motion for one note then downwards notion for one note, the last of these five
notes being longer than the others. Once the appropriate search string was
defined, Humdrum could find any matches, and, if there are more than one,
provide a MIDI performance of each of the candidates. Or rather than define the
target string explicitly, the user could play his or her best approximation to
the tune on a MIDI controller; Humdrum would find the closest matches in the
database and give the numerical measure of correlation to what was played for
each match.

## 8.3 Guía de Usuario
Huron is nearing completion of a Users’ Guide to Humdrum that “takes
novice users by the hand, and teaches both Humdrum and the pertinent Unix
utilities.”^(14) Many sample problems will be given annotated solutions,
filling a gap in Humdrum documentation as it currently stands. To master the
system will still require hard work, but the frustration of learning to
navigate the unfamiliar environment of UNIX will hopefully be lessened. An
alternative way of learning Humdrum is through a seminar: Professor Huron
taught a two-week summer course on the use of the Toolkit at Stanford this
year,^(15) and at McGill the previous summer.

## 8.4 Proselitismo en vano 
All this proselytizing may still fail to convince, given the reluctance
and inertia many of us are likely to experience when faced with as new and as
vast a resource as Humdrum. So, software developers have turned their attention
to Humdrum-based graphic user interfaces, which may well prove more appetizing
to those who feel claustrophobic when restricted to a bare UNIX shell. Two
third-party graphic interfaces to Humdrum have been developed, in Ireland and
in Germany.^(16) At the time of writing I have been unable to inspect them,
though Andreas Kornstaedt’s is apparently described in a recent publication.^
(17) Also in the works is a third-party translator from Humdrum to a
notation-based program, so that Humdrum files can be viewed as scores or
printed in traditional notation.

## 8.5 Respuestas conretas a preguntas bien formuladas
Humdrum provides concrete answers to well-posed questions. Surprising or
counterintuitive answers could be genuine, or they could be the result of a
malformed question or incorrect implementation of Humdrum commands. It thus
becomes important, when using machine-aided methods to prove or disprove a
hypothesis, to document one’s methods. Full documentation of Humdrum processes
could quickly become distracting, tedious, or unfeasible in a printed article
where the ends, and not the means, constitute the main point. It would however
be a simple matter to place the relevant Humdrum scripts and encoded scores on
an internet site, referenced by the article, and available to interested
parties for retrieval.

# 9. Conclusión

## 9.1 De la experiencia a la apreciación 

Apreciación de todo el potencial de Humdrum es definitivamente una práctica
experiencia.  En palabras de David Huron, del manual de referencia:

> Cualquier conjunto de herramientas requiere el desarrollo de una experiencia 
> concomitante, y Humdrum Toolkit no es una excepción.  Espero que la inversión de
> el tiempo requerido para aprender a usar Humdrum será más que compensado por 
> ganancias académicas posteriores.

Huron ciertamente ha demostrado la última parte de este fragmento a través de su propio
investigación, gran parte de la cual ha dependido de Humdrum. 

Su trabajo en la percepción musical aportó algunas herramientas especializadas 
del Toolkit para este area, que de echo
los usuarios de Humdrum hasta ahora han tendido a trabajar en la percepción 
de la música o etnomusicología, 
mientras que los teóricos y los musicólogos histioriadores han sido lentos
para reconocer el potencial del sistema. 

Huron ofrece el siguiente muestreo de
proyectos que conoce que se apoyaron en Humdrum: un estudio de canónica
las reglas de composición de Zarlino, un estudio de la música cortesana coreana, un estudio del texto /
relaciones melódicas en canto gregoriano, un estudio de idiomaticismo en trompeta
trabajos, prueba del modelo de estructura melódica de Narmour, estudio de
textura, de cuartetos de cuerdas Haydn, de fraseo y dinámica en obras de piano, y
en experimentos perceptivos, etc.

## 9.2 CLI vs GUI

Humdrum u otros sistemas como él ofrecen los recursos para una marcar un nuevo
paradigma para la investigación musical.  

El tedio de recopilar pruebas sólidas que apoyen las propias
teorías pueden ser aliviadas por la automatización, y cuanto 
mayor sea la cantidad de música examinada 
mayor será el rigor de la prueba de las hipótesis.  

Sin embargo, la desafortunada posibilidad es que muchos de los musicólogos 
y teóricos actuales que se benefician de una pequeña intuición asistida por la máquina.
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
