
# Universidad Nacional de Quilmes \newline Taller de Tesis 

## Marco Referencial \newline Representacion digital de Información Musical

Docente: **Esteban Calcagno** 

Alumno: **Lisandro Fernández**

\bigskip Septiembre, 2017
   
   
# 1. Introducción


# 1.1 Resumen


# 2. Antecedentes

## 2.1 MuseData

[musedata.org] (http://www.musedata.org/)

The MuseData database is a project and the primary encoding system used of the
Center for Computer Assisted Research in the Humanities (CCARH). The database
was created by Walter Hewlett.  Data entry has been primarily done by Frances
Bennion, Edmund Correia, Walter Hewlett, and Steve Rasmussen.

MuseData files have the potential to exist in multiple formats generated from a
common set of information. Most derivative encodings accommodate only some of
the features included in the master MuseData encodings. The MuseData file
format is designed to support applications in sound, graphics, and analysis.
Derivative formats of the MuseData musical encodings which are currently in
distribution are: MIDI1, MIDI+, and Humdrum.

## 2.1.1 MuseData File Organization

MuseData files are ASCII-based and are viewable in any text editor. Users
should be aware that the number of files per movement and per work may vary
from one format to another. Within the MuseData format this number may vary
from one edition to another.

MuseData files are part-oriented. A movement from a composition is typically
found divided into several files collected in a directory for that movement.
The parts for MuseData files are always labeled 01 for the first part in the
score, 02 for the second part in the score, etc. The part files can also
contain multiple line of music, such as two flutes on one staff in an
orchestral score, or two staves for piano music. MuseData files for different
movements of a composition are found in separate directories usually indicating
the movement number, e.g. 01, 02, etc.

The completeness of the information within files varies between two levels
which in MuseData files we call Stage 1 and Stage 2. Only Stage 2 files are
recommended for serious applications.

The first pass in data entry (Stage 1) captures basic information such as the
duration and pitch of notes. For example, there would normally be four files
(Violin 1, Violin 2, Viola, Cello) for each movement of a string quartet. If
the quartet movement begins in duple meter, changes to triple meter, and then
reverts to duple meter each metrical section will have its own set of parts.
Thus there would be twelve files for the movement.

The second pass in data entry (Stage 2) supplies all information which cannot
be reliably captured from an electronic keyboard. This includes indications for
tempo, dynamics, and articualtion; text underlay; stem, beam, and slur
information, and many other details which are essential for notational output
of professional quality.

Human judgment is applied in Stage 2. Thus when the string-quartet movement
cited above is converted to Stage 2, the three metrical sections for each
instrument captured from keyboard input will be chained into one movement each.
The movement will now have four data files (one each for Violin 1, Violin 2,
Viola, Cello).

Human judgment also supplies corrections and annotations to the data. Some
kinds of errors (for example, incomplete measures) must be corrected for the
data to make sense to user software. Matters which are more discretionary (such
as optional alterations of ornaments or accidentals in earlier repertories) are
usually left unchanged. Discretionary decisions are annotated in the files
which allow for editorial markings.

# 2.2.2 The MuseData Representation of Musical Information

An online description of the MuseData file formats taken from the book Beyond
MIDI: The Handbook of Musical Codes.

The purpose of MuseData code is to represent the logical content of musical
scores in a software-neutral fashion. The code is currently being used in the
construction of full-text databases of music for several composers, including
J.  S. Bach, Beethoven, Corelli, Handel, Haydn, Mozart, Telemann, and Vivaldi.
It is intended that these full-text databases be used for music printing, music
analysis, and production of electronic sound files.

Although MuseData code is intended to be generic, we have developed software of
various kinds in order to test its effectiveness. MuseData programs print
scores and parts which have been used by professional performing groups and
music publishers. They compile Standard MIDI Files which may be used with
standard sequencer software. They facilitate high-speed searches of the data
for specific rhythmic, melodic, and harmonic patterns.

MuseData code is designed to represent both notational and sound information,
but in both cases the representation is not intended to be fully complete. It
is envisioned that MuseData files would serve as source files for generating
page-specific graphics files and MIDI performance files, which might then be
further edited as the user sees fit. The reasons for this position are
two-fold:

* (1) When we encode a musical work, what we are encoding is not the score
itself but the logical content of the score. To encode the score would mean
encoding the exact position of every note on the page; but our view is that
such an encoding would actually contain more information than the composer
intended to convey.

* (2) We cannot anticipate all of the uses to which this data might be put, but
we can be fairly sure that each user will have his or her own special needs
and preferences. It does not make sense, therefore, to try to encode detailed
information about how a graphic realization of the data should look or how a
sound realization of the data should sound.

On the other hand, it sometimes can be helpful to make suggestions about how
the graphics and the sound should be realized. The important thing is to
identify suggestions as a separate data type, which can easily be ignored by
application software or stripped entirely from the data. Our own software makes
use of these print and sound suggestions in the process of generating SCORE
parameter files and MIDI performance files.


## 2.2 Humdrum 

[music-cog.ohio-state.edu/humdrum] (https://music-cog.ohio-state.edu/Humdrum/)

David Huron created Humdrum in the 1980s, and it has been used steadily for
decades. Humdrum is a set of command-line tools that facilitates musical
analysis, as well as a generalized syntax for representing sequential streams
of data. Because it’s a set of command-line tools, it’s program-language
agnostic.  Many have employed Humdrum tools in larger scripts that use PERL,
Ruby, Python, Bash, LISP, and C++.

## 2.2.1 La Sistaxis 

En primer lugar, está la sintaxis definida para representar información
discreta como una serie de registros en un archivo de computadora.

* Su definición permite que se codifiquen muchos tipos de información.

* El esquema esencial utilizado en la base de datos CCARH para la altura y la
  duración musical es sólo uno de un conjunto abierto.  

* Algunos otros miembros pueden ser aumentados por esquemas definidos por el
  usuario para tareas de investigación.  

## 2.2.2 El Conjunto Comandos

Segundo, está el conjunto de comandos, el Humdrum Toolkit, diseñado para
manipular archivos que se ajusten a la sintaxis Humdrum en el nombre de la
investigación asistida por ordenador en la música.

El énfasis aquí debe ser en "asistido":

* Humdrum no posee facultades analíticas de nivel superior per se.

* Más bien, su poder deriva de la flexibilidad de su kit de elementales, que el
  usuario debe aprender a utilizar en combinación para explotar plenamente el
potencial del sistema.

## 2.3 MusicXML 

[musicxml.com] (http://www.musicxml.com/)

MusicXML was designed from the ground up for sharing sheet music files between
applications, and for archiving sheet music files for use in the future. You
can count on MusicXML files being readable and usable by a wide range of music
notation applications, now and in the future. MusicXML complements the native
file formats used by Finale and other programs, which are designed for rapid,
interactive use.

Just as MP3 files have become synonymous with sharing recorded music, MusicXML
files have become the standard for sharing interactive sheet music. With
MusicXML you can create music in one program and share your results – back and
forth – with people using other programs. Today more than 220 applications
include MusicXML support.

Save your music as a MusicXML file, and watch your audience grow.  Version 3.1
of the MusicXML format is being developed at the W3C Music Notation Community
Group and is currently in beta test. The latest version is available at the
GitHub repository.

Version 3.0 of the MusicXML™ format was released in August 2011. Version 3.0
includes both a Document Type Definition (DTD) and W3C XML Schema Definition
(XSD).

MusicXML 3.0 has three main areas of improvement compared to MusicXML 2.0:

A standard taxonomy of 886 instrument sounds to allow better transfer of
virtual instrument playback between applications.  Coverage of more sheet music
repertoires, including Chinese jianpu numbered notation, Turkish maqam music,
Persian and Iranian music, and improved support for educational music.  Support
for newer and more detailed features of common Western music notation.  This
includes 20 features described in the Elaine Gould’s new notation reference
book, Behind Bars.

MusicXML 3.0 adds 76 new features compared to MusicXML 2.0, while staying
compatible with earlier versions. All valid MusicXML 1.0, 1.1, and 2.0 files
are also valid MusicXML 3.0 files. The MusicXML version history summarizes the
changes since version 1.0.



## 2.4 Music Markup Language 

[steyn.pro/mml] (https://steyn.pro/mml/)

Music Markup Language (MML) is an attempt to mark music objects and events with
an XML-based language. Marking such objects should enable managing music
documents for various purposes, ranging from music theory and notation to
practical performance. This project is not complete and a work in progress.

The first draft of a possible DTD is available and a few examples are provided
of music pieces marked with MML that result in well-formed as well as valid
documents.

The approach is modular. Many modules are still incomplete and need more
research and attention.

## 2.4.1 Why MML?

The vision for MML is best understood in terms of an analogy with the
presentation of web documents.

When a web document is marked properly with HTML (especially when it is
XHTML-compliant) it can be delivered on many different kinds of devices such as
a PC screen, on TV-Web, on a web-cellphone, read by a speech synthesizer on a
car stereo system, and many more. The document can even be delivered on a
web-enabled freezer or microwave-oven! Such a web document can be used with
different style sheets to be delivered in many different ways.

MML should function similarly. If a piece of music is marked by using MML it
should be deliverable in at least the following formats:

Text -- presenting notes as, for example, 1C:4 (ie quarter note C in the first
octave) Block bars or piano-roll (such as found in computer sequencer software)
CWN: Common Western Notation (either on screen or on paper) MIDI-device -- ie
played on a synthesizer, or controlling music processors With MML it should be
possible to "sequence" a piece of music without having to use expensive
software. So anybody with a text editor (such as Windows Notepad) should be
able to sequence music in this way.

# 3. Bibliografia

http://www.ccarh.org/publications/books/beyondmidi/online/musedata/
