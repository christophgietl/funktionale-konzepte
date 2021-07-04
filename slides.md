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

Variablen sind unveränderlich:

```file
path: code/immutable_data.hs
lang: haskell
```

```terminal8
./pause-and-run code/immutable_data.hs
```

---

### Python

#### Variablen sind veränderlich

```file
path: code/immutable_data_variables.py
lang: python
```

```terminal2
./pause-and-run code/immutable_data_variables.py
```

#### Konvention: Variablen mit dauergroßen Namen sind Konstanten (d.h. unveränderlich)

```file
path: code/immutable_data_constants.py
lang: python
```

```terminal2
./pause-and-run code/immutable_data_constants.py
```

---

#### Tupel sind unveränderlich

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

#### Besser: Verwende den veränderlichen Typen `list`

```file
path: code/immutable_data_use_mutable_type.py
lang: python
```

```terminal3
./pause-and-run code/immutable_data_use_mutable_type.py
```

---

#### Einige veränderliche und unveränderliche Typen in Python

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

### Java

```file
path: code/hello.java
lang: java
```

```terminal2
./pause-and-run code/hello.java
```

### Reine Funktionen _(pure functions)_

### Funktionen als Bürger:innen erster Klasse _(functions as first-class citizens)_

### Funktionen höherer Ordnung _(higher-order functions)_

### Rekursion _(recursion)_

### Listenverarbeitung _(list processing)_

### Bedarfsauswertung _(lazy evaluation)_

---

# Zusammenfassung und Ausblick

## Zusammenfassung

TODO

## Weiterführende Literatur

1. TODO
