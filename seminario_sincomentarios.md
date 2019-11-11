---
  institucion: 'Universidad Nacional de Quilmes'
  departamento: 'Escuela de Artes' 
  carrera: 'Licenciatura en Música y Tecnología'
  director: 'Esteban Calcagno'
  title: 'Seminario de Investigación'
  subtitle: 'Representación textual de estructuras musicales y entorno de secuenciación'
  author: 'Lisandro Fernández'
  tutor: 'Pablo Riera'
  programa: 'Cartografías Espacio-Temporales y Arte Sonoro'
  date:  'Noviembre 2019'
  place: 'Buenos Aires, Argentina'
  tags: ['representación', 'texto plano', 'CLI', 'MIDI']
  bibliography: referencias.bib
  abstract: |
    Se propone un lenguaje formal
    basado en texto plano, descriptivo y serializado,
    capaz de representar informacion musical.
    Contextualiza, un conjunto de utilidades
    cuyo fin es producir
    secuencias musicales en el estándar MIDI.
  # estructurada como árbol de análisis
  # para interfaz de linea de comandos
---

# Resumen 

El presente trabajo propone un contexto de producción musical puramente
textual.

Son el producto de esta investigación un marco de patrones y relaciones
gramaticales que posibilitan la representación sintáctica de información con
significado musical; un léxico y una sintaxis que definen estructuras musicales
contenidas en ficheros de texto serializado [^ver_combs] y autodescriptivo.

Acompaña esta propuesta, un entorno de herramientas para intérprete línea de
comandos[^ver_interprete]. Es otro aporte importante del actual desarrollo una
cadena de procesos que consume información suscrita a dicha representación;
derivando esta manipulación en la producción de secuencias de mensajes de
control.


La primera parte de este escrito está dedicada a justificar el objeto de
estudio, presentar los motivos de las interrogantes, plantear la necesidad
alternativas, también se discuten antecedentes en codificación textual de
información musical.



En la segunda sección se describe el método de ejecución, detallando el
procedimiento de desarrollo.

La parte central de este trabajo versa sobre el vocabulario y relaciones que
conforman la gramática propuesta, se explica como dicha representación habilita
que la semántica musical pueda ser materia prima de esta serie de procesos y se
despliega el resultado de algunos ejemplos a modo de demostración.

Para concluir se proyectan algunas aplicaciones posibles en diferentes
escenarios (trabajo colaborativo en simultaneo y a distancia, programación en
vivo) y varias disciplinas (Inteligencia artificial, modelo condicional
restringido archivología).


Completa el aspecto técnico de este trabajo la inclusión el código
de los módulos desarrollados para la implementación.

[^ver_combs]: @coombs 
[^ver_interprete]: @interprete

# Introducción

En esta sección inaugural se enmarca la investigación, argumentando la
constricción principal, la adopción de un sistema de escritura como contenedor
de instrucciones y medio de interacción.

Seguido se repasan las necesidades que denotan la pertinencia de este estudio,
aludiendo a requerimientos externos a satisfacer.

Para concluir esta introducción se tratan trabajos semejantes de cierta
relevancia a este proyecto.

## Justificación 
\label{sec:justi}

Se repasan las ventajas principales del registro de
información con enunciados textuales y del empleo del lenguaje como medio
de entrada de instrucciones en escenarios generales.

### Texto Llano
\label{sec:porque_texto_plano}

> "...our base material isn't wood or iron, it's knowledge. [...].
> And we believe that the best format for storing knowledge persistently is plain
> text. With plain text, we give ourselves the ability to manipulate knowledge,
> both manually and programmatically, using virtually every tool at our
> disposal." [@hunt]

\bigskip

Se listan las virtudes del texto plano y legible en contraste a la codificación
binaria de datos [^ver_hunt] o cualquier otro tipo de operación que opaque la
relación con lo representado 

**Mínimo Común Denominador.**
Potencialmente cualquier herramienta de computo puede operar información
almacenada en texto plano.  Es soportado en múltiples plataformas, cada sistema
operativo cuenta con al menos un editor de texto todos compatibles hasta la
codificación de caracteres. 

**Fácil de manipular.** 
Procesar cadenas de caracteres es de los trabajos mas rudimentales que pueden
ser realizados por un sistema informático. 

**Fácil de mantener.** 
El texto plano no presenta ninguna dificultad o impedimento ante la
necesidad de actualizar información o de realizar cualquier tipo de cambio o
ajuste.

**Fácil de comprobar.**
Es sencillo agregar, actualizar o modificar datos de testeo sin
la necesidad de emplear o desarrollar herramientas especiales para ello.

**Liviano.** 
Determinante cuando los recursos de sistema son limitados como por ejemplo
almacenamiento escaso, velocidad de computo restringida o conexiones lentas.


**Seguro contra la obsolescencia, o compatible con el avance.**
Los archivos de datos en formatos legibles y autodescriptivos perduran por
sobre otros formatos aun cuando caduquen las aplicaciones que las hayan
creado.[^ver_leek] 

[^ver_hunt]: @hunt Capítulo 3: Basic Tools (pp. 72-99).
[^ver_leek]: @leek

### Intérprete de Comandos

Se argumenta la conveniencia de prescindir de representaciones gráficas como
canal de interacción con herramientas informáticas.

