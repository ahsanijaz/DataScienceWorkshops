---
title       : Decision Trees 
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



## Loan risk assessment 

<img class="center" src= loanrisk.png  height=400>

---

## Intelligent loan application

<img class="center" src= intelligentLoan.png  height=350>

---

## Decision tree

<img class="center" src= dt.png  height=400>

---

## Step 1: Start with empty tree

<img class="center" src= emptyTree.png  height=400>

---

## Step 2: Split on a feature

<img class="center" src= firstStump.png  height=400>

---

## Decide class on majority vote

<img class="center" src= majorityVote.png  height=400>

---

## Which term to split on??

---

## Data example

<img class="center" src= data.png  height=400>

---

## Term vs credit?

<img class="center" src= whichTree.png  height=300>

---

## Quality metric: Classification

- Error measures fraction of mistakes

$$ \color{blue}{\textit{Error} = \frac{\textit{#incorrect predictions}}{\textit{# examples}}} $$

- Best possible value: 0.0
- Worst possible value: 1.0

---

## Calculation of error

<img class="center" src= calculateError.png  height=400>

---


## Splitting on Credit

<img class="center" src= creditSplit.png  height=400>

---

## Splitting on term

<img class="center" src= term.png  height=400>

---


## Greedy decision tree algorithm

> - Step 1: Start with an empty tree
> - Step 2: Select a feature to split data
> - For each split of the tree:
  - Step 3: If nothing more to, make predictions
  - Step 4: Otherwise, go to Step 2 and continue on this split

---

## Level 1 of learned tree

<img class="center" src= level1.png  height=400>

---

## Level 2 of learned tree

<img class="center" src= level2.png  height=400>

---

## Complete tree

<img class="center" src= finalTree.png  height=400>

---

## Stopping condition 1: All data agree on y

<img class="center" src= allyAgree.png  height=400>

---

## Stopping condition 2: All features have been used

<img class="center" src= splitAll.png  height=400>

---
