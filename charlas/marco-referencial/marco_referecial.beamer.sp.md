
## Universidad Nacional de Quilmes \newline Taller de Tesis 

\bigskip

Docente: **Esteban Calcagno** 

Alumno: **Lisandro Fernández**

   
   
\newpage
## Introducción

```{.dot caption="example graph." label="the_example"}

graph graphname {
     a [texlbl="$\alpha$"];
     b [texlbl="$\beta$"];
     b1 [texlbl="$\beta_1$"];
     b2 [texlbl="$\beta_2$"];
     a -- b
     b -- b1
     b -- b2
 }
```

Representación y manipulación de información musical:

* MuseData

* Humdrum 

* MusicXML

* MML 

Marcos de programación basada en Sintaxis Declarativa:

* Flocking.


\newpage
# 1. MuseData

* Universidad de Stanford
	* Centro de Investigación Asistida por Computador en Humanidades (CCARH). 
		* Creado por Walter Hewlett. 

* Base de datos MuseData [^ver_selfridge] 

	* Estructura y a la vez el sistema de codificación

* Archivos => múltiples formatos.

* El archivo MuseData está diseñado para soportar aplicaciones de
sonido, gráficos y análisis.


[^ver_selfridge]: @selfridge

\newpage
## 1.1 Organización de archivos MuseData 

Los archivos MuseData 

* basados en ASCII => cualquier editor de texto. 

* Organizados en base a las partes. 

* El número de archivos y el formato puede variar por movimiento y por trabajo 

* Archivos para los diferentes movimientos de una composición se encuentran en directorios separados  

* Un movimiento de una composición es típicamente encontrado 

	* Rótulo: número de movimiento, p. 01, 02, etc.

	* Dividido en varios archivos, agrupados en ese directorio para ese movimiento.

	* Las partes de los archivos 
	
		* Etiqueta 01 para la primera parte, 02 para la 2da parte de la partitura, etc. 



\newpage
## 1.2 La representación MuseData de información musical

El propósito de la sintaxis MuseData es representar el contenido lógico de una
pieza musical de una modo neutral. El código se utiliza actualmente en la
construcción de bases de datos de texto completo de música de varios
compositores, J.S. Bach, Beethoven, Corelli, Handel, Haydn, Mozart, Telemann y
Vivaldi. Se pretende que estas bases de datos de texto completo se utilicen
para la impresión de música, análisis musical y producción de archivos de sonido 
digitales.

Aunque el código MuseData está destinado a ser genérico, se han desarrollado
piezas de software de diversos tipos con el fin de probar su eficacia. Las
aplicaciones MuseData pueden imprimir resultados y partes para ser utilizadas
por editores profesionales de música, así como también compilar archivos MIDI
(que se pueden utilizar con secuenciadores estándar) y facilitar las búsquedas
rápidas de los datos de patrones rítmicos, melódicos y armónicos específicos.

La sintaxis MuseData está diseñada para representar tanto información de
notación como de sonido, pero en ambos casos no se pretende que la
representación esté completa. Eso prevé que los registros MuseData servirían
como archivos de origen para generar tanto documentos gráficos (específicamente
de página) y archivos de performance MIDI, que podrían editarse como el usuario
lo crea conveniente. Las razones de esta postura son dos:

* Cuando se codifica una obra musical, no es la partitura sino el contenido
  lógico de la partitura lo que codifica. Codificar la puntuación significaría
codificar la posición exacta de cada nota en la página; pero nuestra opinión es
que tal codificación realmente contendría más información que la que el
compositor pretende transmitir.

* No se puede anticipar todos los usos a los cuales podrían darse estos datos,
  pero se pude estar bastante seguro de que cada usuario tendrá sus propias
necesidades especiales y preferencias. Por lo tanto, no tiene sentido tratar de
codificar información acerca de cómo debe verse una realización gráfica de los
datos o cómo sonido que estos datos representan debe sonar.

Por otro lado, a veces puede ser útil hacer sugerencias sobre cómo los gráficos
y el sonido deben ser realizados. Lo importante es identificar las sugerencias
como un tipo de datos independiente, que puede ser fácilmente ignorado por
software de aplicación o despojado enteramente de los datos. MuseData software
usa estas sugerencias de impresión y sonido en el proceso de generación de
documentos de partitura y archivos MIDI.