**Estado operativo de un ordenador inicial.** 
Eventualmente todos los sistemas operativos permiten ser 
utilizados a través de este acceso previo al gerente de escritorio.

**Menor utilización de recursos.**
No depender de un agente de ventanas interviniendo entre el usuario y el
sistema libra una cantidad considerable de recursos.  

**Una única interfaz para multiples aplicaciones.**
La estructura de instrucciones esperada en esta interfaz, *aplicación -
argumento - recurso* (su analogía *verbo - adverbio - sujeto*), persiste para
cualquier pieza de software. Dicha recurrencia elimina el ejercicio que
significa un operar distinto para cada aplicación, fomentando un accionar
similar en contextos y circunstancias diferentes.

**Tradición.**
Perdura por décadas como estándar durante la historia de la
informática remitiendo a los orígenes de los ordenadores basados en teletipo.

**Resultados reproducibles.**
Si bien la operación de sistemas sin mas que la entrada de caracteres requiere
conocimiento y entrenamiento específico, no considerar la capa
que representa la posición del puntero como parámetros de instrucciones,
permite que sean recopiladas en secuencias de acciones precisas,
reutilizar estos guiones en diferentes escenarios y agentes diversos.

**Encadenado y Automatización.**
La posibilidad de componer rutinas complejas de manipulación concatenando
resultados con procesos. [^ver_raymond]

**Gestión remota.**
Mas allá del protocolo en el que se base la negociación local/remoto la
interfaz de linea de comandos es la herramienta de facto para administrar un sistema a
distancia.  

**Productividad.** 
Valerse de herramientas pulidas como editores de texto avanzados que gracias al
uso de atajos (acciones complejas asignadas a combinaciones de teclas) evitan
la alternancia entre mouse y teclado, lo cual promueve un flujo de trabajo
ágil.[^ver_moolenaar] 

[^ver_moolenaar]: @moolenaar
[^ver_raymond]: @raymond Capítulo 1: Context, Apartado 1: Philosophy,
Sub-apartado: Basics of the Unix Philosophy (pp. 34-50)

\bigskip

Siendo estas razones de carácter general,
las mismas aplican al propósito particular
que implica este estudio.

### Interfaz Digital para Instrumentos Musicales (MIDI)
\label{sec:porque_midi}

De carácter especifico a la producción musical, en relación directa a este
proyecto es menester acreditar la adopción de un protocolo en particular para
codificar la capa que describe y gestiona la performance entre dispositivos
[^ver_haus].

El animo por que las secuencias de control a producir satisfagan las
condiciones requeridas para alcanzar compatibilidad con el protocolo MIDI
estándar[^ver_midi], está fundamentado por sus virtudes de ser y proyectarse
ampliamente adoptado, soportado en la mayoría de los entornos y apoyado por la
industria.[^ver_penfold]

Si bien es ágil y se planea compatible a futuro, cualidades que comparte
\hyperref[sec:porque_texto_plano]{con el formato de texto llano}, es ineludible
la desventaja que significa el empleo de cualquier sistema de
codificación[^ver_transporte], intrínseca a la dificultad que impone para
interpretar a simple vista la información cifrada, ofuscación que resulta en la
dependencia de herramientas especificas para cualquier manipulación.


[^ver_penfold]: @penfold
[^ver_midi]: @midi
[^ver_haus]: @haus
[^ver_transporte]: Cifrado condicionante para el trasporte.



## Motivación 

Este proyecto plantea la necesidad de establecer un contexto y proveer recursos
para un procedimiento rudimental pero a la vez ágil y flexible de elaboración
discursos musicales unificando la planificación de obra con la secuenciación
MIDI.

Ademas pretende exponer las ventajas de la Interfaz de Linea de Comandos para
operar herramientas informáticas a la comunidad de artistas, teóricos e
investigadores.

Promover la adopción de prácticas consolidadas y formatos abiertos para
representar, manipular y almacenar información digital.

Fomentar el trabajo colaborativo generando vínculos con y entre usuarios.
[^ver_raymond2] [^ver_yzaguirre]

[^ver_raymond2]: @raymond2 Capítulo 11: The Social Context of Open-Source
  Software (p. 11)
[^ver_yzaguirre]: @yzaguirre

## Antecedentes 

A continuación se describen algunos desarrollos que vinculan representación y
manipulación de información musical: MuseData, Humdrum, MusicXML y MML; como
ejemplo de un marco de programación basada en una sintaxis declarativa se
cosideró Flocking.


### MuseData

La base de datos MuseData [^ver_selfridge] es el sistema
de codificación principal del Centro de Investigación Asistida por Computador
en Humanidades (CCARH) de la Universidad de Stanford.
La base de datos fue creado por Walter Hewlett. 

Los archivos MuseData tienen el potencial de existir en múltiples formatos
comunes de información. La mayoría de las codificaciones derivadas definen
sólo algunas de las las características incluidas en el master MuseData de
codificaciones. El archivo MuseData está diseñado para soportar aplicaciones de
sonido, gráficos y análisis. Los formatos derivados de las codificaciones
musicales de MuseData que se distribuyen son: MIDI1, MIDI+ y Humdrum.

[^ver_selfridge]: @selfridge Capitulo 27: MuseData: Multipurpose Representation

#### Organización de archivos MuseData 

