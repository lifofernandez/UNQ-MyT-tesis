# Introducción

\vspace*{\fill}
\begin{center}
\begin{tikzpicture}[node distance = 2cm, auto]
        % Place nodes
	\tikzstyle{block} = [
		rectangle, 
		draw, 
		fill=blue!20, 
		text width=7em, 
		text centered, 
		rounded corners, 
		minimum height=4em,
		node distance=3cm,
	]
	\tikzstyle{circulo} = [
		circle, 
		draw, 
		fill=red!20, 
		text width=6em, 
		text centered, 
		minimum width=7.5em,
		node distance=3cm,
	]
	\tikzstyle{line} = [
		draw,
		-latex'
	]
    % Place nodes
    \node [circulo, 
    ](mused) {MuseData};
    \node [circulo, 
	right of=mused,
    ](humdr) {Humdrum};
    \node [circulo, 
	right of=humdr
    ](xml) {MusicXML};
    \node [circulo, 
	right of=xml,
    ](mml) {Music Markup Language};
    \node [circulo, 
	right of=mml,
    ](flock) {Flocking JS};

    %\node [block, 
    %    below of=flock,
    %] (decla) {Lenguaje con Sintaxis Declarativa};

    \node [block,
	below of=xml
    ](infom) {Información Musical};
    \node [block, 
	node distance=2cm,
	below of=infom
    ](repre) {Representación};

    \node [block, 
	node distance=3cm,
	below of=repre,
    ] (manip) {Manipulación};

    \node [block, 
	left of=manip,
    ] (anali) {Análisis};
    \node [block, 
	left of=anali,
	%right of=manip,
    ] (busqu) {Busqueda};

    \node [block, 
	right of=manip,
    ] (produ) {Producción};
    \node [block, 
	right of=produ,
    ] (distr) {Distribución};


    % Draw edges
    \path [line] (infom) -- (repre);
    \path [line] (repre) -- (anali);
    \path [line] (repre) -- (manip);

    \path [line] (repre) -- (busqu);
    \path [line] (repre) -- (distr);
    \path [line] (repre) -- (produ);

    \path [line] (mused) -- (humdr);

    %\path [line] (identify) -- (evaluate);
    %\path [line] (evaluate) -- (decide);
    %\path [line] (decide) -| node [near start] {yes} (update);
    %\path [line] (update) |- (identify);
    %\path [line] (decide) -- node {no}(stop);
    %\path [line,dashed] (expert) -- (init);
    %\path [line,dashed] (system) -- (init);
    %\path [line,dashed] (system) |- (evaluate);

% \foreach 
% 	\from/\to in {n6/n4,n4/n5,n5/n1,n1/n2,n2/n5,n2/n3,n3/n4}
% 	\draw (\from) -- (\to);

\end{tikzpicture}

\end{center}
	
\vspace*{\fill}


## 1. MuseData

	
\vspace*{\fill}
\begin{center}
\begin{tikzpicture}[node distance = 2cm, auto]

    \tikzstyle{circulo} = [
    	circle, 
    	draw, 
    	fill=red!20, 
    	text width=6em, 
    	text centered, 
    	minimum width=7.5em,
    	node distance=4cm,
    ]
    \tikzstyle{block} = [
    	rectangle, 
    	draw, 
    	fill=blue!20, 
    	text width=7em, 
    	text centered, 
    	minimum height=4em,
    	node distance=3.5cm,
    ]
    \tikzstyle{line} = [
    	draw,
    	-latex'
    ]
    \node [circulo](mused) {\large\bfseries MuseData};

    \node [block, 
        left of=mused
    ](stanf) {Universidad de Stanford};


    \node [block, 
        below of=stanf
    ](ccarh) { CCARH};
    \node [block, 
        below of=ccarh
    ](hawle) { Walter Hewlett };

    \node [block, 
        right of=mused
    ](based) {Base de Datos};

    \node [block, 
        below right of=based
    ](estru) {Estructura y Organización};
    \node [block, 
        below left of=based
    ](siste) {Sistema de Codificación};

    \node [block, 
        below left of=estru
    ](archi) {Archivos};
    \node [block, 
        below left of=archi
    ](forma) {Múltiples Formatos};

    \node [block, 
        below right of=archi
    ](aplic) {Múltiples Aplicaciones};
    \node [block, 
        below of=aplic
    ](sonid) {Sonido};
    \node [block, 
        right of=sonid
    ](grafi) {Gráficos};
    \node [block, 
        left of=sonid
    ](anali) {Análisis};

    \path [line] (mused) -- (stanf);
    \path [line] (mused) -- (based);

    \path [line] (stanf) -- (ccarh);
    \path [line] (ccarh) -- node [near end] {Creado por} (hawle);

    \path [line] (based) |- (estru);
    \path [line] (based) |- node [near start] {define}(siste);

    \path [line] (estru) |- (archi) ;
    \path [line] (siste) |- (archi) ;

    \path [line] (archi) |- (aplic) ;
    \path [line] (archi) |- (forma) ;

    \path [line] (aplic) -- (sonid);
    \path [line] (aplic) -- (grafi);
    \path [line] (aplic) -- (anali);