\newpage
## 1.3.1 Ejemplo

```
04/16/93 E. Correia
WK#:581       MV#:3c
Breitkopf & H\3artel, Vol. 13
Clarinet Quintet
Trio II
Violoncello
1 0 
Group memberships: sound, score
sound: part 5 of 5
score: part 5 of 5
$  K:3   Q:2   T:3/4   C:22
rest   2        q
measure 1
A3     2        q     d        p
rest   2        q
rest   2        q
measure 10
rest   6
measure 11
E2     2        q     u        (.
E2     2        q     u         .
E2     2        q     u        ).
measure 12
A2     2        q     u
rest   2        q
mheavy4         :||:
/END
```

\newpage
# 2. Humdrum

David Huron creó Humdrum[^ver_wild] en los años 80, y se ha utilizado
constantemente por décadas. Humdrum es un conjunto de herramientas de línea de
comandos que facilita el análisis, así como una sintaxis generalizada para
representar secuencias de datos. Debido a que es un conjunto de herramientas de
línea de comandos, es el lenguaje de programa agnóstico. Muchos han empleado
herramientas de Humdrum en secuencias de comandos más grandes que utilizan
PERL, Ruby, Python, Bash, LISP y C++.

[^ver_wild]: @wild

\newpage
## 2.1 Representación 

En primer lugar, Humdrum define una sintaxis para representar información
discreta como una serie de registros en un archivo de computadora.

* Su definición permite que se codifiquen muchos tipos de información.

* El esquema esencial utilizado en la base de datos CCARH para la altura y la
  duración musical es sólo uno de un conjunto abierto.

* Algunos otros esquemas pueden ser aumentados por gramáticas definidas por el
  usuario para tareas de investigación.

\newpage
## 2.2 Manipulación

Segundo, está el conjunto de comandos, el Humdrum Toolkit, diseñado para
manipular archivos que se ajusten a la sintaxis Humdrum en el campo de la
investigación asistida por ordenador en la música.

El énfasis está en **asistido**:

* Humdrum no posee facultades analíticas de nivel superior per se.

* Más bien, su poder deriva de la flexibilidad de su kit de elementos, que el
  usuario debe aprender a utilizar en combinación para explotar plenamente el
potencial del sistema.


\newpage
# 3. MusicXML

MusicXML [^ver_good] fue diseñado desde cero para compartir archivos de música
entre aplicaciones y para archivar registros de música para uso en el futuro.
Se puede contar con archivos de MusicXML que son legibles y utilizables por una
amplia gama de notaciones musicales, ahora y en el futuro. MusicXML complementa
al los formatos de archivo utilizados por Finale y otros programas.

MusicXML se pretende un el estándar para compartir partituras interactivas,
dado que facilita crear música en un programa y exportar sus resultados a otros
programas. Al momento más de 220 aplicaciones incluyen compatibilidad con
MusicXML.

[^ver_good]: @good


\newpage
# 4. Music Markup Language 

El Lenguaje de Marcado de Música (MML)[^ver_mml] es un intento de marcar
objetos y eventos de música con un lenguaje basado en XML. La marcación de
estos objetos debería permitir gestionar la música documentos para diversos
fines, desde la teoría musical y la notación hasta rendimiento práctico. Este
proyecto no está completo y está en progreso. El primer borrador de una posible
DTD está disponible y se ofrecen algunos ejemplos de piezas de música marcadas
con MML.

El enfoque es modular. Muchos módulos aún están incompletos y necesitan más
investigación y atención.

Si una pieza musical está serializada usando MML puede ser entregada en al
menos los siguientes formatos: 

* Texto: representación de notas como, por ejemplo, piano-roll (como el que se
  encuentra en el software del secuenciador de computadora)

* Common Western Notation: Notación musical occidental en pantalla o en papel

* MIDI-device: MML hace posible "secuenciar" una pieza de música sin tener que
  usar software especial. Así que cualquier persona con un editor de texto debe
