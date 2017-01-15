---
title       : Model Selection
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



## Model Evaluation
<img class="center" src= advertisingSales.png height=250>

> - Making predictions using model
> - Evaluating loss
> - Remember RSS? 
$$\textit{RSS} = \sum_{i=1}^{N}(y_i - [\color{blue}{w_0} + \color{blue}{w_{1}}x_i])^2 $$


---

## Loss function formalization

> - RSS or squared loss using testing data
> - Root mean square error on testing data
$$\textit{RMSE} = \sqrt {\frac{1}{N}\sum_{i=1}^{N}(y_i - [w_0 + w_{1}x_i])^2} $$

---

## Training error vs model complexity
Constant model: Only $w_0$ parameter used.

<img class="center" src= modelCom1.png height=400>

---

## Training error vs model complexity
Linear model: $y = w_0 + w_1x$

<img class="center" src= modelCom2.png height=400>

---

## Training error vs model complexity
Quadratic model: $y = w_0 + w_1x + w_2x^2$

<img class="center" src= modelCom3.png height=400>

---

## Training error vs model complexity

<img class="center" src= modelCom4.png height=400>

---

## Training error vs model complexity 
Training error decreases as model complexity increases.

<img class="center" src= modelCompC.png height=450>

---

## Training error vs model complexity 

Is a complex model better?
<img class="center" src= modelCom4.png height=400>


---


## Training and testing data
- Loss function calculation using testing data
<img class="center" src= trainTest.png height=450>

---

## Training and testing data
- Training and testing error with model complexity.
<img class="center" src= model_complexityTest.png height=450>

---

## K-Nearest neighbors-model complexity
> - Identify K nearest points to the test observation represented by $\mathbb{N_0}$
> - Calculates conditional probability of points belonging to class j
> - $$\textit{Pr}(Y=j|X=x_0) = \frac{1}{K}\sum_{I\in\mathbb{N}_0}I(y_i = j)$$
Here $x_0$ is the test observation, $K$ is positive integer.
<img class="center" src= knnExpl.png height=300>

---

## K-Nearest neighbors-model with k = 10

<img class="center" src= knn10.png height=450>
Black line indiates the KNN decision boundary with K = 10. The optimum decision boundary is shown as purple dashed line.

---

## K-Nearest neighbors-model with k = 1 and k = 100

<img class="center" src= knn1-100.png height=450>
Black curves indiates the KNN decision boundary with K = 1 and K = 100. The optimum decision boundary is shown as purple dashed line. With K = 1, we have an overly flexible decision boundary. With K = 100, it is not sufficiently flexible.

---

## Training vs testing with increasing complexity on KNN

<img class="center" src= knntesttrain.png height=450>

