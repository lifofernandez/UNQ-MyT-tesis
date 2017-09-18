
# Universidad Nacional de Quilmes \newline Taller de Tesis 

## Marco Referencial \newline Representacion digital y manipulación asistida por ordenador de información musical

Docente: **Esteban Calcagno** 

Alumno: **Lisandro Fernández**

\bigskip 

Septiembre, 2017
 
 
# 1. Introducción

## 1.1 Resumen

# 2. Antecedentes

## 2.1 MuseData

La base de datos MuseData es un proyecto y a la vez el sistema de codificación principal
Centro de Investigación Asistida por Computador en Humanidades (CCARH). La base
de datos fue creado por Walter Hewlett. 

Los archivos MuseData tienen el potencial de existir en múltiples formatos
comunes de información. La mayoría de las codificaciones derivadas acomodan sólo
algunas de las las características incluidas en el master MuseData
de codificaciones. El archivo MuseData está diseñado para soportar aplicaciones de
sonido, gráficos y análisis. Los formatos derivados de las codificaciones
musicales de MuseData que se distribución son: MIDI1, MIDI+ y Humdrum.

### 2.1.1 Organización de archivos MuseData 

Los archivos MuseData están basados en ASCII y se pueden ver en cualquier
editor de texto. Dentro del formato MuseData El número de archivos por
movimiento y por trabajo puede variar de un formato a otro así como también de
una edición a otra.

Los archivos MuseData están organizados en base a las partes. Un movimiento de
una composición es típicamente encontrado dividido en varios archivos agrupados
en un directorio para ese movimiento.

Las partes de los archivos MuseData siempre tienen la etiqueta 01 para la
primera parte, 02 para la segunda parte de la partitura, etc.
Conteniendo varias líneas de música, como dos flautas en una partitura de
orquesta, o dos duelas para música de piano. Archivos para diferentes
los movimientos de una composición se encuentran en directorios separados que
usualmente indican el número de movimiento, p. 01, 02, etc.

La exhaustividad de la información dentro de los archivos varía entre dos
niveles que en archivos MuseData llamamos Stage 1 y Stage 2. Sólo los archivos
Stage 2 son recomendados para aplicaciones serias.

El primer paso en la entrada de datos (Stage 1) captura información básica como
duración y altura de las notas. Por ejemplo, normalmente habría cuatro archivos
(Violín 1, Violín 2, Viola, Violonchelo) para cada movimiento de un cuarteto de
cuerdas. Si el movimiento del cuarteto comienza en metro binario, cambia a metro
triple, y luego vuelve a binario, cada sección métrica tendrá su propio
conjunto de partes. Así habría doce archivos para el movimiento. El segundo
paso en la entrada de datos (Stage 2) suministra toda la información que no
puede ser capturado de forma fiable desde un teclado electrónico. Esto incluye
indicaciones para ritmo, dinámica y articulación; texto subyacente; vástago,
viga y insulto información, y muchos otros detalles que son esenciales para la
salida de notación de calidad profesional.

El juicio humano se aplica en el Stage 2. Así, cuando el movimiento del
cuarteto de cuerdas citado anteriormente se convierte a la Stage 2, las tres
secciones métricas para cada instrumento capturado desde la entrada del teclado
se encadenará en un movimiento cada uno. El movimiento tendrá ahora cuatro
archivos de datos (uno para Violín 1, otro para Violín 2, Viola, Violonchelo).

El juicio humano también proporciona correcciones y anotaciones a los datos.
Algunos tipos de errores (por ejemplo, medidas incompletas) deben corregirse y
así consigan tener sentido para el usuario. Los asuntos que son más discrecionales
(tales como alteraciones opcionales de los ornamentos o accidentes en los
repertorios anteriores) por lo general no se modifica. Las decisiones
discrecionales se anotan en los archivos que permiten las marcas editoriales.


### 2.2.2 La representación MuseData de la información musical

El propósito del código de MuseData es representar el contenido lógico del
musical resultados en una manera neutral de software. El código se utiliza
actualmente en la construcción de bases de datos de texto completo de música
para varios compositores, J. S. Bach, Beethoven, Corelli, Handel, Haydn,
Mozart, Telemann y Vivaldi. Se pretende que estas bases de datos de texto
completo se utilicen para la impresión de música, música análisis y producción
de archivos de sonido electrónicos.

