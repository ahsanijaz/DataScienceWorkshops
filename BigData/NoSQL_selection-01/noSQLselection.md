---
title       : MapReduce and NoSQL
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



## Distributed File system

> - For very large files (TBs, PBs)
> - Each file is partioned into <color style="color:blue;"> chunks (64MB) </color>
> - Each chunk is replicated several times ($ > 3 $) 
> - Implementations - <color style="color:blue;"> Hadoop file system (HDFS- open source), Google distributed File system (GFS- proprietary) </color> 

---

## Implementation

> - One master node
> - Master partitions file into <color style="color:blue;"> M splits </color> by key
> - Master assigns <color style="color:green;"> workers </color> to the <color style="color:blue;"> M map tasks </color> and keep track of their progress.
> - Workers write output into local disks with <color style="color:blue;"> R regions. </color>
> - Master assigns workers to <color style="color:blue;"> R reduced tasks. </color>
> - Reduce workers read regions from the map worker's local disk.

---

## MapReduce Complete cycle

<img class="center" src= mr.png height=450>

---


## Large-scale Data Processing

> - Many tasks process big data.
> - Want to use hundreds or thousands of CPUs
    - Parallel databases exist - Expensive! Difficult to set up.
> - MapReduce is a lightweight framework, providing:
    - Automatic parallelization and distribution
    - Fault-tolerance
    - I/O scheduling
    - Status and monitoring

---


## Parallel query processing

> - Distributed Query (Microsoft SQL server)
     - Rewrite the query as a union of subqueries
     - Workers communicate through standard interfaces 
     - Same as MR, BUT all results are sent back to head node
> - Parallel Query
     - Each operator is implemented with a parallel query
     - Same as MR


---


## Distributed Query


```r
CREATE VIEW SALES AS
SELECT * from janSales
UNION ALL
SELECT * from febSales
UNION ALL
SELECT * from marchSales
UNION ALL
```

---

## Parallel Query

<img class="center" src= parallelQuery.png height=450>

---

## TeraData Example 

```r
SELECT *
    FROM Orders o, Lines i
WHERE o.order = i.order
AND o.date = today()
```

---

## TeraData Example

<img class="center" src= tera1.png height=450>

---

## TeraData Example

<img class="center" src= tera2.png height=450>

---

## MapReduce Extensions

> - Pig 
    - Relational algebra over Hadoop
> - Hive
    - SQL over hadoop
> - Impala
    - SQL over HDFS; builds on HIVE code

---

## MapReduce vs RDBMS

### RDBMS

- Declarative query language (Pig, HIVE)
- Schemas (HIVE)
- Logical data independence
- Indexing (Hbase)
- Algebraic optimization (Pig, HIVE)
- Caching Views
- ACID/Transactions

### MapReduce

- High Scalability ( $>$ 1000 Nodes)
- Fault tolerance

---

## Hadoop vs. RDBMS

- Comparison of 3 systems
  - Hadoop
  - Vertica (column oriented)
  - Oracle  (row oriented)
- Qualitative
  - Programming model, ease of setup, features
- Quantitative
  - Data loading, different types of queries

---

## Grep Task

- Find 3-byte pattern in 100 byte record
  - 1 match per 10,000 records
- Data set:
  - 10 byte unique key, 90 byte value
  - 1TB spread across 25, 50 or 100 nodes
  - 10 billion records
  

---


## Grep task loading results

<img class="center" src= grepExec.png height=450>

---

## Selection and filter task

<img class="center" src= selectFilter.png height=450>

---

## Aggregate tasks

<img class="center" src= aggregate.png height=450>

---

## NoSQL overview

<!-- Table generated in R 3.3.1 by googleVis 0.6.1 package -->
<!-- Sun Jan 15 17:42:37 2017 -->


<!-- jsHeader -->
<script type="text/javascript">
 
