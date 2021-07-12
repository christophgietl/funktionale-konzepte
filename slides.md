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
    4. Funktionen als Bürger:innen erster Klasse und Funktionen höherer Ordnung
    5. Listenverarbeitung
    6. Bedarfsauswertung
3. Funktionale Konzepte in Python
    1. Unveränderliche Daten
    2. Rekursion
    3. Reine Funktionen
    4. Funktionen als Bürger:innen erster Klasse und Funktionen höherer Ordnung
    5. Listenverarbeitung
    6. Bedarfsauswertung
4. Zusammenfassung

---

# Funktionale Programmierung als Paradigma

TODO:

- Java & Python als imperative Sprachen
- Haskell als rein funktionale Sprache

---

# Funktionale Konzepte in Haskell

## Unveränderliche Daten _(immutable data)_

```file
path: code/immutable_data.hs
lang: haskell
```

```terminal8
./pause-and-run code/immutable_data.hs
```

---

## Rekursion _(recursion)_

Variablen dürfen in rein funktionalen Sprachen ihren Wert nicht ändern.

Daher gibt es *keine Schleifen* (wie bspw. `for i in range(10)` oder `while i<10`).

Haskell und andere rein funktionale Sprachen nutzen stattdessen Rekursion:

```file
path: code/recursion.hs
lang: haskell
```

```terminal2
./pause-and-run code/recursion.hs
```

---

## Reine Funktionen _(pure functions)_

Reine Funktionen verhalten sich wie Funktionen in der Mathematik
(bspw. f(x,y)=2x-3y+2):

1. *Der Ausgabewert hängt nur von den Eingabewerten ab:*
    1. Der Ausgabewert von f(4,1) ist stets 7.
    2. Dies gilt unabhängig von sonstigen veränderlichen Variablen, Zuständen oder Zufallsereignissen.
2. *Es treten keine Seiteneffekte auf:*
    1. Der Aufruf von f(x,y) verändert nicht die Eingabewerte x und y.
    2. Der Aufruf von f(x,y) verändert keine sonstigen Variablen (bspw. a, D oder foo).
    3. Der Aufruf von f(x,y) löst keine Ein- oder Ausgabeoperationen aus:
        1. keine Ein- oder Ausgaben im Nutzerinterface (bspw. Tastatur oder Monitor)
        2. keine Lese- oder Schreibvorgänge im Permanentspeicher (bspw. Festplatte)

Rein funktionale Sprachen erlauben keine unreinen Funktionen.

Für Ein- und Ausgabeoperationen verwendet Haskell stattdessen sogenannte Monaden (bspw. `putStrLn`).

---

```file
path: code/pure_functions.hs
lang: haskell
```

```terminal6
./pause-and-run code/pure_functions.hs
```

---

## Funktionen als Bürger:innen erster Klasse und Funktionen höherer Ordnung _(functions as first-class citizens and higher-order functions)_

Daten (wie bspw. Zahlen und Zeichenwerte) sind in vielen Programmiersprachen *Bürger:innen erster Klasse*.
Das heißt, sie können
- einer Variablen als Wert zugewiesen werden,
- einer Funktion als Eingabewert übergeben werden und
- von einer Funktion als Ausgabewert zurückgegeben werden.


In der funktionalen Programmierung sind auch Funktionen Bürger:innen erster Klasse.

Funktionen, die Funktionen als Eingabewerte entgegennehmen oder als Ausgabewerte zurückgeben, heißen *Funktionen höherer Ordnung*.

### Zuweisung von Werten

```file
path: code/first_class_citizens_assignment.hs
lang: haskell
```

```terminal2
./pause-and-run code/first_class_citizens_assignment.hs
```

---

### Übergabe einer Funktion als Eingabewert

```file
path: code/first_class_citizens_input.hs
lang: haskell
```

```terminal2
./pause-and-run code/first_class_citizens_input.hs
```

### Rückgabe einer Funktion als Ausgabewert

```file
path: code/first_class_citizens_output.hs
lang: haskell
```

```terminal3
./pause-and-run code/first_class_citizens_output.hs
```

---

## Listenverarbeitung _(list processing)_

Haskell und andere rein funktionale Sprachen erlauben *keine Schleifen*.

Deshalb benötigen wir andere Konzepte zur Listenverarbeitung.

### Listenverarbeitung mithilfe von Rekursion

```file
path: code/list_processing_recursion.hs
lang: haskell
```

```terminal2
./pause-and-run code/list_processing_recursion.hs
```

---

### Listenverarbeitung mithilfe von Listenfunktionen

#### Map

`map` ist eine Funktion höherer Ordnung:
- `map` nimmt eine Funktion entgegen, die ein A auf ein B abbildet.
- `map` gibt eine Funktion zurück, die eine Liste von As auf eine Liste von Bs abbildet.

```file
path: code/list_processing_map.hs
lang: haskell
```

```terminal2
./pause-and-run code/list_processing_map.hs
```

---

#### Filter

`filter` ist eine Funktion höherer Ordnung:
- `filter` nimmt ein Prädikat entgegen, d. h. eine Funktion, die ein A auf einen Boolean abbildet.
- `filter` gibt eine Funktion mit folgenden Eigenschaften zurück:
  - Sie bildet eine Liste von As auf eine Liste von As ab.
  - Die Ausgabeliste enthält diejenigen Elemente der Eingabeliste,
    die vom Prädikat auf den Wert `True` abgebildet werden.