\end{tikzpicture}

\end{center}
	
\vspace*{\fill}

## 1.1 Organización de archivos MuseData 

\begin{center}
\begin{tikzpicture}[node distance = 2cm, auto]

    \tikzstyle{circulo} = [
    	circle, 
    	draw, 
    	fill=red!20, 
    	text width=6em, 
    	text centered, 
    	minimum width=7.5em,
    	node distance=4cm,
	font=\bfseries,
    ]
    \tikzstyle{block} = [
    	rectangle, 
    	draw, 
    	fill=blue!20, 
    	text width=7em, 
    	text centered, 
    	minimum height=5em,
    	node distance=3.5cm,
    ]
    \tikzstyle{line} = [
    	draw,
    	-latex'
    ]

\node [circulo](archi) { ARCHIVOS MuseData };

\node [block,
left of=archi
](ascii) {
basados en ASCII
};
\path [line] (archi) -- (ascii);

\node [block,
below of=ascii
](texto) {
Cualquier Editor de Texto
};
\path [line] (ascii) -- (texto);

\node [block,
right of=archi
](organ) {
\bfseries Organizados en base a 
};
\path [line] (archi) -- (organ);


\node [block,
below right = 0.7cm and 2cm of organ
](estru) {
\bfseries La Estructura Musical  
};
\path [line] (organ) |- (estru);

\node [block,
below left of=organ
](instr) {
\bfseries Las Partes\newline Instrumentales 
};
\path [line] (organ) |- (instr);


\node [block,
right of=organ
](canti) {
La cantidad de archivos y el formato 
};
\path [line] (organ) -- (canti);

\node [block,
right of=canti
](varia) {
Puede variar por movimiento y por trabajo 
};
\path [line] (canti) -- (varia);

\node [block,
below of=estru
](difer) {
Diferentes movimientos de una composición 
};
\path [line] (estru) -- (difer);

\node [block,
below of=difer
](encue) {
Se encuentran en directorios separados  
};
\path [line] (difer) -- (encue);

\node [block,
left of=encue
](movim) {
Un movimiento de una composición es típicamente encontrado 
};
\path [line] (encue) -- (movim);


\node [block,
above = 0.5cm of movim
](divid) {
Dividido en varios archivos, agrupados en ese directorio para ese movimiento.
};
\path [line] (movim) -- (divid);

\node [block,
below of=instr
](parte) {
Las secciones de los archivos 
};
\path [line] (instr) -- (parte);
\path [line] (varia) -- (difer);
\path [line] (varia) -- (parte);
\path [line] (divid) -- (instr);

\node [block,
above = 0.3cm  of divid
](rotul) {
Rótulado segun número de movimiento, p. 01, 02, etc.
};
\path [line] (rotul) -- (divid);


\node [block,
below of=parte
](etiqu) {
Etiqueta 01 para la 1ra parte de la partitura
};
\path [line] (parte) -- (etiqu);

\node [block,
left of=etiqu
](etiq2) {
Etiqueta 02 para la 2da parte 
};
\path [line] (etiqu) -- (etiq2);

\node [block,
above of=etiq2
](etiq3) {
Etcetera
};
\path [line] (etiq2) -- (etiq3);


\end{tikzpicture}