ser capaz de secuenciar la música de esta manera.

[^ver_mml]: @mml


\newpage
# 5. Flocking 

Flocking[^ver_colin] es un framework, escrito en JavaScript, para la
composición de música por computadora que aprovecha las tecnologías e ideas
existentes para crear un sistema robusto, flexible y expresivo.  Flocking
combina el patrón generador de unidades de muchos idiomas de música de
computadora con tecnologías Web Audio para permitir a los usuarios interactuar
con sitios Web existentes y potenciales tecnologías.  Los usuarios interactúan
con Flocking usando un estilo declarativo de programación.

El objetivo de Flocking es permitir el crecimiento de un ecosistema de
herramientas que puedan analizar y entender fácilmente la lógica y la semántica
de los instrumentos digitales representando de forma declarativa los pilares
básicos de síntesis de audio.  Esto es particularmente útil para soportar la
composición generativa (donde los programas generan nuevos instrumentos y
puntajes de forma algorítmica), herramientas gráficas (para que programadores y
no programadores colaboren), y nuevos modos de programación social que permiten
a los músicos adaptar, ampliar y volver a trabajar fácilmente en instrumentos
existentes.

[^ver_colin]: @colin

\newpage
## 5.1 Como funciona Flocking

El núcleo del framework Flocking consiste en varios componentes interconectados
que proporcionan la capacidad esencial de interpretar e instanciar
generadores de unidades, producir flujos de muestras y programar procesos. Los
principales componentes de Flocking incluyen:

1. el *Intérprete Flocking*, que analiza e instancia sintetizadores, generadores
   de unidad y búferes

2. el *Ecosistema*, que representa el audio general y su configuración

3. *Audio Strategies*, que son las salidas de audio conectables (vinculados a
   los backends como la API de audio web o ALSA en Node.js)

4. *Unit Generators* (ugens), que son funciones primitivas generadoras de
   las muestras utilizadas para producir sonido

5. *Synths* (sintetizadores)  que representan instrumentos y colecciones en la
   lógica de generación de señales

6. el *Scheduler* (programador ó secuenciador), que gestiona el cambio secunecial (basado en el tiempo)
   eventos en un sintetizador

\newpage
## 5.2 Programación declarativa

Arriba, describimos Flocking como un marco **declarativo**. Esta característica es
esencial para comprender su diseño.
La programación declarativa se puede entender en el contexto de Flocking por
dos aspectos esenciales:

1. enfatiza una visión semántica de alto nivel de la lógica y estructura de un
programa

2. representa los programas como estructuras de datos que pueden ser entendido
por otros programas. 

El énfasis aquí es sobre los aspectos lógicos o semánticos de la computación, en
vez de en la secuenciación de bajo nivel y el flujo de control. Tradicionalmente
los estilos de programación imperativos suelen estar destinados solo para el
compilador. Aunque el código es a menudo compartido entre varios
desarrolladores, no suele ser comprendidos o manipulados por programas
distintos a los compiladores.

Por el contrario, la programación declarativa implica la capacidad de escribir
programas que están representados en un formato que pueden ser procesados por
otros programas como datos ordinarios. La familia de lenguajes Lisp es un
ejemplo bien conocido de este enfoque. Paul Graham describe la naturaleza
declarativa de Lisp, expresando que "no tiene sintaxis. Escribes programas en
árboles de análisis... [que] son totalmente accesibles a tus programas.
Puedes escribir programas que los manipulen...  programas que escriben
programas".
Aunque Flocking está escrito en JavaScript, comparte con
Lisp el enfoque expresar programas dentro de estructuras de datos que estén
disponibles para su manipulación por otros programas.

\newpage
## 5.2.1 Ejemplo

```
// Create a new synth consisting of a sine wave,
// modulating its amplitude slowly with another sine wave.
var synth = flock.synth({
    synthDef: {
        id: carrier,
        ugen: flock.ugen.sinOsc,
        freq: 440,
        mul: {
            id: mod,
            ugen: flock.ugen.sinOsc,
            freq: 1.0,
            mul: 0.25
        }
    }
});
```
\newpage
