---
title       : Manipulation of Big data
subtitle    : 
author      : Ahsan Ijaz
job         : Ebryx
# logo        : ebryx-logo.png
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow   # 
# url:
  # lib: ../../libraries
  # assets: /home/ahsan/Personal/Workshop Machine learning/Workshop1 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
embed : TRUE
---



# Four dimensions of Data Science

- Breadth
- Depth
- Scale
- Target

---

## Breadth

Tools | Abstraction
---------|----------
Hadoop | MapReduce
PostgreSQL | Relational Algebra
glm in R | Logistic regression
Tableau| InfoVis

---

## Depth

Structures | Statistics
---------|----------
Management | Linear Algebra
Relational Algebra | Analysis
Standards | Ad hoc files

---

## Scale

Desktop | Cloud
---------|----------
Main memory     | Distributed
R   | Hadoop
Local files | S3, Azure...

---

## Target

Hackers|Analysts
---------|----------
assume proficiency in R, Python|No programming knowledge


---

## What is big data?

### Volume

- The size of data

### Velocity

- Latency of data processing to interactivity

### Variety

- The diversity of sources, formats, quality, structures

---

## Databases

> - Sharing
    - Concurrent access to multiple users
> - Data model enforcement
    - Make sure all applications see clean, organized data
> - Scale
    - work with datasets too large to fit in memory
    - Complexity hiding interface
> - Flexibility
    - use the data in new, unexpected ways

---

## Selection of a database

> - How is data physically organized on disk?
> - What kinds of queries are efficient on this organization?
> - How hard it is to update/add new data? (Organization for reading data might not be good for writing data fast)
> - what happens with Adhoc queries?


---

## Relational databases

> - Activities of users at terminals and most application programs should remain unaffected <color style="color:blue;"> when the internal representation of data is changed </color> and even when some aspects of the external representations are changed.

> - Key idea: Programs that manipulate tabular data exhibit an algebric structure allowing reasoning and manipulation independently of physical data representation. <color style="color:blue;"> Physical data independence </color>

---

## Scalability

### Operationally

> - In the past: <color style="color:blue;"> <b> Works even if data doesn't fit in memory </b> </color>
> - Now: <color style="color:blue;"> <b> Can use 1000s of cheap computers to operate </b> </color>

### Algorithmically

> - In the past: <color style="color:blue;"> <b> Find a polynomial time algorithm that requires no more than $N^m$ operations </b> </color>
> - Now: <color style="color:blue;"> <b> If you have N data items, require no more than $\frac{N^m}{k}$ operations for very large $k$ </b> </color>

---

## Data parallel algorithms 
Convert all images from TIFF to PNG
<img class="center" src= pleasParallel.png height=400>

---

## Data parallel algorithms 
Run 1000s of simulations.

<img class="center" src= parallel2.png height=400>

---

## Data parallel algorithms 

Most frequent word in each document. 

<img class="center" src= parallel3.png height=410>

---

## Data parallel algorithms 

Histogram of words in each document.

<img class="center" src= parallel4.png height=400>

---

## So what can we see?

> - A function that <color style="color:blue;"> maps </color> TIFF into PNG images.
> - A function that <color style="color:blue;"> maps </color> parameters to simulation.
> - A function that <color style="color:blue;"> maps </color> a document to its most common word.
> - A function that <color style="color:blue;"> maps </color> a document to word frequencies.
> - what if we want to compute the frequencies across all documents?

---

## MapReduce Idea:

### Computing frequencies across all documents.

<img class="center" src= mr2.png height=400>


