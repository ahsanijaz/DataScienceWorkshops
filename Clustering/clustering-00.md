---
title       : Clustering techniques
subtitle    : 
author      : Ahsan Ijaz
job         : Ebryx
# logo        : /home/ahsan/Personal/Workshop Machine learning/DataScienceWorkshops/usefulResources-00/ebryx-logo.png
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




## Clustering Applications 

- Structure information together 

<img class="center" src= clusterApp.png height = 400>

---

## Clustering Applications 

- Structure information together 

<img class="center" src= clusterApp2.png height = 400>

---

## Clustering

- Unsupervised learning task
- No labels provided
- Uncovering structure by using only input
- <b> Input </b>: docs as a vector $x_i$
- <b> Output </b>: cluster labels $z_i$

---

## Characteristics of a cluster

> - Center and shape
> - Assign observation $x_i$ (doc) under cluster k (topic label) if 
    - Score under cluster k is higher than others
    - Can think of distance from cluster center as a metric

---

## Ambiguous clusters

<img class="center" src= ambClusters.png height = 400>

---


## K-means clustering

- Partitional clustering approach
- Each cluster is associated with a centroid
- Number of cluster, K are specified.

1. Select K points as initial centroids.
2. <b> repeat </b>
3. Form K clusters by assigning all points to the closest center
4. Recompute the centroids of each cluster.
5. <b> Until </b> the centroids don't change.

---

## Illustrating k-means

<img class="center" src= illustrateKmeans.png height = 500>

---

## K-mean clustering details

- Initial centroids are often chosen randomly.
- Clusters produced vary from one run to another.
- ‘Closeness’ is measured by a proximity measure e.g., Euclidean distance, cosine similarity, or correlation.
- K-means will converge for common proximity measures mentioned above.
- Most of the convergence happens in the first few iterations.

---

## Importance of choosing initial clusters

K-mean clustering can depend heavily on the initial cluster centroids.

<img class="center" src= initialCentroids.png height = 500>

---


## Example of 10 clusters (initial centroid)

<img class="center" src= 10ClusterC.png height = 500>

---


## Example of 10 clusters

<img class="center" src= 10ClusterB.png height = 500>

---

## Limitations of K-means (differing sizes)

<img class="center" src= differSize.png height = 400>

---

## Limitations of K-means (differing density)

<img class="center" src= differDensity.png height = 400>

---

## Limitations of K-means (nonglobular shapes)

<img class="center" src= nonGlobular.png height = 400>

---

## Other examples of limitations

<img class="center" src= clusterChallen2.png height = 550>

---

# Density based clustering

Locate regions of high density separated from one another by region of low density.

<img class="center" src= densitybased.png height = 350>

---

## Notion of density

- Euclidean density
  - Number of points per unit volume
- Probability density

---

## Cell-based Euclidean density

- Divide region into a number of rectangular cells of equal volume and define density as # of points in each cell.

<img class="center" src= densityEuclideanCell.png height = 400>

---

## Center-based Euclidean density

- Number of points with a specified radius of the point

<img class="center" src= centerBasedED.png height = 400>

---

## DBSCAN

- Density = number of points within a specified radius (Eps)
- A point is a <font color="red">core point</font> if it has more than a specified <font color="red">number of neighbors (MinPts)</font> within Eps.
  - These are points that are at the interior of a cluster.
- A <font color="red">border point</font> has fewer than MinPts within Eps, but is in the neighborhood of a core point.
- A <font color="red">noise point</font> is any point that is not a core point nor a border point.

---

## DBSCAN: Core, border and noise points

<img class="center" src= coreBorderNoise.png height = 400>

---

## DBSCAN Algorithm

- Eliminate noise points
- Perform clustering on the remaining points

1. Label all points as core, border or noise points.
2. Eliminate noise points.
3. Put an edge between all core points that are within Eps of each other.
4. Make each group of connected points into one cluster.
5. Assign each border point to one of the clusters of its associated core points.

---

## When DBSCAN works well
- Resistant to noise
- Can handle different shapes and sizes

<img class="center" src= workWell.png height = 400>

---

## When DBSCAN fails

- Varying densities
- High dimensional data

<img class="center" src= workbaddb.png height = 400>

---