Aunque el código MuseData está destinado a ser genérico, hemos desarrollado
software de diversos tipos con el fin de probar su eficacia. Las aplicaciones
MuseData pueden imprimir resultados y partes que han sido utilizados por grupos
de editores profesionales de música. Compilan archivos MIDI (que se
pueden utilizar con secuenciadores estándar). Facilitan las búsquedas
rápidas de los datos de patrones rítmicos, melódicos y armónicos específicos.

La sintaxis MuseData está diseñada para representar tanto información de
notación como de sonido, pero en ambos casos no se pretende que la
representación esté completa. Eso prevé que los registros MuseData servirían
como archivos de origen para generar tanto documentos gráficos (específicamente
de página) y archivos de performance MIDI, que podrían editarse como el usuario
lo crea conveniente. Las razones de esta posición son dos:

* Cuando se codifica una obra musical, no es la partitura sino el contenido
lógico de la partiturai lo que codifica. Codificar la puntuación significaría
codificar la posición exacta de cada nota en la página; pero nuestra opinión es
que tal codificación realmente contendría más información que la que el
compositor pretende transmitir.

* No se puede anticipar todos los usos a los cuales podrían darse estos 
datos, pero se pude estar bastante seguro de que cada usuario tendrá sus
propias necesidades especiales y preferencias. Por lo tanto, no tiene sentido
tratar de codificar información acerca de cómo debe verse una realización
gráfica de los datos o cómo sonido que estos datos representan debe sonar.

Por otro lado, a veces puede ser útil hacer sugerencias sobre cómo los gráficos
y el sonido deben ser realizados. Lo importante es identificar las sugerencias
como un tipo de datos independiente, que puede ser fácilmente ignorado por
software de aplicación o despojado enteramente de los datos. MuseData
software usa estas sugerencias de impresión y sonido en el proceso de
generación de documentos de partitura y archivos MIDI.


## 2.2 Humdrum

David Huron creó Humdrum en los años 80, y se ha utilizado constantemente por
décadas. Humdrum es un conjunto de herramientas de línea de comandos que
facilita el análisis, así como una sintaxis generalizada para representar
secuencias de datos. Debido a que es un conjunto de herramientas de línea de
comandos, es el lenguaje de programa agnóstico. Muchos han empleado
herramientas de Humdrum en secuencias de comandos más grandes que utilizan
PERL, Ruby, Python, Bash, LISP y C++.


### 2.2.1 Representación 

En primer lugar, está la sintaxis definida para representar información
discreta como una serie de registros en un archivo de computadora.

* Su definición permite que se codifiquen muchos tipos de información.

* El esquema esencial utilizado en la base de datos CCARH para la altura y la
 duración musical es sólo uno de un conjunto abierto.

* Algunos otros miembros pueden ser aumentados por esquemas definidos por el
 usuario para tareas de investigación.

### 2.2.2 Manipulación

Segundo, está el conjunto de comandos, el Humdrum Toolkit, diseñado para
manipular archivos que se ajusten a la sintaxis Humdrum en el nombre de la
investigación asistida por ordenador en la música.

El énfasis aquí debe ser en **asistido**:

* Humdrum no posee facultades analíticas de nivel superior per se.

* Más bien, su poder deriva de la flexibilidad de su kit de elementales, que el
 usuario debe aprender a utilizar en combinación para explotar plenamente el
potencial del sistema.

## 2.3 MusicXML

MusicXML fue diseñado desde cero para compartir archivos de música entre
aplicaciones y para archivar archivos de música para uso en el futuro. Tú puede
contar con archivos de MusicXML que son legibles y utilizables por una amplia
gama de música notación, ahora y en el futuro. MusicXML complementa al nativo
los formatos de archivo utilizados por Finale y otros programas, que están
diseñados para rápida, uso interactivo.

Así como los archivos MP3 se han convertido en sinónimos de compartir música
grabada, MusicXML los archivos se han convertido en el estándar para compartir
partituras interactivas. Con MusicXML puede crear música en un programa y
compartir sus resultados. adelante - con las personas que utilizan otros
programas. Hoy más de 220 aplicaciones incluyen compatibilidad con MusicXML.