Los archivos MuseData están basados en ASCII y se pueden ver en cualquier
editor de texto. Dentro del formato MuseData el número de archivos por
movimiento y por trabajo puede variar de una edición a otra.
Estos ficheros están organizados en base a las partes. Un movimiento de
una composición es típicamente encontrado dividido en varios archivos
agrupados en un directorio para ese movimiento.


#### La representación MuseData de información musical

El propósito de la sintaxis MuseData es representar el contenido lógico de una
pieza musical de un modo neutral. El código se utilizó en la construcción de
bases de datos de texto completo de música de varios compositores, J.S. Bach,
Beethoven, Corelli, Handel, Haydn, Mozart, Telemann y Vivaldi. Se pretende que
estas bases de datos de texto completo se utilicen para la impresión de
partituras, análisis musical y producción de archivos de sonido digitales.

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

* No se puede anticipar todos los usos que podrían darse a estos datos, pero si
  asegurar que cada usuario tendrá sus propias necesidades especiales y
preferencias. Por lo tanto, no tiene sentido tratar de codificar información
acerca de cómo debe verse una representación gráfica de los datos o cómo 
estos datos deben sonar.

Por otro lado, a veces puede ser útil hacer sugerencias sobre cómo los gráficos
y el sonido deben ser realizados. Lo importante es identificar las sugerencias
como un tipo de datos independiente, que puede ser fácilmente ignorado por
software de aplicación o despojado enteramente de los datos. MuseData 
usa estas sugerencias de impresión y sonido en el proceso de generación de
documentos de partitura y archivos MIDI.

### Humdrum

David Huron creó Humdrum[^ver_wild] en los años 80, y se ha utilizado
constantemente por décadas. Humdrum es un conjunto de herramientas de línea de
comandos que facilita el análisis, así como una sintaxis generalizada para
representar secuencias de datos.
Debido a que el conjunto de herramientas es de lenguaje agnóstico.
Muchos han empleado herramientas de Humdrum en secuencias de comandos
más grandes que utilizan PERL, Ruby, Python, Bash, LISP y C++.

[^ver_wild]: @wild

#### Representación 

En primer lugar, Humdrum define una sintaxis para representar información
discreta como una serie de registros en un archivo de computadora.

Esta definición permite que se codifiquen muchos tipos de información.
El esquema esencial utilizado en la base de datos CCARH para la altura y la
duración musical es sólo uno de un conjunto abierto.
Algunos otros esquemas pueden ser aumentados por gramáticas definidas por el
usuario para tareas de investigación.

#### Manipulación

Segundo, está el conjunto de comandos, el Humdrum Toolkit, diseñado para
manipular archivos que se ajusten a la sintaxis Humdrum en el campo de la
investigación asistida por ordenador en la música.

El énfasis está en **asistido**:

* Humdrum no posee facultades analíticas de nivel superior per se.

* Más bien, *su poder deriva de la flexibilidad de su kit de elementos,
  utilizados en combinacióin* para aprovechar plenamente el potencial del
  sistema.

#### De la experiencia a la apreciación 

Apreciación de todo el potencial de Humdrum es definitivamente a partir de la
experiencia. En palabras de David Huron:

\hypertarget{experiencia}{}
> Cualquier conjunto de herramientas requiere el desarrollo de una experiencia
> concomitante, y Humdrum Toolkit no es una excepción. Espero que la inversión
> del tiempo requerido para aprender a usar Humdrum sea más que compensado
> por ganancias académicas posteriores.

Los usuarios de Humdrum hasta ahora han tendido a trabajar en la percepción de
la música o etnomusicología, mientras que los teóricos y los musicólogos
histioriadores han sido mas lentos para reconocer el potencial del sistema. 


#### CLI vs GUI
\label{sec:CLIvsGUI}

Humdrum u otros sistemas como él ofrecen los recursos para marcar un
paradigma en la investigación musical.  

El tedio de recopilar pruebas sólidas que apoyen las propias teorías pueden ser
aliviadas por la automatización y cuanto mayor sea la cantidad de música
examinada mayor será el rigor de la prueba de las hipótesis.  

Sin embargo, la desafortunada posibilidad es que muchos de los musicólogos y
teóricos que se benefician de una pequeña intuición asistida por la máquina es
probable que sean repelidos por la interfaz totalmente basada en texto de
Humdrum.  

Aunque en el análisis final los comandos estilo UNIX son seguramente más
flexibles y eficientes que una interfaz gráfica "amigable", pueden
intimidar a principiantes, muchos de los cuales pueden resultar disuadidos
de emplear herramientas de utilidad considerable.

Independientemente que teóricos de la música decidan o no aumentar su
intuición musical con valiosas pruebas empíricas, los resultados
basados en las cantidades máximas de datos pertinentes será
un factor en la evolución de nuestra disciplina.

### MusicXML

MusicXML[^ver_good] fue diseñado desde cero para compartir archivos de música
entre aplicaciones y archivar registros de música para uso en el futuro.  Se
puede contar con archivos de MusicXML que son legibles y utilizables por una
amplia gama de notaciones musicales, ahora y en el futuro. MusicXML complementa
formatos de archivo utilizados por Finale y otros programas.

MusicXML pretende ser un estándar para compartir partituras interactivas,
dado que facilita crear música en un programa y exportar sus resultados a otros
programas. Al momento más de 220 aplicaciones incluyen compatibilidad con
MusicXML.