// jsData 
function gvisDataTableID1f4ded911e8 () {
var data = new google.visualization.DataTable();
var datajson =
[
 [
"RDBMS",
false,
true,
true,
"TRUE",
"TRUE",
true,
true,
true,
"Tables",
"sql-like"
],
[
"Memcached",
true,
true,
false,
"FALSE",
"FALSE",
false,
false,
false,
"key_val",
"nosql"
],
[
"MapReduce",
true,
false,
false,
"FALSE",
"TRUE",
false,
false,
false,
"key_val",
"batch"
],
[
"CouchDB",
true,
true,
true,
"record",
"MR",
false,
true,
false,
"document",
"nosql"
],
[
"BigTable (HBase)",
true,
true,
true,
"record",
"MR",
false,
false,
false,
"ext-records",
"nosql"
],
[
"MongoDB",
true,
true,
true,
"record",
"FALSE",
false,
false,
false,
"document",
"nosql"
],
[
"Dynamo",
true,
true,
false,
"FALSE",
"FALSE",
false,
false,
false,
"ext-records",
"nosql"
],
[
"Pig",
true,
false,
false,
"FALSE",
"TRUE",
false,
false,
true,
"Tables",
"sql-like"
],
[
"HIVE",
true,
false,
false,
"FALSE",
"TRUE",
true,
false,
true,
"Tables",
"sql-like"
],
[
"Cassendra",
true,
true,
true,
"EC, record",
"FALSE",
true,
true,
false,
"key_val",
"nosql"
],
[
"Voldemort",
true,
true,
false,
"EC, record",
"FALSE",
false,
false,
false,
"key_val",
"nosql"
],
[
"Riak",
true,
true,
true,
"EC, record",
"MR",
false,
false,
false,
"key_val",
"nosql"
],
[
"Dremel",
true,
false,
false,
"FALSE",
"FALSE",
true,
false,
true,
"Tables",
"sql-like"
],
[
"Megastore",
true,
true,
true,
"entity group",
"FALSE",
true,
false,
true,
"Tables",
"nosql"
],
[
"Tenzing",
true,
false,
false,
"FALSE",
"FALSE",
true,
true,
true,
"Tables",
"sql-like"
],
[
"Spark",
true,
false,
false,
"FALSE",
"TRUE",
true,
false,
true,
"Tables",
"sql-like"
],
[
"Spanner",
true,
true,
true,
"TRUE",
"?",
true,
true,
true,
"Tables",
"sql-like"
],
[
"Accumulo",
true,
true,
true,
"record",
"MR",
true,
false,
false,
"ext-records",
"nosql"
],
[
"Impala",
true,
false,
false,
"FALSE",
"TRUE",
true,
false,
true,
"Tables",
"sql-like"
] 
];
data.addColumn('string','database');
data.addColumn('boolean','scale');
data.addColumn('boolean','pri_index');
data.addColumn('boolean','sec_index');
data.addColumn('string','transactions');
data.addColumn('string','joins_analytics');
data.addColumn('boolean','integr_constrain');
data.addColumn('boolean','views');
data.addColumn('boolean','Language');
data.addColumn('string','data_model');
data.addColumn('string','type_db');
data.addRows(datajson);
return(data);
}
 
// jsDrawChart
function drawChartTableID1f4ded911e8() {
var data = gvisDataTableID1f4ded911e8();
var options = {};
options["allowHtml"] = true;
options["legend"] = "none";
options["width"] = 1000;
options["height"] = 430;
options["fontSize"] = 10;
options["frozenColumns"] = 1;

    var chart = new google.visualization.Table(
    document.getElementById('TableID1f4ded911e8')
    );
    chart.draw(data,options);
    

}
  
 
// jsDisplayChart
(function() {
var pkgs = window.__gvisPackages = window.__gvisPackages || [];
var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
var chartid = "table";
  
// Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
var i, newPackage = true;
for (i = 0; newPackage && i < pkgs.length; i++) {
if (pkgs[i] === chartid)
newPackage = false;
}
if (newPackage)
  pkgs.push(chartid);
  
// Add the drawChart function to the global list of callbacks
callbacks.push(drawChartTableID1f4ded911e8);
})();
function displayChartTableID1f4ded911e8() {
  var pkgs = window.__gvisPackages = window.__gvisPackages || [];
  var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
  window.clearTimeout(window.__gvisLoad);
  // The timeout is set to 100 because otherwise the container div we are
  // targeting might not be part of the document yet
  window.__gvisLoad = setTimeout(function() {
  var pkgCount = pkgs.length;
  google.load("visualization", "1", { packages:pkgs, callback: function() {
  if (pkgCount != pkgs.length) {
  // Race condition where another setTimeout call snuck in after us; if
  // that call added a package, we must not shift its callback
  return;
}
while (callbacks.length > 0)
callbacks.shift()();
} });
}, 100);
}
 
// jsFooter
</script>
 
<!-- jsChart -->  
<script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartTableID1f4ded911e8"></script>
 
<!-- divChart -->
  
<div id="TableID1f4ded911e8" 
  style="width: 1000; height: 430;">
</div>

---

## Relaxing consistency guarantee

<img class="center" src= nosql1.png height=350>

> 1. Ensure high availability
> 2. Support updates

---

## Relaxing consistency guarantee

DataBases: "Everyone MUST see the same thing, either old or new, no matter how long it takes."
NoSQL: "For large applications, we can't afford to wait that long, and maybe it doesn't matter anyway."

New design space: High scalability, high availability, eventual consistency.

---


## Eventual Consistency

- Write conflicts will eventually propogate throughout the system.

> - In absence of updates, all replicas converge towards identical copies.
> - What the application sees in the meantime is sensitive to replication mechanisms.
> - Contrast with RDBMS: Immediate consistency, but maybe deadlocks.

---

## CAP Theorem

> - Consistency
    - Do all applications see the same data?
    
> - Availability 
    - Can I interact with the system in the presence of failures?

> - Partitioning
    - If two sections of your system cannot talk to each other, can they make forward progress on their own?
    - If not, you sacrifice availability
    - If so, you might have to sacrifice consistency

> - Conventional databases assume no partitioning
> - NoSQL systems may sacrfice consistency.

---

## CAP Triangle

<img class="center" src= cap.png height=450>

---

## Features of NoSQL

