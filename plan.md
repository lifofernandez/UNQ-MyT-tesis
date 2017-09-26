

## 1. Resumen 

El presente plan propone la definición de una gramática neutral de hojas de
análisis o planes de obra musical, basada en texto plano [^ver_hunt][^ver_leek]
serializado y legible[^ver_combs], acompañada por el desarrollo de un sistema
de herramientas para interfaz de línea de comandos (Command Line
Interface)[^ver_hunt] que genere, a partir de estos ficheros, secuencias
musicales en el estándar MIDI. 

Se documentará este desarrollo para su correcta publicación enmarcada
bajo premisas del software libre[^ver_gnu][^ver_yzaguirre].

[^ver_combs]: @coombs 
[^ver_hunt]: @hunt
[^ver_leek]: @leek
[^ver_gnu]: @gnu
[^ver_yzaguirre]: @yzaguirre

## 2. Justificacion 

### 2.1 ¿Por qué Texto Plano?

> "...our base material isn't wood or iron, it's
> knowledge. [...]. And we believe that the best format for storing knowledge
> persistently is plain text.  With plain text, we give ourselves the ability to
> manipulate knowledge, both manually and programmatically, using virtually every
> tool at our disposal." [@hunt] 

* Leverage

* **Soportado en multiples plataformas.** 
  Cada sistema operativo tiene al menos un editor de texto y son todos
  compatibles hasta la codificación del texto. 

* **Fácil de manipular.** 
  Procesar cadenas de caracteres es uno de los procesos mas elementales que
  se pueden realizar en un sistema informático.

* **Fácil de mantener.** 
  Comparado con alternativas mas complejas, el texto plano es lo mas sencillo ante
  la necesidad de actualizar información o de realizar cualquier tipo de cambio o
  ajuste.

* Easier testing 

* **Liviano.**
  Aspecto clave cuando los recursos a nivel de sistema son
  limitados, como por ejemplo poca capacidad de procesamiento/almacenamiento,
  conexiones lentas o sin acceso a una interfaz gráfica.
  
* **Compatible con el avance.**
* Insurance against obsolescence
  Independientemente de la próxima plataforma, si tenemos nuestros documentos
  almacenados en texto plano, serán fáciles de interpretar.




### 2.2 ¿Por qué la Interfaz de Linea de Comandos?

* Esta en todos los sistemas

* Primer estado utilizable del sistema 

* Agilidad

* Misma interfaz para múltiples aplicaciones

* Resultados reproducibles

* Pipeline

* Tradición 

* Menos recursos 

* Acceso remoto

* VIM



## 3. Objetivos

Las motivaciones principales del desarrollo que este plan propone son:

* Elaborar una herramienta de composición musical que prescinda de interfaz gráfica.

* Unificar el proceso de planificación de obra musical con el de secuenciación MIDI.

* Exponer ventajas de la operación de sistemas a través de la Interfaz de Linea de Comandos.

* Acercar a músicos a la composición musical asistida por ordenadores.


## 4. Marco referencial 

A continuación se describen algunos desarrollos que vinculan representación y manipulación de información
musical.

## 4.1 MuseData

La base de datos MuseData [^ver_selfridge] es un proyecto y a la vez el sistema de codificación
principal del Centro de Investigación Asistida por Computador en Humanidades
(CCARH). La base de datos fue creado por Walter Hewlett. 

Los archivos MuseData tienen el potencial de existir en múltiples formatos
comunes de información. La mayoría de las codificaciones derivadas acomodan
sólo algunas de las las características incluidas en el master MuseData de
codificaciones. El archivo MuseData está diseñado para soportar aplicaciones de
sonido, gráficos y análisis. Los formatos derivados de las codificaciones
musicales de MuseData que se distribución son: MIDI1, MIDI+ y Humdrum.

[^ver_selfridge]: @selfridge

#### 4.1.1 Organización de archivos MuseData 

Los archivos MuseData están basados en ASCII y se pueden ver en cualquier
editor de texto. Dentro del formato MuseData El número de archivos por
movimiento y por trabajo puede variar de un formato a otro así como también de
una edición a otra.

Los archivos MuseData están organizados en base a las partes. Un movimiento de
una composición es típicamente encontrado dividido en varios archivos agrupados
en un directorio para ese movimiento.

Las partes de los archivos MuseData siempre tienen la etiqueta 01 para la
primera parte, 02 para la segunda parte de la partitura, etc. Conteniendo
varias líneas de música, como dos flautas en una partitura de orquesta, o dos
sistemas para música de piano. Archivos para diferentes los movimientos de una
composición se encuentran en directorios separados que usualmente indican el
número de movimiento, p. 01, 02, etc.

La exhaustividad de la información dentro de los archivos varía entre dos
niveles que en archivos MuseData llamamos Stage 1 y Stage 2. Sólo los archivos
Stage 2 son recomendados para aplicaciones serias.