[^ver_good]: @good

### Music Markup Language 

El Lenguaje de Marcado de Música (MML)[^ver_mml] es un intento de marcar
objetos y eventos de música con un lenguaje basado en XML. La marcación de
estos objetos debería permitir gestionar música en documentos para diversos
fines, desde la teoría musical y la notación hasta el rendimiento práctico. Este
proyecto no está completo y está en progreso. El primer borrador de una posible
DTD está disponible y se ofrecen algunos ejemplos de piezas de música marcadas
con MML.

El enfoque es modular, varios módulos aún están incompletos y necesitan más
investigación y atención.
Una pieza musical serializada usando MML puede ser entregada en al
menos los siguientes formatos: 

* Texto: representación de notas como, por ejemplo, piano-roll (como el que se
encuentra en el software del secuenciador de computadora).

* Common Western Notation: Notación musical occidental en pantalla o en papel

* MIDI-device: MML hace posible "secuenciar" una pieza de música sin tener que
usar software especial. Así que cualquier persona con un editor de texto debe
ser capaz de secuenciar la música de esta manera.

[^ver_mml]: @mml

### Flocking 

Flocking[^ver_clark] es un framework, escrito en JavaScript, para la
composición de música por computadora que aprovecha las tecnologías e ideas
existentes para crear un sistema robusto, flexible y expresivo.
Flocking combina el patrón generador de unidades de muchos idiomas de música de
computadora con tecnologías Web Audio para permitir a los usuarios interactuar
con sitios Web entre otras potenciales tecnologías, usando un estilo
declarativo de programación.

El objetivo de Flocking es permitir el crecimiento de un ecosistema de
herramientas que puedan analizar y entender fácilmente la lógica y la semántica
de los instrumentos digitales representando de forma declarativa los pilares
básicos de síntesis de audio. Esto es particularmente útil para soportar la
composición generativa donde los programas generan nuevos instrumentos
de forma algorítmica, herramientas gráficas para que programadores y
no programadores colaboren, y nuevos modos de programación social que permiten
a los músicos adaptar, ampliar y volver a trabajar fácilmente en instrumentos
existentes.

[^ver_clark]: @clark


#### Programación declarativa

Arriba, se describió Flocking como un marco **declarativo**. Esta
característica es esencial para comprender su diseño. La programación
declarativa se puede entender en el contexto de Flocking por dos aspectos
esenciales:

1. Enfatiza una visión semántica de alto nivel de la lógica y estructura de un
   programa

2. Representa los programas como estructuras de datos que pueden ser entendido
   por otros programas. 

El énfasis aquí es sobre los aspectos lógicos o semánticos de la computación,
en vez de en la secuenciación de bajo nivel y el flujo de control.
Tradicionalmente los estilos de programación imperativos suelen estar
destinados solo para el compilador. Aunque el código es a menudo compartido
entre varios desarrolladores, no suele ser comprendidos o manipulados por
programas distintos a los compiladores.

Por el contrario, la programación declarativa implica la capacidad de escribir
programas que están representados en un formato que pueden ser procesados por
otros programas como datos ordinarios. La familia de lenguajes Lisp es un
ejemplo bien conocido de este enfoque. Paul Graham describe la naturaleza
declarativa de Lisp, expresando que "no tiene sintaxis. Escribes programas en
árboles de análisis... [que] son totalmente accesibles a tus programas. Puedes
escribir programas que los manipulen...  programas que escriben
programas".[^ver_graham2] Aunque Flocking está escrito en JavaScript, comparte
con Lisp el enfoque para expresar programas dentro de estructuras de datos que
estén disponibles para su manipulación por otros programas.

[^ver_graham2]: @graham2

\bigskip

Si bien la recopilación expuesta no agota la lista de referentes
pertinentes y que surgirán otros que cobraran relevancia,
provee un criterio inicial para proceder.

# Metodología

En este capitulo se introduce el procedimiento de ejecución en el que
se pueden distinguir dos etapas, una preparatoria, dedicada a investigación,
experimentación y pruebas que deviene consecuentemente en la fase de producción.

Se aprovecha para reseñar herramientas preexistentes elegidas, se mencionan
aquellas que fueron consideradas pero descartadas luego de algunos ensayos y
otras periféricas vinculadas a la tarea accesoria.


## Preliminares 

Se explican experiencias tempranas necesarias para evidenciar y
comprobar que la hipótesis formulada fuese al menos abarcable y
fundamentar los pasos siguientes.

A partir de las inquietudes presentadas, se propuso como objetivo inicial
establecer una lista de parámetros que asocien valores a propiedades musicales
elementales (altura, duración, intensidad, etc) necesarias para definir el
conjunto articulaciones constituyentes de un discurso musical, en determinado
sentido rudimental, austero y moderado.

Acorde a esto se hilvanó una rutina de procesos, compuesta por un analizador
sintáctico
y un codificador digital
entre otras
herramientas, que a partir de valores emita un flujo de mensajes.


### Boceto de Gramática

El método para discretizar información, jerarquizar y distinguir propiedades de
valores, se basa en el formato YAML [^ver_yaml].  Luego de considerar este
estándar y enfrentarlo con alternativas, se concluye que cumple con las
condiciones y que es idóneo para la actividad.