> 1. Ability to horzontally scale 
> 2. The ability to replicate and partition data over multiple servers
> 3. A simple call level interface (in contrast to SQL binding)
> 4. Weaker concurrency model than ACID (Atomicity, Consistency, Isolation, Durability)
> 5. Efficient used of distributed indexes and RAM
> 6. Dynamically add new attributes 

---


## Horizontal Scalability VS Vertical Scalability

### Horizontal Scalability

Distribute both data and load of operations over many servers, with no RAM or disk shared.

### Vertical Scalability

A database system utilizes many cores and/or CPUs that share RAM and disks.

---

## Data Store categories

> - <b>Key-value Stores:</b> Stores with values and index to find them, based on a programmer defined key.

> - <b>Document stores:</b> Stores documents. The documents are indexed and a simple query mechanism is provided.

> - <b>Wide column stores:</b> Store extensible records that can be partitioned vertically and horizontally across nodes. 

> - <b>Relational Databases:</b> These systems store (and index and query) tuples. 

---


## Key-value stores

### Project Voldemort

- Written in Java, Open source, LinkedIn (most contributions).
- Multi-version concurrency control (MVCC) for
updates.
- Replica updates are asynchronous.
- No guarantee of consistent data
- Guarantee of an up-to-date view if you read a majority of
replicas.
- Optimistic locking for consisten multi-record updates
  - In case of conflict with other process, back out.
- Automatic sharding of data.
- Consistent hashing for distribution
  - data hashed to node K is replicated on node K+1...K+n where n is number of extra copies.
- Nodes can be added or removed from cluster; system adopts automatically.
- Voldemort automatically detects and recovers failed nodes.


---

### Riak

- More functionality than typical key-value store.
- Riak objects can be fetched and stored in JSON
format and thus can have multiple fields (like
documents)
- Only support indices on the primary key. 
- Limits the non-primary fields to storage and fetching as
part of a JSON object. 
- Riak lacks the query mechanisms of the document stores; the only
lookup you can do is on primary key.
- Replication of objects and sharding by
hashing on the primary key. 
- Replica values to be temporarily inconsistent. 
- Tunable consistency by specifying how many replicas
must respond for a successful read.
- Same tuning for successful write.
- Different parts of an application can choose different trade-offs
- Uses consistent hashing. 
- No distinguished node to track status of the system.
- Gossip protocol to track alive nodes and know what data they have- Any node may service a client request. 
- Also includes a map/reduce mechanism to split work over all the nodes in a cluster.

---

### Redis

- The client side does the distributed hashing over servers.
- The servers store data in RAM, but data can be copied to disk for
backup or system shutdown.
- System shutdown needed to add more nodes.
- Like Voldemort, it allows lists and sets to be associated with a key.
- Redis does atomic updates by locking.
- Replication is asynchronous.

---

### Scalaris
- Allows key ranges to be assigned to nodes, rather than simply
hashing to nodes. 
    - A query on a range of values does not need to go to every node.
    - Better load balancing depending on key distributions.

- Replication is synchronous. (copies must be updated before the operation is
complete)
    - Data is guaranteed to be consistent.
- Supports transactions with ACID properties on multiple objects.
- Data is stored in memory, but replication and recovery from node
failures provides durability of the updates.
- Scalaris reads and writes must go to a majority of the replicas before an operation completes. 

---

## Summary of key-value store

<!-- html table generated in R 3.3.1 by xtable 1.8-2 package -->
<!-- Sun Jan 15 17:25:03 2017 -->
<table border=1>
<tr> <th>  </th> <th> database </th> <th> basic_operations </th> <th> store_data </th> <th> Transactions </th> <th> Replication </th> <th> Concurrency </th> <th> Scalability </th>  </tr>
  <tr> <td align="right"> 1 </td> <td> Voldemort </td> <td> TRUE </td> <td> RAM/Disk </td> <td> FALSE </td> <td> Asynchronous </td> <td> MVCC </td> <td> TRUE </td> </tr>
  <tr> <td align="right"> 2 </td> <td> Riak </td> <td> TRUE </td> <td> 5 </td> <td> FALSE </td> <td> Asynchronous </td> <td> MVCC </td> <td> TRUE </td> </tr>
  <tr> <td align="right"> 3 </td> <td> Redis </td> <td> TRUE </td> <td> Both ram and disk </td> <td> FALSE </td> <td> Asynchronous </td> <td> locks </td> <td> TRUE </td> </tr>
  <tr> <td align="right"> 4 </td> <td> Scalaris </td> <td> TRUE </td> <td> RAM/Disk </td> <td> TRUE </td> <td> Synchronous </td> <td> locks </td> <td> TRUE </td> </tr>
  <tr> <td align="right"> 5 </td> <td> Tokyo Cabinet </td> <td> TRUE </td> <td> 5 </td> <td> TRUE </td> <td> Asynchronous </td> <td> locks </td> <td> TRUE </td> </tr>
  <tr> <td align="right"> 6 </td> <td> Memcached </td> <td> TRUE </td> <td> Both ram and disk </td> <td> FALSE </td> <td> Synchronous </td> <td> locks </td> <td> TRUE </td> </tr>
   </table>

---


## Document stores

### SimpleDB

### CouchDB

### MongoDB

### Terrastore

### 

