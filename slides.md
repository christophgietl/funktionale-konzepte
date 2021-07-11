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

# Agenda

1. Funktionale Programmierung vs. imperative Programmierung
2. Funktionale Konzepte
    1. Unveränderliche Daten _(immutable data)_
    2. Reine Funktionen _(pure functions)_
    3. Funktionen als Bürger:innen erster Klasse _(functions as first-class citizens)_
    4. Funktionen höherer Ordnung _(higher-order functions)_
    5. Rekursion _(recursion)_
    6. Listenverarbeitung _(list processing)_
    7. Bedarfsauswertung _(lazy evaluation)_
3. Zusammenfassung und Ausblick

# Folien & Code

https://github.com/christophgietl/funktionale-konzepte

---

# Funktionale Programmierung vs. imperative Programmierung

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

Reine Funktionen in der funktionalen Programmierung verhalten sich
wie Funktionen in der Mathematik (z. B. f(x,y)=2x-3y+2):
1. **Der Ausgabewert hängt nur von den Eingabewerten ab:**
   Der Ausgabewert von f(4,1) ist stets 7,
   unabhängig von sonstigen veränderlichen Variablen,
   Zuständen oder Zufallsereignissen.
2. **Es treten keine Seiteneffekte auf:**
   1. Der Aufruf von f(x,y) verändert nicht die Eingabewerte x und y.
   2. Der Aufruf von f(x,y) verändert keine sonstigen Variablen (z. B. a, D oder foo).
   3. Der Aufruf von f(x,y) löst keine Ein- oder Ausgabeoperationen aus:
      1. keine Ein- oder Ausgaben im Nutzerinterface (z. B. Tastatur oder Monitor)
      2. keine Lese- oder Schreiboperationen im Permanentspeicher (z. B. Festplatte)

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

Daten (z. B. Zahlen und Zeichenwerte) sind in vielen Programmiersprachen Bürger:innen erster Klasse.

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

# Zusammenfassung und Ausblick

## Zusammenfassung

TODO

## Weiterführende Literatur

1. Steven F. Lott. _Functional Python Programming, 2nd Edition_. Packt Publishing, 2018.
2. Pierre-Yves Saumont. _Functional Programming in Java_. Manning Publications, 2017.
3. Venkat Subramaniam. _Functional Programming in Java_. Pragmatic Bookshelf, 2014.