El primer paso en la entrada de datos (Stage 1) captura información básica como
duración y altura de las notas. Por ejemplo, normalmente habría cuatro archivos
(Violín 1, Violín 2, Viola, Violonchelo) para cada movimiento de un cuarteto de
cuerdas. Si el movimiento del cuarteto comienza en metro binario, cambia a
metro ternario, y luego vuelve a binario, cada sección métrica tendrá su propio
conjunto de partes. Así habría doce archivos para el movimiento. El segundo
paso en la entrada de datos (Stage 2) suministra toda la información que no
puede ser capturado de forma fiable desde un teclado electrónico. Esto incluye
indicaciones para ritmo, dinámica y articulación.

El juicio humano se aplica en el Stage 2. Así, cuando el movimiento del
cuarteto de cuerdas citado anteriormente se convierte a la Stage 2, las tres
secciones métricas para cada instrumento capturado desde la entrada del teclado
se encadenará en un movimiento cada uno. El movimiento tendrá ahora cuatro
archivos de datos (uno para Violín 1, otro para Violín 2, Viola, Violonchelo).

El juicio humano también proporciona correcciones y anotaciones a los datos.
Algunos tipos de errores (por ejemplo, medidas incompletas) deben corregirse y
así consiguen tener sentido para el usuario. Los asuntos que son más
discrecionales (tales como alteraciones opcionales de los ornamentos o
accidentes) por lo general no se modifica. Las decisiones discrecionales se
anotan en archivos que permiten marcas editoriales.


#### 4.1.2 La representación MuseData de información musical

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


### 4.2 Humdrum

David Huron creó Humdrum[^ver_wild] en los años 80, y se ha utilizado constantemente por
décadas. Humdrum es un conjunto de herramientas de línea de comandos que
facilita el análisis, así como una sintaxis generalizada para representar
secuencias de datos. Debido a que es un conjunto de herramientas de línea de
comandos, es el lenguaje de programa agnóstico. Muchos han empleado
herramientas de Humdrum en secuencias de comandos más grandes que utilizan
PERL, Ruby, Python, Bash, LISP y C++.

[^ver_wild]: @wild

#### 4.2.1 Representación 

En primer lugar, Humdrum define una sintaxis para representar información
discreta como una serie de registros en un archivo de computadora.

* Su definición permite que se codifiquen muchos tipos de información.

* El esquema esencial utilizado en la base de datos CCARH para la altura y la
 duración musical es sólo uno de un conjunto abierto.

* Algunos otros esquemas pueden ser aumentados por gramáticas definidas por el
 usuario para tareas de investigación.

#### 4.2.2 Manipulación

Segundo, está el conjunto de comandos, el Humdrum Toolkit, diseñado para
manipular archivos que se ajusten a la sintaxis Humdrum en el campo de la
investigación asistida por ordenador en la música.

El énfasis está en **asistido**:

* Humdrum no posee facultades analíticas de nivel superior per se.

* Más bien, su poder deriva de la flexibilidad de su kit de elementos, que el
 usuario debe aprender a utilizar en combinación para explotar plenamente el
potencial del sistema.

### 4.3 MusicXML

MusicXML [^ver_good] fue diseñado desde cero para compartir archivos de música entre
aplicaciones y para archivar registros de música para uso en el futuro. Se
puede contar con archivos de MusicXML que son legibles y utilizables por una
amplia gama de notaciones musicales, ahora y en el futuro. MusicXML complementa
al los formatos de archivo utilizados por Finale y otros programas.

MusicXML se pretende un el estándar para compartir partituras interactivas,
dado que facilita crear música en un programa y exportar sus resultados a otros
programas. Al momento más de 220 aplicaciones incluyen compatibilidad con
MusicXML.

[^ver_good]: @good

#### 4.4 Music Markup Language 


El Lenguaje de Marcado de Música (MML)[^ver_mml] es un intento de marcar objetos y
eventos de música con un lenguaje basado en XML. La marcación de estos objetos
debería permitir gestionar la música documentos para diversos fines, desde la
teoría musical y la notación hasta rendimiento práctico. Este proyecto no está
completo y está en progreso. El primer borrador de una posible DTD está
disponible y se ofrecen algunos ejemplos de piezas de música marcadas con MML.

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

## 5. Metodología

* Análisis de caso

	* Boceto de sintaxis 

	* Prototipo de aplicación   

	* Encuestas y consultas a músicos compositores y teóricos

* Diseño de Gramática

	* Sintaxis basada en YAML

	* Terminología de análisis/planificación musical

* Desarrollo 

	* Perl

	* GIT

* Documentación

	* Modulo POD 

	* Paginas MAN, PDF, HTML, etc.  

* Release en repositorios públicos


## 6. Cronograma de Trabajo

|                             | Tiempo Estipulado | Fechas Tentativas       |
|-----------------------------|-------------------|-------------------------|
| Boceto de sintaxis          | 1 semana          | Del XX al XX de XXXXXX  |
| Prototipo aplicación        | 2 semanas         | Del XX al XX de XXXXXX  |
| Entrevistas y consultas     | 1 semana          | Del XX al XX de XXXXXX  |
| Definición de gramática     | 5 semanas         | Del XX al XX de XXXXXX  |
| Dasarrollo de herramientas  | 7 semanas         | Del XX al XX de XXXXXX  |
| Pruebas y optimización      | 3 semanss         | Del XX al XX de XXXXXX  |
| Documentación               | 5 semanas         | Del XX al XX de XXXXXX  |

## 7. Bibliografía