Implementaciones del mismo en la mayoría de los entornos
vigentes[^ver_matrix], aseguran la independencia de la información serializada
en este sistema.
Se le adjudica alta legibilidad[^ver_noyaml].
Goza de cierta madurez, por lo que fue sujeto de ajustes y mejoras[^ver_yaml1.2].

[^ver_yaml]: @yaml
[^ver_matrix]: @matrix
[^ver_noyaml]: @noyaml
[^ver_yaml1.2]: @yaml1.2


### Prototipo
Se esbozó un guión de instrucciones acotado a componer cadenas de eventos a
partir de la interpretación, análisis sintáctico, proyección (mapeo) y
asignación de valores.

Este prototipo, que confirmó la viabilidad de la aplicación pretendida,
fue desarrollado en Perl [^ver_perl], lenguaje que luego de algunas 
consideraciones se desestimó por Python[^ver_python] debido principalmente
a mayor adopción en la producción académica.

[^ver_perl]: @perl
[^ver_python]: @python

## Desarrollo

En las actividades posteriores a las comprobaciones, aunque influenciados entre
si, se pueden distinguir dos agrupamientos:

* Establecer relaciones de sucesión y jerarquía, que gestionen 
  herencia de propiedades entre segmentos musicales subordinados o
consecutivos y extender el léxico admitido con el propósito de cubrir una
cantidad mayor de propiedades musicales.

* Escalar el prototipo a una herramienta informática que: sea capaz de consumir
  recursos informáticos, interpretar series de registros, manipular valores, derivarlos en
articulaciones, empaquetar y registrar secuencias, entre otras propiedades.

### Lenguaje

Al establecer este lenguaje formal, el primer esfuerzo se concentró en definir
la organización de las propiedades de cada parte musical, conseguir una
estructura lógica que ordene un discurso multi-parte.

La discriminación de los datos comienza a nivel de archivo, cada fichero
contiene los datos relativos a estratos individuales en la pieza.  Obteniendo
así recursos que canalizan la información de cada parte junto con determinadas
propiedades globales (tempo, armadura de clave, metro, letras, etc), que si
bien pueden alojarse en una definición de canal, son meta eventos
[^ver_selfridge2] que afectaran al total de la pieza[^ver_imposiciones].

Dicho esto se continua con la organización interna de los documentos y algunas
consideraciones acerca del léxico acuñado.

[^ver_imposiciones]: La limitación en cantidad de canales y el carácter global
  de algunas propiedades son algunas de las imposiciones del el estándar MIDI.

[^ver_selfridge2]: @selfridge Capitulo 3: MIDI Extensions for Musical Notation
  (1): NoTAMIDI Meta-Events

#### Formato YAML
\label{sec:sintaxis}

Las definiciones de pista son regidas por YAML. Si bien el vocabulario aceptado
es propio de este proyecto, todas las interpretaciones son gestionadas por
dicho lenguaje. Se reseñan los principales indicadores reservados y estructuras
básicas.

En el estilo de bloques de YAML, similar al de Python, la estructura esta
determinada por la indentación. En términos generales indentación se define
como los espacios en blanco al comienzo de la linea. Por fuera de la
indentación y del contexto escalar, YAML destina los espacios en blanco para
separar entre símbolos.

Los indicadores reservados pertinentes a señalar son: los dos puntos ":" denotan
la proyección de un valor, el guión "-" indica un bloque de secuencia,
*ancla* el nodo para referencia futura el símbolo "&" ampersand, habilitado así
inclusiones adicionales del mismo cuyos *alias*, apariciones
subsecuentes, son invocados con el simbolo "\*" asterisco.

Quizás esta presentación austera suscite una intimidación aparente, como se
aprecia en los ejemplos desplegados en el capitulo siguiente, con algunas
reglas sencillas este lenguaje de marcado consigue plena legibilidad, sin dejar
de ser flexible ni expresivo. Para mas información acerca de otras estructuras
y el tratamiento especial de caracteres reservados, referirse a la especificación
del formato[^ver_yaml2].
 
[^ver_yaml2]:@yaml Apartado 5.3: Indicator Characters y Capitulo 6: Basic
  Structures.

#### Vocabulario 

Con intensión de favorecer a la comunidad hispanoparlante el léxico que integra
este lenguaje específico de dominio[^ver_dsl] esta compuesto, salvo contadas
excepciones, por vocablos del diccionario español.  De todos modos, son
sencillas las modificaciones requeridas para habilitar la comprensión de
términos equivalentes (en diferentes idiomas).  \label{sec:espaniol}

Para negociar con la noción inabarcable que significa dar soporte a cada
aspecto musical esperado, siendo imposible anticipar todos las aplicaciones
estipuladas en determinado sentido arbitrarias y/o circunstanciales, se propone
un sistema de complementos de usuarios que habilita la salida y entrada de
valores, para su manipulación externa a la rutina provista. Si bien en el uso
este sistema se mostró prometedor, su naturaleza no excede el carácter
experimental y es menesteroso promover mejoras y consideraciones adicionales.

Los componentes del léxico y el sistema de complementos son detallados en el
primer apartado del capitulo siguiente.

[^ver_dsl]: @dsl

### Entorno 