\end{center}
	
\vspace*{\fill}
\newpage
## 1.2 La representación MuseData de información musical

* Propósito de la sintaxis: 

	* Representar el contenido lógico de una pieza musical de una modo neutral. 

* Actualmente bases de datos de texto varios compositores

	* J.S. Bach, Beethoven, Corelli, Handel, Haydn, Mozart, Telemann y Vivaldi

* Se utilicen para la 

	* Impresión de música
	
	* Análisis musical 
	
	* Producción de archivos de sonido digitales.

* Destinado para a ser genérico

	* Diseño  para representar tanto información de
		
		* Notación

		* Sonido

* Se han desarrollado piezas de software de diversos tipos con el fin de probar su eficacia

	* Aplicaciones imprimir resultados 
	
	* Partes para ser utilizadas por editores profesionales de música
	
	* Así como también compilar archivos MIDI 
	
	* Facilitar las búsquedas rápidas de los datos de patrones específico
		
		* Rítmicos
	
		* Melódicos 
	
		* Armónicos 


* No se pretende que la representación esté completa

	* Registros MuseData servirían como archivos de origen para generar tanto

		* Documentos gráficos (específicamente de página) 
		
		* Archivos de performance MIDI,

	* 2 razones para esta postura:

		* no es la partitura sino el contenido lógico de la partitura
		  lo que codifica. 
			* Codificar la puntuación significaría codificar la
			posición exacta contendría más información que la que
			el compositor pretende transmitir.

		* No se puede anticipar todos los usos a q podrían darse
  		Si podemos asegurar que c/suario tendrá sus propias 
		necesidades especiales y preferencias. 
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

## RESERVA TEMPORAL CHEATSHEAT GRAFICOS

\begin{tikzpicture}
  [scale=.8,auto=left,every node/.style={circle,fill=blue!20}]
  \node (n6) at (1,10) {humdrum};
  \node (n4) at (4,8)  {4};
  \node (n5) at (8,9)  {5};
  \node (n1) at (11,8) {1};
  \node (n2) at (9,6)  {2};
  \node (n3) at (5,5)  {3};

\foreach 
	\from/\to in {n6/n4,n4/n5,n5/n1,n1/n2,n2/n5,n2/n3,n3/n4}
	\draw (\from) -- (\to);

\end{tikzpicture}
	
    
\newpage

\begin{tikzpicture}[node distance = 2cm, auto]
%        % Define node tipes
%	\tikzstyle{decision} = [
%		diamond, 
%		draw, 
%		fill=blue!20, 
%	    	text width=4.5em, 
%		text badly centered,
%		node distance=3cm,
%		inner sep=0pt,
%	]
%	\tikzstyle{block} = [rectangle, 
%		draw, 
%		fill=blue!20, 
%		text width=5em, 
%		text centered, 
%		rounded corners, 
%		minimum height=4em
%	]
%	\tikzstyle{line} = [
%		draw,
%		-latex'
%	]
%	\tikzstyle{cloud} = [
%		draw,
%		ellipse,
%		fill=red!20,
%		node distance=3cm,
%    		minimum height=2em
%	]
%    % Place nodes
%    \node [block] (init) {initialize model};
%    \node [cloud, left of=init] (expert) {expert};
%    \node [cloud, right of=init] (system) {system};
%    \node [block, below of=init] (identify) {identify candidate models};
%    \node [block, below of=identify] (evaluate) {evaluate candidate models};
%    \node [block, left of=evaluate, node distance=3cm] (update) {update model};
%    \node [decision, below of=evaluate] (decide) {is best candidate better?};
%    \node [block, below of=decide, node distance=3cm] (stop) {stop};
%    % Draw edges
%    \path [line] (init) -- (identify);
%    \path [line] (identify) -- (evaluate);
%    \path [line] (evaluate) -- (decide);
%    \path [line] (decide) -| node [near start] {yes} (update);
%    \path [line] (update) |- (identify);
%    \path [line] (decide) -- node {no}(stop);
%    \path [line,dashed] (expert) -- (init);
%    \path [line,dashed] (system) -- (init);
%    \path [line,dashed] (system) |- (evaluate);
\end{tikzpicture}


\newpage