Guarde su música como un archivo de MusicXML y observe cómo crece su audiencia.
Versión 3.1 del formato MusicXML se está desarrollando en la W3C Music Notation
Community Grupo y se encuentra actualmente en prueba beta. La última versión
está disponible en la Repositorio de GitHub.

La versión 3.0 del formato MusicXML ™ se publicó en agosto de 2011. Versión 3.0
incluye una definición de tipo de documento (DTD) y una definición de esquema
XML W3C (XSD).

MusicXML 3.0 tiene tres áreas principales de mejora en comparación con MusicXML
2.0: Una taxonomía estándar de 886 sonidos de instrumento para permitir una
mejor transferencia de reproducción de instrumentos virtuales entre
aplicaciones. Cobertura de más partituras repertorios, incluyendo la notación
numerada china jianpu, la música maqam turca, Persa y música iraní, y un mejor
apoyo para la música educativa. Apoyo para las características más nuevas y más
detalladas de la notación de música occidental común. Esta incluye 20
características descritas en la nueva referencia de Elaine Gould libro, detrás
de barras.

MusicXML 3.0 agrega 76 nuevas características en comparación con MusicXML 2.0,
mientras que permanece compatible con versiones anteriores. Todos los archivos
válidos de MusicXML 1.0, 1.1 y 2.0 son también archivos MusicXML 3.0 válidos.
El historial de la versión de MusicXML resume cambios desde la versión 1.0.

## 2.4 Music Markup Language 

El Lenguaje de Marcado de Música (MML) es un intento de marcar objetos y
eventos de música con un lenguaje basado en XML. La marcación de estos objetos
debería permitir gestionar la música documentos para diversos fines, desde la
teoría musical y la notación hasta rendimiento práctico. Este proyecto no está
completo y está en progreso. El primer borrador de una posible DTD está
disponible y se ofrecen algunos ejemplos de piezas de música marcadas con MML
que resultan en bien formada, así como válida documentos.

El enfoque es modular. Muchos módulos aún están incompletos y necesitan más
investigación y atención.

### 2.4.1 ¿Por qué MML?

Cuando un documento web está marcado correctamente con HTML (especialmente
cuando es Compatible con XHTML) puede ser entregado en muchos tipos diferentes
de dispositivos tales como una pantalla de PC, en TV-Web, en un teléfono
celular web, leído por un sintetizador de sistema estéreo del coche, y muchos
más. El documento puede incluso entregarse horno de microondas o horno de
microondas! Dicho documento web puede usarse con diferentes hojas de estilo que
se entregan de muchas maneras diferentes. MML debe funcionar de manera similar.
Si un pedazo de música está marcado usando MML deben ser entregables en al
menos los siguientes formatos: Texto - presentación de notas como, por ejemplo,
1C: 4 (es decir, nota de cuarto C en la primera octava) Barras de bloque o
piano-roll (como las que se encuentran en el software del secuenciador de
computadora)

CWN: Common Western Notation (en la pantalla o en el papel) MIDI-device - ie
jugado en un sintetizador, o controlando los procesadores de la música Con MML
debe ser posible "secuenciar" una pieza de música sin tener que usar software.
Así que cualquier persona con un editor de texto (como el Bloc de notas de
Windows) debe ser capaz de secuenciar la música de esta manera.

# 3. Bibliografia

* [musedata.org](http://www.musedata.org/)

* A Eleanor Selfridge-Field (1997)   
Beyond MIDI: The Jandbok of Musical Codes   
[Capitulo 27: The MuseData Representation of Musical Information]( http://www.ccarh.org/publications/books/beyondmidi/online/musedata/)   

* [music-cog.ohio-state.edu/humdrum](https://music-cog.ohio-state.edu/Humdrum/)

* Jonathan Wild (1996)   
A Review of the Humdrum Toolkit: UNIX Tools for Musical Research, created by David Huron   
Music Theory Online, Volume 2, Number 7, November 1996   

* [musicxml.com](http://www.musicxml.com/)

* [steyn.pro/mml](https://steyn.pro/mml/)

