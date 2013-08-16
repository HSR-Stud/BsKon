Lösungen zu den BsKon Lernzielen
================================

.. |br| raw:: html

   <br />

Viele Lösungen übernommen aus den Zusammenfassungen von Daniel Ott, Linus
Betschart und Christof Zellweger auf dem Studentenportal (Danke!).


Ein-/Ausgabeverwaltung
######################

**Sie können fünf wesentliche Komponenten der Ein-/Ausgabe(E/A)-Architektur eines
Betriebssystems benennen.**

- **Systemdienstverteiler:** Wird ein System Service verlangt, benutzt der
  Service Dispatcher die Servicenummer, um den Funktionspointer auf diesen
  Service zu erlangen. Beispielsweise wird beim Aufruf von ``NtCreateProcess``
  in die System Service Table mit Hilfe der ``NtCreateProcess`` Nummer
  indexiert.

- **E/A-Monitor:** Basisinfo über I/O anzeigen, welche von Administratoren und
  Entwickler geschrieben werden.

- **E/A-Verteilung:**

- **Treiber- und Geräteverwaltung:**

- **Plug- und Play Verwaltung:** Welche Geräteinfo passt zu welchem Treiber? Auf
  Harddisk sind viele ungenutzte Treiber installiert.

- **E/A-Datenbasis:** Informationen über aktuell vorhandene Peripheriegeräte,
  Liste der aktuell installierten Treiber, Ladeanweisungen für installierte
  Treiber, Installationsanweisungen, Zuordnungstabellen von
  Geratetypen/-modellen zu Treibern, Zuordnungen von Treibern zu
  Geräteinstanzen.

----

**Sie können je einen Vor- und Nachteil einer standardisierten E/A-Schnittstelle
aufzeigen.**

- **Vorteil:** Anwenderprogramm verwendet standardisierte Funktionen,
  Betriebssystem macht anschliessend korrekte Umsetzung auf Gerät, d.h.
  Anwenderprogramm verwendet jeweils nur ``Open()``, ``Close()``, ``Read()`` und
  ``Write()``, ist also gerateunabhängig; Verwendung von logischen Geräten.
- **Nachteil:** Beanspruchung von Rechenzeit zur Übersetzung durch dadurch
  entstehende weitere Abstraktionen.

----

**Sie können erklären welche Aufgaben die Treiber in einem Betriebssystem
erfüllen und wie sie sich in das Betriebssystem einfügen.**

Gerätetreiber sind nachinstallierbare Softwarekomponenten eines Betriebssystems
zur gerätespezifischen Durchführung der Eingabe / Ausgabe.

Aufgaben:

- Treiber konvertieren angelieferte Daten in gerätespezifische Formate und
  umgekehrt.
- Sie führen Geräte-/Hardwareansteuerung aus.
- Sie können Hardwarestatus abfragen (durch Polling oder Interrupts).

Integration in Betriebssystem:

- In Kernelspace oder Userspace
- Als Treiberhierarchie (Logischer Treiber / Klassentreiber, Physischer Treiber
  / Gerätetreiber, etc)

----

**Sie können drei wesentliche Synchronisationsprobleme beim Einsatz von Treibern
und ihre mögliche Behebung erklären.**

**Problem:**

Während ISR-Ablauf sind Interrupts gleicher und tieferer Priorität gesperrt. Im Einebenen-Unterbrechungssystem betrifft dies alle ISRs.

**Lösung:**

- ISR-Ablauf so kurz wie möglich halten
- Z.B. Teile der Interrupt-Behandlung auf Benutzerebene verlagern
- Alternativ Aufteilung der Unterbrechungsbehandlung in zwei Teile. Nicht zeitkritische Teile in Nachbearbeitungsroutine (Linux: SoftIRQ / Tasklet, Windows: DPC) auslagern

**Problem:**

**Lösung:**

**Problem:**

**Lösung:**

----

