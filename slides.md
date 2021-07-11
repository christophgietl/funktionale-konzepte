---

    title: Funktionale Konzepte und deren Umsetzung in aktuellen Programmiersprachen
    author: Christoph Gietl
    date: 2021-07-13
    extensions:
        - file_loader
        - terminal
    styles:
        style: solarized-dark

---

# Folien und Code

https://github.com/christophgietl/funktionale-konzepte

# Agenda

1. Funktionale Programmierung als Paradigma
2. Funktionale Konzepte in Haskell
    1. Unveränderliche Daten
    2. Rekursion
    3. Reine Funktionen
    4. Funktionen als Bürger:innen erster Klasse
    5. Funktionen höherer Ordnung
    6. Listenverarbeitung
    7. Bedarfsauswertung
3. Funktionale Konzepte in Python
    1. Unveränderliche Daten
    2. Rekursion
    3. Reine Funktionen
    4. Funktionen als Bürger:innen erster Klasse
    5. Funktionen höherer Ordnung
    6. Listenverarbeitung
    7. Bedarfsauswertung
4. Zusammenfassung

---

# Funktionale Programmierung als Paradigma

- Java & Python als imperative Sprachen
- Haskell als rein funktionale Sprache

---

# Funktionale Konzepte

## Unveränderliche Daten _(immutable data)_

### Haskell

#### Variablen sind unveränderlich:

```file
path: code/immutable_data.hs
lang: haskell
```

```terminal8
./pause-and-run code/immutable_data.hs
```

---

### Python

#### Variablen sind veränderlich:

```file
path: code/immutable_data_variables.py
lang: python
```

```terminal2
./pause-and-run code/immutable_data_variables.py
```

#### Konvention: Variablennamen in Großbuchstaben bezeichnen Konstanten (d. h. unveränderliche Variablen):

```file
path: code/immutable_data_constants.py
lang: python
```

```terminal2
./pause-and-run code/immutable_data_constants.py
```

---

#### Tupel sind unveränderlich:

```file
path: code/immutable_data_tuples.py
lang: python
```

```terminal7
./pause-and-run code/immutable_data_tuples.py
```

---

#### Einschränkung: Wir können den Wert der Variablen `a` durch einen neuen Tupel ersetzen:

```file
path: code/immutable_data_replace_tuple.py
lang: python
```

```terminal3
./pause-and-run code/immutable_data_replace_tuple.py
```

#### Besser: Verwende den veränderlichen Typ `list`:

```file
path: code/immutable_data_use_mutable_type.py
lang: python
```

```terminal3
./pause-and-run code/immutable_data_use_mutable_type.py
```

---

#### Einige veränderliche und unveränderliche Typen in Python:

| Veränderlicher Typ    | Unveränderlicher Typ   |
|-----------------------|------------------------|
|                       | bool                   |
|                       | float                  |
|                       | int                    |
|                       | str                    |
| list                  | tuple                  |
| set                   | frozenset              |
| dict                  |                        |
| bytearray             | bytes                  |
| dataclasses.dataclass | collections.namedtuple |

---

## Reine Funktionen _(pure functions)_

Reine Funktionen in der funktionalen Programmierung verhalten sich wie Funktionen in der Mathematik
(bspw. f(x,y)=2x-3y+2):

1. *Der Ausgabewert hängt nur von den Eingabewerten ab:*
    1. Der Ausgabewert von f(4,1) ist stets 7.
    2. Dies gilt unabhängig von sonstigen veränderlichen Variablen, Zuständen oder Zufallsereignissen.
2. *Es treten keine Seiteneffekte auf:*
    1. Der Aufruf von f(x,y) verändert nicht die Eingabewerte x und y.
    2. Der Aufruf von f(x,y) verändert keine sonstigen Variablen (bspw. a, D oder foo).
    3. Der Aufruf von f(x,y) löst keine Ein- oder Ausgabeoperationen aus:
        1. keine Ein- oder Ausgaben im Nutzerinterface (bspw. Tastatur oder Monitor)
        2. keine Lese- oder Schreiboperationen im Permanentspeicher (bspw. Festplatte)

---

### Haskell

```file
path: code/pure_functions.hs
lang: haskell
```

```terminal6
./pause-and-run code/pure_functions.hs
```

---

### Python

#### Der Ausgabewert kann von weiteren veränderlichen Variablen abhängen:

```file
path: code/pure_functions_dependence_on_additional_variables.py
lang: python
```

```terminal3
./pause-and-run code/pure_functions_dependence_on_additional_variables.py
```

---

#### Eingabewerte können durch den Aufruf einer Funktion verändert werden:

```file
path: code/pure_functions_mutation_of_input_values.py
lang: python
```

```terminal3
./pause-and-run code/pure_functions_mutation_of_input_values.py
```

------

#### Sonstige Variablen können durch den Aufruf einer Funktion verändert werden:

```file
path: code/pure_functions_mutation_of_other_values.py
lang: python
```

```terminal3
./pause-and-run code/pure_functions_mutation_of_other_values.py
```