Tanto las abstracciones desarrolladas, así como también la rutina de
instrucciones principales, están destinadas al intérprete _Python
3_[^ver_python2]. Ademas de incorporar al entorno varios módulos de la
"Librería Estándar" [^ver_standarlib] esta pieza de software está apoyada en
otros dos complementos, el marco de trabajo "PyYAML" [^ver_pyyaml] para asistir
con el análisis sintáctico, en combinación con la librería "MIDIutil"
[^ver_midiutil] encargada de la codificación.

En el mismo ánimo \hyperref[sec:espaniol]{con el que se compuso el
vocabulario}, el guion de acciones hace uso intensivo de idioma español. Esta
decision es en cierto aspecto cuestionable siendo mayoritarias las sentencias
predefinidas en ingles impuestas por el entorno.

[^ver_python2]: @python
[^ver_pyyaml]: @pyyaml
[^ver_midiutil]: @midiutil
[^ver_standarlib]: @standarlib

#### Analizador Sintáctico 

El primer proceso en la rutina es el de consumir información subscrita,
interpretarla y habilitarla para su manipulación posterior. Se confía esta
tarea al analizador sintáctico _PyYAML_.

En la presentación oficial del entorno dice:

* Ser completamente capaz de analizar YAML en su version 1.1, comprendiendo
  todos los ejemplos de dicha especificación.

* Implementar un algoritmo referente gracias a su sencillez.

* Soportar la codificación de caracteres Unicode en la entrada y la salida.

* Analizar y emitir eventos de bajo nivel, con la posibilidad alternativa de
  emplear la librería de sistema LibYAML.

* Poseer una interfaz de programación de alto nivel sencilla para objetos nativos
  Python. Con soporte para todos los tipos de datos de la especificación.

#### Codificación de Salida 

La cadena de procesos finaliza cuando la lista articulaciones resultante,
hasta esta instancia abstracciones en memoria, es secuenciada en eventos,
codificada y registrada en ficheros.

MIDIUtil es una biblioteca que posibilita generar piezas multi-parte en
formato MIDI 1 y 2 desde rutinas de Python. Posee abstracciones que permite
crear y escribir estos archivos con mínimo esfuerzo.

El autor escusa implementar selectivamente algunos de los aspectos más útiles y
comunes de la especificación MIDI, argumentando tratarse de un gran documento
en expansión a lo largo de décadas. A pesar de ser en parte incompleta, las propiedades
cubiertas fueron suficientes para este proyecto y sirvió como marco
el objetivo de dar soporte a cada aspecto comprendido por la librería[^ver_midiutil2].


[^ver_midiutil2]: @midiutil

#### Otras herramientas

Para concluir el relato de método se mencionan dos herramientas
accesorias de las cuales se hizo uso intensivo, tanto en el desarrollo de la
investigación, como así también en la producción de este documento.

Siendo este proyecto texto-centrista, el ecosistema está incompleto sin un editor
de texto apropiado[^ver_texto]. Para conseguir fluidez y consistencia la
herramienta empleada para esta actividad tiene que poder operar según el
contexto, manipular bloques, disponer de macros sencillos y configurables.
Para estos asuntos se confió en Vim[^ver_vim].

El progreso y el respaldo en linea, fue agilizado por el sistema de control de
versiones GIT [^ver_git]. Es esta la herramienta que se permite _clonar_ el
repositorio contenedor del desarrollo junto con instrucciones de instalación e
indicaciones de uso[^ver_repo].

Pese a que se comprenden estos temas en el dominio de usuario,
se reconoce la ventaja y se sugiere el empleo de este tipo de herramientas.

