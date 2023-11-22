---
title: Ejemplos Mkdocs
summary: Ejemplos para cosas de mkdocs.
authors:
    - Daniel Peña Perez
date: 2018-07-10
some_url: https://example.com

---


# Mostrando cards


::cards::  cols=3

- title: Zeus
  content: |
    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
    incididunt ut labore et dolore magna aliqua.
  image: https://www.neoteroi.dev/mkdocs-plugins/img/icons/001-zeus.png
  url: https://en.wikipedia.org/wiki/Zeus

- title: Athena
  content: Lorem ipsum dolor sit amet.
  image: https://www.neoteroi.dev/mkdocs-plugins/img/icons/003-athena.png

- title: Poseidon
  content: Lorem ipsum dolor sit amet.
  image: https://www.neoteroi.dev/mkdocs-plugins/img/icons/007-poseidon.png

::/cards::



::cards::  cols=1

- title: Artemis
  content: Lorem ipsum dolor sit amet.
  image: https://www.neoteroi.dev/mkdocs-plugins/img/icons/021-artemis.png
::/cards::

::cards::  cols=2

- title: Ares
  content: Lorem ipsum dolor sit amet.
  image: https://www.neoteroi.dev/mkdocs-plugins/img/icons/006-ares.png

- title: Nike
  content: Lorem ipsum dolor sit amet.
  image: https://www.neoteroi.dev/mkdocs-plugins/img/icons/027-nike.png

::/cards::






Y pueden cargarse desde ficheros yaml externos [https://www.neoteroi.dev/mkdocs-plugins/cards/](https://www.neoteroi.dev/mkdocs-plugins/cards/)

# Diagramas 

::timeline::

- content: First implementation.
  icon: ':material-rocket-launch-outline:'
  sub_title: 2022-Q1
  title: Launch
- content: Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  icon: ':fontawesome-solid-gem:'
  sub_title: 2022-Q2
  title: New features
- content: Lorem ipsum dolor sit amet.
  icon: ':material-gauge-empty:'
  sub_title: 2022-Q3
  title: More features!
- content: Lorem ipsum dolor sit amet.
  icon: ':material-bug:'
  sub_title: 2022-Q4
  title: Bugs!

::/timeline::

# Gantt

::gantt::

- title: Definition Phase
  activities:
  - title: Creative Brief
    start: 2022-03-03
    lasts: 1 day
  - title: Graphic Design Research
    start: 2022-03-02
    end: 2022-03-10
    lasts: 2 weeks
  - title: Brainstorming / Mood Boarding
    start: 2022-03-11
    end: 2022-03-20

- title: Creation Phase
  activities:
  - title: Sketching
    start: 2022-03-21
    end: 2022-04-01
  - title: Design Building
    start: 2022-04-02
    end: 2022-04-20
  - title: Refining
    start: 2022-04-21
    end: 2022-04-30

- title: Feedback Phase
  activities:
  - title: Presenting
    start: 2022-04-22
    end: 2022-05-01
  - title: Revisions
    start: 2022-05-02
    end: 2022-05-10

- title: Delivery Phase
  activities:
  - title: Final delivery
    start: 2022-05-11
    end: 2022-05-12

::/gantt::


# Tablas

::spantable:: caption="Life Expectancy By Current Age" class="foo"

| Italy @span   |       | 40 @span      |       | 20 @span      |       |
| ------------- | ----- | ------------- | ----- | ------------- | ----- |
|               |       | Men           | Women | Men           | Women |
|               |       | 78            | 82    | 77            | 81    |
| Poland @span  |       | 40 @span      |       | 20 @span      |       |
| ------------- | ----- | ------------- | ----- | ------------- | ----- |
|               |       | Men           | Women | Men           | Women |
|               |       | 78            | 82    | 77            | 81    |

::end-spantable::


Otra

::spantable::

| Country      | Address                                                  |
| ------------ | -------------------------------------------------------- |
| France @span | 8 Rue St Ferréol - 92190 City: Meudon (Île-de-France)    |
|              | 50 boulevard Amiral Courbet - 94310 Orly (Île-de-France) |
|              | ...                                                      |
|              | ...                                                      |
| Italy @span  | Str. S. Maurizio, 12, 10072 Caselle torinese TO          |
|              | S.S. Torino-Asti - 10026 Santena (TO)                    |
|              | ...                                                      |
| Poland @span | al. Jana Pawła II 22, 00-133 Warszawa                    |
|              | plac Trzech Krzyży 4/6, 00-535 Warszawa                  |
|              | ...                                                      |
|              | ...                                                      |

::end-spantable::