---

#### Funktionen können Ein- oder Ausgabeoperationen durchführen:

```file
path: code/pure_functions_output_operations.py
lang: python
```

```terminal2
./pause-and-run code/pure_functions_output_operations.py
```

---

## Funktionen als Bürger:innen erster Klasse _(functions as first-class citizens)_

Die »Bürger:innen erster Klasse einer Programmiersprache« können

- einer Variablen als Wert zugewiesen werden,
- einer Funktion als Eingabewert übergeben werden und
- von einer Funktion als Ausgabewert zurückgegeben werden.

Daten (bspw. Zahlen und Zeichenwerte) sind in vielen Programmiersprachen Bürger:innen erster Klasse.

In der funktionalen Programmierung sind auch Funktionen Bürger:innen erster Klasse.

### Haskell

#### Funktionen können als Werte zugewiesen werden:

```file
path: code/first_class_citizens_assignment.hs
lang: haskell
```

```terminal2
./pause-and-run code/first_class_citizens_assignment.hs
```

---

#### Funktionen können als Eingabewerte übergeben werden:

```file
path: code/first_class_citizens_input.hs
lang: haskell
```

```terminal2
./pause-and-run code/first_class_citizens_input.hs
```

#### Funktionen können als Ausgabewerte zurückgeben werden:

```file
path: code/first_class_citizens_output.hs
lang: haskell
```

```terminal3
./pause-and-run code/first_class_citizens_output.hs
```

---

### Python

#### Funktionen können als Werte zugewiesen werden:

```file
path: code/first_class_citizens_assignment.py
lang: python
```

```terminal2
./pause-and-run code/first_class_citizens_assignment.py
```

---

#### Funktionen können als Eingabewerte übergeben werden:

```file
path: code/first_class_citizens_input.py
lang: python
```

```terminal2
./pause-and-run code/first_class_citizens_input.py
```

---

#### Funktionen können als Ausgabewerte zurückgeben werden:

```file
path: code/first_class_citizens_output.py
lang: python
```

```terminal3
./pause-and-run code/first_class_citizens_output.py
```

---

## Funktionen höherer Ordnung _(higher-order functions)_

Funktionen höherer Ordnung

* nehmen Funktionen als Eingabewerte entgegen oder
* geben Funktionen als Ausgabewerte zurück.

---

### Python

#### Funktionen höherer Ordnung nehmen Funktionen als Eingabewerte entgegen:

```file
path: code/first_class_citizens_input.py
lang: python
```

```terminal2
./pause-and-run code/first_class_citizens_input.py
```

---

#### Funktionen höherer Ordnung geben Funktionen als Ausgabewerte zurück:

```file
path: code/first_class_citizens_output.py
lang: python
```

```terminal2
./pause-and-run code/first_class_citizens_output.py
```

---

## Rekursion _(recursion)_

### Haskell

```file
path: code/recursion.hs
lang: haskell
```

```terminal29
./pause-and-run code/recursion.hs
```

---

### Python

```file
path: code/recursion.py
lang: python
```

```terminal20
./pause-and-run code/recursion.py
```

---

## Listenverarbeitung _(list processing)_

### Haskell

```file
path: code/list_processing.hs
lang: haskell
```

```terminal2
./pause-and-run code/list_processing.hs
```

---

## Bedarfsauswertung _(lazy evaluation)_

### Haskell

```file
path: code/lazy_evaluation.hs
lang: haskell
```

```terminal3
./pause-and-run code/lazy_evaluation.hs
```

---

### Python

```file
path: code/lazy_evaluation.py
lang: python
```

```terminal3
./pause-and-run code/lazy_evaluation.py
```

---

# Zusammenfassung

1. Funktionale Programmierung unterscheidet sich durch das Fehlen von Zustand grundlegend von imperativer
   Programmierung.
2. Haskell und andere rein funktionale Programmiersprachen *zwingen* den:die Programmierer:in zur Nutzung funktionaler
   Konzepte.
3. Python und andere Multiparadigmensprachen *erlauben* die Nutzung funktionaler Konzepte.
4. Funktionale Konzepte
    1. machen Software modular und kombinierbar und
    2. erleichtern das Debugging, das Testen und den Beweis der Korrektheit.

# Literatur

## Bücher

1. Steven F. Lott. _Functional Python Programming, 2nd Edition_. Packt Publishing, 2018.
2. Pierre-Yves Saumont. _Functional Programming in Java_. Manning Publications, 2017.
3. Venkat Subramaniam. _Functional Programming in Java_. Pragmatic Bookshelf, 2014.

## World Wide Web

1. Paul Hudak, John Peterson, Joseph Fasel. »A gentle introdcution to Haskell. Version
   98.« https://www.haskell.org/tutorial/index.html
2. A. M. Kuchling. »Functional Programming HOWTO. Release 0.32.« https://docs.python.org/3/howto/functional.html
3. Rainer Grimm. Kategorie »funktional« im Blog »Modernes
   C++«. https://www.grimm-jaud.de/index.php/blog/category/funktional