**Sie können die Begriffe Treiberschnittstelle, Treiberhierarchie,
Treiberinstanz und Prozess-/Unterbrechungskontext erklären.**


Linux Treiber
#############

**Sie können zwei wesentliche Unterschiede zwischen Kernmodus- und
Benutzermodustreiber erklären.**

----

**Sie unterscheiden zeichenorientierte und blockorientierte Kernmodustreiber.**

----

**Sie verstehen die Ein-/Ausgabeschnittstelle und können sie für eigene
Programme nutzen.**

----

**Sie können einen einfachen interrupt-gesteuerten zeichenorientierten
Kernmodustreiber entwickeln.**

----

**Sie können die zwei wichtigsten Schritte bei der Installation eines
Kenmodustreibers aufzählen.**

----

**Sie können fünf typische Treiberaufgaben beschreiben.**


Windows Treiber
###############

**Sie können sieben Komponenten des Windows Ein-Ausgabesystems unterscheiden.**

----

**Sie können die Unterschiede zwischen dem WDM- und dem WDF-Treibermodell
beschreiben.**

----

**Sie kennen fünf WDM-Objekttypen und ihre Anwendung.**

----

**Sie können das WDF-Objektmodell erklären.**

----

**Sie können einen einfachen WDF-Kernmodustreiber entwickeln.**


Architektur
###########

**Sie können drei Entwurfsprobleme beschreiben.**

----

**Sie können Architekturmodelle und Architekturansätze miteinander
vergleichen.**

----

**Sie können die Architekturen bestehender (Windows, Unix, Linux) und
zukünftiger Betriebssysteme (MSR Singularity) anhand von Architekturmodellen
und Architekturansätzen beurteilen.**

----

**Sie können die Idee der Systemobjekte auf konkrete Betriebssysteme
anwenden.**


Verteilte Betriebssysteme
#########################

**Sie können vier verschiedenen Rechnerstrukturen geeignete Betriebssystemarten
zuordnen und ihre Wahl begründen.**

----

**Sie unterscheiden drei verschiedene Implementierungen von Cluster-Systemen.**

----

**Sie können vier Programmiermodelle für die parallele Programmausführung auf
mehreren Prozessoren kurz beschreiben.**

----

**Sie können erklären wie das Experimental-Betriebssystem "fos (factored
operating system)" die Anforderungen an hoch skalierbare verteilte
Betriebssysteme löst.**


Programmbibliotheken
####################

**Sie können die Relokation und Adressbindung von Programmbibliotheken
erklären.**

----

**Sie kennen drei Unterscheidungsmerkmale für die Klassifikation von
Bibliotheken.**

----

**Sie können drei Bibliotheksarten unterscheiden.**

----

**Sie können die Effizienz von Programmbibliotheken anhand von fünf
bestimmenden Merkmalen beurteilen.**


Linux-Programmbibliotheken
##########################

**Sie können einfache Programmbibliotheken unter Unix als static library,
shared library oder dynamic loadable library selbst erstellen.**

----

**Sie sind in der Lage die Rolle der GOT und PLT bei der Verwendung gemeinsamer
Bibliotheken zu erklären.**


Windows-Programmbibliotheken
############################


**Sie können einfache Programmbibliotheken unter Windows selbst entwickeln.**

----

**Sie sind in der Lage das Laden von Windows-Programmen und Bibliotheken zu
analysieren.**

----

**Sie können die Unterschiede zwischen implizitem, explizitem und verzögertem
Laden von Programmbibliotheken erklären.**


CPU-Scheduling
##############

**Sie können die Funktionsweise von fünf verschiedenen
Scheduling-Implementierungen beschreiben.**

----

**Sie kennen zwei unterschiedliche Verfahren zur dynamischen
Prioritätsmodifikation.**

----

**Sie können das MS Windows Thread-Zustandsmodell und das Unix System V Rel. 3
Prozess-Zustandsmodell erklären.**

----

**Sie kennen drei Unterschiede zwischen dem Multiprozessor-Scheduling des
Windows und des Linux.**