[^ver_texto]: @moolenaar
[^ver_vim]: @oualline
[^ver_git]: @torvalds
[^ver_repo]: Enlace al repositorio en linea: [https://gitlab.com/lf3/yml2mid] (https://gitlab.com/lf3/yml2mid)


# Resultados

Se dedicada esta sección a detallar en profundidad el sistema propuesto.
Comenzando por los constituyentes y preceptos, seguido los procesos de los
cuales estos son objeto.

Concluyendo se exponen, definiciones de pista en sintaxis YAML como entrada
y la representación gráfica de la salida en formato de partitura para dos ejemplos:
una melodía sencilla y una extracto musical con multiples partes instrumentales.


## Gramática

Sobre \hyperref[sec:sintaxis]{la estructura sentada por el formato YAML}
opera otro juego de reglas propio a este desarrollo que gobierna la
combinatoria entre constituyentes. Luego de exponer estos principios se
presenta el vocabulario concebido, que junto con la sintaxis completa esta
gramática.

### Sintaxis

El discurso musical de cada parte se organiza en dos niveles. Se distinguen
las propiedades globales que afectan a la totalidad de la pista de las que en
un siguiente domino, definen cualidades particulares a cada unidad
musical[^ver_grela].

De la lista dispuesta en el próximo apartado, en cuestiones constitutivas se
destaca el término \texttt{forma}[^ver_mono]. Este indica la organización de unidades y
recibe el mismo tratamiento a nivel macro que a nivel micro, en ambos casos
\texttt{forma} representa una lista ordenada de referencias declaradas y
disponibles en la paleta de \texttt{unidades}.

Si el elemento carece de este atributo ninguna otra unidad es invocada, por lo
tanto se ejecuta el segmento.

Existe un secuencia de secciones musicales de primer grado que es
relativa a la pista, de ahí en adelante las unidades se refieren entre ellas
hasta alcanzar segmentos de ultimo grado, resultando una organización de
árbol[^ver_pope].

Previo a la descripción del vocabulario aceptado, relacionada a esta
organización es la gestión de herencia entre unidades, la sucesión de
propiedades. Unidades invocadas heredan las cualidades del referente, este 
sobrescribe propiedades en los referidos.

[^ver_grela]: @grela Se adopta la terminología _unidad_ para referir 
  elementos musicales y _grado_ para denotar el alcance de dicho agrupamiento.

[^ver_pope]: @pope Designing Musical Notations, Sequences And Trees.

[^ver_mono]: Se utiliza fuente tipográfica \texttt{monoespaciada} para resaltar
  el vocabulario propio de este proyecto.

### Léxico 

A modo de referencia, se describe el léxico acuñado aprovechando la distinción
expuesta anteriormente entre propiedades generales a la pista y particulares a
las unidades.

Para detallar cada término evitando redundancias, se
organiza la información repitiendo la misma estructura para cada uno de ellos.
Se presentan en linea: el término que identifica la propiedad, el tipo de dato que se espera,
el valor asignado por defecto, luego una breve descripción y por ultimo un
ejemplo.

#### Propiedades de Pista

Los parámetros generales de cada pista son cuatro:
El \texttt{nombre} de la pista
define el rotulo soportado por el estándar MIDI que
identifica dicha parte en la pieza,
la paleta de \texttt{unidades} disponibles,
la \texttt{forma} indica la secuencia de unidades de primer grado
y los \texttt{complementos} de usuario.  

\input{props_pista}

#### Propiedades de Unidad

En el diccionario de unidades de la pista
cada entrada representa una unidad disponible,
que a su vez aloja sus cualidades.
Esta es la lista de términos aceptados como propiedades
para cada unidad.

\input{props_unidad}

#### Articulaciones

Si bien estructuralmente no se distingue otra jerarquía, las siguientes
propiedades actúan a nivel de articulación, se subscriben a unidades pero en
vez de modificar al segmento como conjunto, resultan en un valor por cada
articulación.  

Comparten la cualidad de esperar listas de valores y proceso combinatorio al
cual son sujetas es similar al empleado en la técnica compositiva del motete
isorrítmico[^ver_variego], difiriendo en que el procedimiento no se limita a
duraciones y alturas, abarca otras propiedades.

La cantidad de articulaciones producidas es equivalente al número de miembros
en la serie mas extensa, se reiteran secuencialemente patrones mas cortos
alineandose, hasta completar el total de articulaciones.

Es pertinente señalar la combinatoria que resulta indexando los valores de la
serie de \texttt{alturas} como punteros en el conjunto intervalos de
\texttt{registración} fija.



[^ver_variego]:@variego 

## Implementación

En este apartado se expone la estructura de la aplicación, se dispone un
esquema, de carácter introductorio, del flujo de procesos y seguido se detallan
las funciones principales y conexiones de cada componente.

Antes de la descripción de cada capa de abstracción,
con intensión de facilitar la comprensión,
se presenta un esquema de la cadena de procesos
de la rutina superior y relaciones internas. 

\bigskip

\begin{Verbatim}
   YAML     \ parser       | Secuencia      | codificador / MIDI 
   archivos > definiciones > Pistas         > tracks      /
   -------- \ ------------ | -------------- | ----------- / 
            \     Unidades = Secciones      |             /      
            \     Unidades = Segmentos      = llamadas    /      
            \              | Articulaciones = llamadas    /      
   ........ \ ............ | .............. | ........... / 
\end{Verbatim}

\bigskip


La rutina principal comienza leyendo, desde argumentos
posicionales, definiciones de pista. Después de analizadas
sintacticamente se entregan como diccionarios reunidos en un
lista al modulo _Secuencia_ [^ver_rossum].

El producto de dicha manipulación es una lista ordenada de llamadas a diversas
funciones que operan el codificador, el cual concluye el programa emitiendo una
secuencia de mensajes MIDI.

[^ver_rossum]: @rossum 10.3: Command Line Arguments, 5.5: Dictionaries,
  3.1.3: Lists, 9: Classes.

A continuación se expone el trazado de mecanismos internos, desde el nivel de
abstracción superior _Secuencia_, alcanzando la capa _Articulación_ comprendida
como la mas profunda.

### Secuencia

Después que cada nodo en los datos recibidos es consolidado como objeto de
clase _Pista_, esta instancia finaliza recorriendo articulaciones y cambios de
parámetros entre los elementos, reuniendo todos los pronunciamientos en
un único flujo de instrucciones[^ver_codigo].

[^ver_codigo]: El extracto de código correspondiente a cada constructor
se encuentran en 
\hyperref[sec:codigo_secuencia]{Apéndice 6.1: Secuencia},
\hyperref[sec:codigo_pista]{Apéndice 6.2: Pista},
\hyperref[sec:codigo_complemento]{Apéndice 6.3: Complemento},
\hyperref[sec:codigo_elemento]{Apéndice 6.4: Unidad},
\hyperref[sec:codigo_seccion]{Apéndice 6.5 : Sección},
\hyperref[sec:codigo_segmento]{Apéndice 6.6: Segmento} y 
\hyperref[sec:codigo_articulacion]{Apéndice 6.7: Articulación}
respectivamente.

#### Pista

Este módulo es responsable por el devenir del las partes musicales. Desde el
nivel macro organiza la estructura de cada instancia, discriminando entre
elementos que refieren a otros, que son clasificados como _Sección_, de los que
no refieren a ningún otro elemento, a los que consolida como _Segmento_.

Al mismo tiempo gestiona la sucesión de propiedades entre referente y referido.  
Resuelve el conjunto de propiedades resultantes de cada elemento y los dispone
consecutivamente para ser consumidos en el nivel de abstracción superior.

#### Complemento

Importa rutinas en el módulo usuario (declarado en
\hyperlink{complementos}{\texttt{complementos} de la pista}) como procesos
capaces de manipular propiedades de cualquier elemento de la _Pista_.

En concordancia cada _Segmento_ busca coincidencia entre 
cada \hyperlink{metodos_usuario}{método de usuario} y clave en sus propiedades,
delegando a la rutina de usuario la manipulación de los valores
de la propiedad subordinada.


#### Unidad

Justifica esta meta clase la noción de una capa superior de agrupamiento y
registro. Ademas de ahorrar alguna redundancia, habilita información de
capacidad analítica en la salida verbal.

#### Sección

Representa conjuntos de _Secciones_ y/o _Segmentos_. Es un grupo de
elementos que, sin vincular articulaciones directamente y sin incidir en el
discurso resultante, a nivel lógico mantiene relaciones de referencia.

#### Segmento

En contra partida, esta clase reúne los mecanismos para preparar y producir
_Articulaciones_.

Es responsable de administrar \texttt{complementos}, distinguir actualizaciones
de valor entre instancias y gestiona alturas, trasponiendo el puntero dentro
el set de registración y trasportando la nota resultante.

Completa secuencialmente patrones dispares alineándolos en relación a la lista
de mayor extension. Invoca una instancia de _Articulacion_ para cada miembro
del conjunto resultante de esta combinatoria.


#### Articulación

Esta capa corresponde a pronunciamientos en el discurso.
Es el producto de mecanismos superiores y la materia prima interpretada en la
_Secuencia_ final asignando una llamada al codificador por cada instancia.

## Demostraciones

### Melodia Simple

#### YAML
\inputminted{yaml}{ejemplo1.yml}


#### Partitura

\begin{figure}
  \centering
  \includesvg[width = 300pt]{ejemplo1}
  \caption{Feliz Cumpleaños}
\end{figure}

#### Salida detallada
\input{ejemplo1}

### Multiples Pistas

#### YAML

\inputminted{yaml}{ejemplo21.yml}
\inputminted{yaml}{ejemplo22.yml}
\inputminted{yaml}{ejemplo23.yml}

#### Partitura

\begin{figure}
\centering
\includesvg[width = 300pt]{ejemplo2}
\caption{Billie Jean}
\end{figure}

#### Salida detallada

\input{ejemplo2}



# Conclusiones

Lidiar con un sistema de producción musical carente de una representación
gráfica, sumando a la incapacidad de manipulaciones mediante
interfaces de entrada espaciales aportan un grado de abstracción que
puede provocar cierta reticencia, válida y \hyperlink{experiencia}{reconocida
previamente en el estudio del marco referencial}, a la cual la aplicación de
este proyecto tampoco está exenta.

Esta oposición se ve compensada por la promesa de ventajas que, \hyperref[sec:justi]{si
bien de carácter general fueron reseñadas anteriormente}, en un escenario
especifico a la producción, manipulación y archivo de información musical se
destaca la capacidad de acceso a elementos a través de la estructura de
relaciones de referencia, que propaga actualizaciones en todo el discurso,
agilizando al proceso compositivo desde la planificación de obra.

La secuenciación alcanza considerable nivel de detalle en el control y
sincronía entre eventos mediante procedimientos relativamente sencillos. El
registro aislado de partes habilita su convivencia en diferentes piezas.

La adopción de un proceder similar al propuesto promueve el desarrollo de un
corpus de información analítica preparada para tareas de musicología y
trabajo teórico.

Ventajas justificantes que no se atribuye fomentar a entornos basados en
interfaces gráficas de usuario.

Potenciales aplicaciones y desarrollos derivados pueden ser:

* La construcción de un espacio virtual de trabajo colaborativo en tiempo real
  y a distancia, mediante el acceso en linea a una instalación publica.

* Es fácil proyectar un entorno de improvisación musical enviando la salida a
  registros para reiterar la lectura/escritura de actualizaciones en
tiempo real.

* Con las consideraciones necesarias es factible la confección de modelos con
  precisión necesaria constringir el entrenamiento de agentes
informáticos autónomos basados en redes neuronales.



# Apéndice

## Secuencia
\label{sec:codigo_secuencia}
\inputminted{python}{secuencia/__init__.py}

## Pista
\label{sec:codigo_pista}
\inputminted{python}{secuencia/pista.py}

## Complemento
\label{sec:codigo_complemento}
\inputminted{python}{secuencia/complemento.py}

## Unidad
\label{sec:codigo_elemento}
\inputminted{python}{secuencia/unidad.py}

## Sección
\label{sec:codigo_seccion}
\inputminted{python}{secuencia/seccion.py}

## Segmento
\label{sec:codigo_segmento}
\inputminted{python}{secuencia/segmento.py}

## Articulación
\label{sec:codigo_articulacion}
\inputminted{python}{secuencia/articulacion.py}

# Bibliografía