```file
path: code/list_processing_filter.hs
lang: haskell
```

```terminal2
./pause-and-run code/list_processing_filter.hs
```

---

#### Fold

`foldl1` ist eine Funktion höherer Ordnung:
- `foldl1` nimmt einen Operator entgegen, der zwei Eingabewerte vom Typ A auf einen Ausgabewert vom Typ A abbildet.
- `foldl1` gibt eine Funktion mit folgenden Eigenschaften zurück:
   - Sie bildet eine Liste von As auf ein A ab.
   - Der Ausgabewert entspricht dem Ergebnis des folgenden Prozesses:
      1. Wende den Operator auf das erste und das zweite Element der Liste an.
      2. Wende den Operator auf das Ergebnis des vorangegangen Schritts und das dritte Element der Liste an.
      3. usw.

```file
path: code/list_processing_fold.hs
lang: haskell
```

```terminal2
./pause-and-run code/list_processing_fold.hs
```

Weitere Fold-Funktionen in Haskell: `foldr1`, `foldl`, `foldr`

---

## Bedarfsauswertung _(lazy evaluation)_

```file
path: code/lazy_evaluation.hs
lang: haskell
```

```terminal3
./pause-and-run code/lazy_evaluation.hs
```

---

# Funktionale Konzepte in Python

## Unveränderliche Daten _(immutable data)_

### Veränderlichkeit von Variablen

```file
path: code/immutable_data_variables.py
lang: python
```

```terminal2
./pause-and-run code/immutable_data_variables.py
```

### Konvention: Variablennamen in Großbuchstaben bezeichnen Konstanten (d. h. unveränderliche Variablen).

```file
path: code/immutable_data_constants.py
lang: python
```

```terminal2
./pause-and-run code/immutable_data_constants.py
```

---

### Unveränderlichkeit von Tupeln

```file
path: code/immutable_data_tuples.py
lang: python
```

```terminal7
./pause-and-run code/immutable_data_tuples.py
```

---

### Einschränkung: Wir können den Wert der Variablen `a` durch einen neuen Tupel ersetzen.

```file
path: code/immutable_data_replace_tuple.py
lang: python
```

```terminal3
./pause-and-run code/immutable_data_replace_tuple.py
```

### Besser: Verwende den veränderlichen Typ `list`.

```file
path: code/immutable_data_use_mutable_type.py
lang: python
```

```terminal3
./pause-and-run code/immutable_data_use_mutable_type.py
```

---

### Einige veränderliche und unveränderliche Typen in Python

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

## Rekursion _(recursion)_

```file
path: code/recursion.py
lang: python
```

```terminal20
./pause-and-run code/recursion.py
```

---

## Reine Funktionen _(pure functions)_

### Abhängigkeit des Ausgabewerts von weiteren veränderlichen Variablen

```file
path: code/pure_functions_dependence_on_additional_variables.py
lang: python
```

```terminal3
./pause-and-run code/pure_functions_dependence_on_additional_variables.py
```

---

### Veränderung von Eingabewerten durch den Aufruf einer Funktion

```file
path: code/pure_functions_mutation_of_input_values.py
lang: python
```

```terminal3
./pause-and-run code/pure_functions_mutation_of_input_values.py
```

---

### Veränderung von sonstige Variablen durch den Aufruf einer Funktion

```file
path: code/pure_functions_mutation_of_other_values.py
lang: python
```

```terminal3
./pause-and-run code/pure_functions_mutation_of_other_values.py
```

---

### Durchführung von Ein- oder Ausgabeoperationen durch Funktionen

```file
path: code/pure_functions_output_operations.py
lang: python
```

```terminal2
./pause-and-run code/pure_functions_output_operations.py
```

---

## Funktionen als Bürger:innen erster Klasse und Funktionen höherer Ordnung _(functions as first-class citizens and higher-order functions)_

### Zuweisung von Werten

```file
path: code/first_class_citizens_assignment.py
lang: python
```

```terminal2
./pause-and-run code/first_class_citizens_assignment.py
```

---

### Übergabe einer Funktion als Eingabewert

```file
path: code/first_class_citizens_input.py
lang: python
```

```terminal2
./pause-and-run code/first_class_citizens_input.py
```

---

### Rückgabe einer Funktion als Ausgabewert

```file
path: code/first_class_citizens_output.py
lang: python
```

```terminal3
./pause-and-run code/first_class_citizens_output.py
```

---

## Listenverarbeitung _(list processing)_

TODO: Pythonify:

```file
path: code/list_processing.hs
lang: haskell
```

```terminal2
./pause-and-run code/list_processing.hs
```

TODO: map

TODO: filter

TODO: reduce

---

## Bedarfsauswertung _(lazy evaluation)_

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

## World Wide Web

1. Paul Hudak, John Peterson, Joseph Fasel. »A gentle introdcution to Haskell. Version
   98.« https://www.haskell.org/tutorial/index.html
2. A. M. Kuchling. »Functional Programming HOWTO. Release 0.32.« https://docs.python.org/3/howto/functional.html
3. Rainer Grimm. Kategorie »funktional« im Blog »Modernes
   C++«. https://www.grimm-jaud.de/index.php/blog/category/funktional
