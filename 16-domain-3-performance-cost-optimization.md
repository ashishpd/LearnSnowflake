# Domain 3.0: Performance and Cost Optimization Concepts
## 48 Practice Questions for SnowPro Core Certification

## Overview

This document contains 48 multiple-choice questions covering **Domain 3.0: Performance and Cost Optimization Concepts (16% of exam)**. Topics include:
- Virtual Warehouse sizing and management
- Multi-cluster warehouses
- Clustering and clustering keys
- Query result cache
- Metadata cache
- Warehouse cache
- Materialized views
- Search Optimization Service
- Query optimization techniques
- Cost optimization strategies
- Auto-suspend and auto-resume
- Warehouse monitoring

## How to Use

1. Attempt each question before reading the explanation
2. Review explanations to understand concepts deeply
3. Focus on areas where you get questions wrong
4. Use for self-assessment and exam preparation

---

### Question 1

When should you use clustering in Snowflake?

A. For all tables  
B. For small tables  
C. For large tables (>1TB) with specific query patterns  
D. Never  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Clustering should be used for large tables (>1TB) where queries benefit from partition pruning.
- **A is incorrect**: Clustering has overhead and isn't needed for all tables.
- **B is incorrect**: Small tables don't benefit from clustering.
- **D is incorrect**: Clustering is useful for large tables.

---

### Question 2

What is the duration of Snowflake's query result cache?

A. 1 hour  
B. 12 hours  
C. 24 hours  
D. 7 days  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Query result cache lasts for 24 hours.
- **A is incorrect**: 1 hour is too short.
- **B is incorrect**: 12 hours is not the duration.
- **D is incorrect**: 7 days is for Fail-safe, not result cache.

---

### Question 3

What is the best practice for warehouse sizing?

A. Always use the largest size  
B. Start small and scale up as needed  
C. Always use X-Small  
D. Use Medium for everything  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Start with a small warehouse and scale up based on actual performance needs.
- **A is incorrect**: Largest size wastes credits if not needed.
- **C is incorrect**: X-Small may be too small for production workloads.
- **D is incorrect**: One size doesn't fit all workloads.

---

### Question 4

What is Search Optimization Service used for?

A. General query optimization  
B. Accelerating point lookups and range queries  
C. Compressing data  
D. Backing up data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Search Optimization Service accelerates point lookups (WHERE id = X) and range queries on large tables.
- **A is incorrect**: It's specific to point lookups, not general optimization.
- **C is incorrect**: It doesn't compress data.
- **D is incorrect**: It doesn't backup data.

---

### Question 5

What is a Materialized View used for?

A. Storing query results permanently  
B. Pre-computing expensive queries for faster access  
C. Compressing data  
D. Backing up views  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Materialized Views pre-compute and store query results for faster access to expensive queries.
- **A is incorrect**: While results are stored, the purpose is performance, not just storage.
- **C is incorrect**: Materialized Views don't compress data.
- **D is incorrect**: They're not for backing up views.

---

### Question 6

What is the primary benefit of using appropriate warehouse sizes?

A. Reduced storage costs  
B. Optimal balance of performance and cost  
C. Faster data loading only  
D. Better compression  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Right-sizing warehouses provides optimal balance between query performance and compute costs.
- **A is incorrect**: Warehouse size affects compute costs, not storage.
- **C is incorrect**: It affects all queries, not just loading.
- **D is incorrect**: Warehouse size doesn't affect compression.

---

### Question 7

What is partition pruning?

A. Deleting partitions  
B. Skipping partitions that don't contain relevant data  
C. Merging partitions  
D. Splitting partitions  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Partition pruning is the process of skipping micro-partitions that don't contain data relevant to the query.
- **A is incorrect**: Pruning doesn't delete partitions.
- **C is incorrect**: Pruning doesn't merge partitions.
- **D is incorrect**: Pruning doesn't split partitions.

---

### Question 8

What is the recommended approach for optimizing query performance?

A. Only increase warehouse size  
B. Only add clustering  
C. Combine multiple strategies (warehouse sizing, clustering, query optimization)  
D. Only optimize SQL  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Best results come from combining multiple optimization strategies.
- **A is incorrect**: Warehouse size alone may not be enough.
- **B is incorrect**: Clustering alone may not be enough.
- **D is incorrect**: SQL optimization alone may not be enough.

---

### Question 9

What happens to query performance when you use functions on columns in WHERE clauses?

A. Performance improves  
B. Performance may degrade due to inability to use partition pruning  
C. No impact  
D. Queries fail  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Functions on columns prevent effective partition pruning, which can degrade performance.
- **A is incorrect**: Performance typically degrades, not improves.
- **C is incorrect**: There is an impact.
- **D is incorrect**: Queries don't fail, but performance suffers.

---

### Question 10

What is the purpose of the EXPLAIN command?

A. Execute queries  
B. Show query execution plan  
C. Optimize queries automatically  
D. Cache query results  

**Correct Answer: B**

**Explanation:**
- **B is correct**: EXPLAIN shows the query execution plan without executing the query.
- **A is incorrect**: EXPLAIN doesn't execute queries.
- **C is incorrect**: EXPLAIN shows the plan but doesn't optimize.
- **D is incorrect**: EXPLAIN doesn't cache results.

---

### Question 11

What is clustering depth?

A. Number of clustering columns  
B. Measure of how well data is clustered  
C. Number of partitions  
D. Size of clustered data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Clustering depth measures how well data is clustered (lower is better).
- **A is incorrect**: Clustering depth is a measure, not a count.
- **C is incorrect**: It's not about partition count.
- **D is incorrect**: It's not about data size.

---

### Question 12

When should you use multi-cluster warehouses?

A. For all workloads  
B. For high concurrency scenarios  
C. For small workloads  
D. Never  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Multi-cluster warehouses are ideal for high concurrency scenarios with many concurrent users.
- **A is incorrect**: Not all workloads need multi-cluster.
- **C is incorrect**: Small workloads don't need multi-cluster.
- **D is incorrect**: Multi-cluster is useful for high concurrency.

---

### Question 13

What is the benefit of using compressed files for loading?

A. Only reduced storage  
B. Faster loading due to less data transfer  
C. Better data quality  
D. No benefit  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Compressed files load faster because less data needs to be transferred and processed.
- **A is incorrect**: While storage is reduced, the main benefit for loading is speed.
- **C is incorrect**: Compression doesn't affect data quality.
- **D is incorrect**: There are clear benefits.

---

### Question 14

What is the purpose of monitoring clustering effectiveness?

A. To delete clusters  
B. To determine if re-clustering is needed  
C. To increase cluster count  
D. To disable clustering  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Monitoring clustering helps determine if re-clustering is needed when clustering depth increases.
- **A is incorrect**: Monitoring doesn't delete clusters.
- **C is incorrect**: Cluster count is for warehouses, not data clustering.
- **D is incorrect**: Monitoring helps maintain clustering, not disable it.

---

### Question 15

What is the relationship between warehouse size and query performance?

A. Larger warehouses always mean faster queries  
B. Larger warehouses provide more compute resources, potentially faster queries  
C. Warehouse size has no impact  
D. Smaller warehouses are always faster  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Larger warehouses provide more compute nodes, which can improve query performance, but it's not always guaranteed.
- **A is incorrect**: Larger warehouses help but don't guarantee faster queries (depends on query characteristics).
- **C is incorrect**: Warehouse size definitely impacts performance.
- **D is incorrect**: Smaller warehouses are not always faster.

---

### Question 16

What is the purpose of the result cache?

A. Store all query results permanently  
B. Return cached results for identical queries within 24 hours  
C. Compress query results  
D. Backup query results  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Result cache returns cached results for identical queries within 24 hours without re-execution.
- **A is incorrect**: Cache is temporary (24 hours), not permanent.
- **C is incorrect**: Cache doesn't compress results.
- **D is incorrect**: Cache is not for backup.

---

### Question 17

What is the recommended approach for handling large analytical queries?

A. Use X-Small warehouse  
B. Use appropriately sized warehouse and consider clustering  
C. Always use largest warehouse  
D. Split queries into smaller parts manually  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Use appropriately sized warehouse and consider clustering for large analytical queries.
- **A is incorrect**: X-Small may be too small for large queries.
- **C is incorrect**: Largest may be wasteful if not needed.
- **D is incorrect**: Snowflake handles large queries; manual splitting is usually unnecessary.

---

### Question 18

What happens when you query the same data multiple times?

A. Data is reloaded each time  
B. Result cache may return cached results if query is identical  
C. Data is compressed  
D. Data is deleted  

**Correct Answer: B**

**Explanation:**
- **B is correct**: If the query is identical, the result cache may return cached results within 24 hours.
- **A is incorrect**: Cached results may be returned, not reloaded.
- **C is incorrect**: Data is not compressed on repeated queries.
- **D is incorrect**: Data is not deleted.

---

### Question 19

What is the primary factor in determining warehouse size?

A. Storage size  
B. Query complexity and data volume  
C. Number of users  
D. Database size  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Warehouse size should be based on query complexity and data volume being processed.
- **A is incorrect**: Storage size doesn't determine warehouse size.
- **C is incorrect**: Number of users affects concurrency (multi-cluster), not necessarily warehouse size.
- **D is incorrect**: Database size alone doesn't determine warehouse size.

---

### Question 20

What is the recommended number of clustering columns?

A. 1  
B. 3-4  
C. 10+  
D. Unlimited  

**Correct Answer: B**

**Explanation:**
- **B is correct**: 3-4 clustering columns is the recommended maximum for effective clustering.
- **A is incorrect**: While 1 can work, 3-4 is often better.
- **C is incorrect**: Too many columns reduce clustering effectiveness.
- **D is incorrect**: There are practical limits.

---

### Question 21

What is the default AUTO_SUSPEND value for a warehouse?

A. 60 seconds  
B. 300 seconds  
C. 600 seconds  
D. 3600 seconds  

**Correct Answer: C**

**Explanation:**
- **C is correct**: The default AUTO_SUSPEND is 600 seconds (10 minutes).
- **A is incorrect**: 60 seconds is too short for the default.
- **B is incorrect**: 300 seconds (5 minutes) is not the default.
- **D is incorrect**: 3600 seconds (1 hour) is not the default.

---

### Question 22

What is the purpose of warehouse auto-resume?

A. To prevent warehouses from starting  
B. To automatically start warehouses when queries arrive  
C. To stop warehouses automatically  
D. To resize warehouses automatically  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Auto-resume automatically starts suspended warehouses when queries arrive.
- **A is incorrect**: Auto-resume starts warehouses, not prevents.
- **C is incorrect**: Auto-suspend stops warehouses, not auto-resume.
- **D is incorrect**: Auto-resume doesn't resize warehouses.

---

### Question 23

What is the cost impact of enabling auto-suspend?

A. Increases costs  
B. Reduces costs by stopping idle warehouses  
C. No impact on costs  
D. Only affects storage costs  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Auto-suspend reduces compute costs by automatically stopping warehouses when idle.
- **A is incorrect**: Auto-suspend reduces costs, not increases.
- **C is incorrect**: There is a significant cost impact.
- **D is incorrect**: It affects compute costs, not storage.

---

### Question 24

What is the relationship between warehouse size and credits per hour?

A. Linear relationship (double size = double credits)  
B. Exponential relationship  
C. No relationship  
D. Inverse relationship  

**Correct Answer: A**

**Explanation:**
- **A is correct**: Warehouse sizes have a linear relationship - each size doubles the credits per hour (X-Small=1, Small=2, Medium=4, etc.).
- **B is incorrect**: The relationship is linear, not exponential.
- **C is incorrect**: There is a clear relationship.
- **D is incorrect**: Larger warehouses cost more, not less.

---

### Question 25

What happens to cached data when a warehouse is suspended?

A. Cache is deleted  
B. Cache is preserved  
C. Cache is moved to storage  
D. Cache is compressed  

**Correct Answer: A**

**Explanation:**
- **A is correct**: Warehouse cache is local to compute nodes and is lost when the warehouse is suspended.
- **B is incorrect**: Cache is not preserved across suspensions.
- **C is incorrect**: Cache is not moved; it's lost.
- **D is incorrect**: Cache is not compressed; it's lost.

---

### Question 26

What is the purpose of the SYSTEM$CLUSTERING_INFORMATION function?

A. To create clustering  
B. To view clustering effectiveness and statistics  
C. To delete clustering  
D. To modify clustering  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SYSTEM$CLUSTERING_INFORMATION returns clustering statistics and effectiveness information.
- **A is incorrect**: CLUSTER BY creates clustering, not this function.
- **C is incorrect**: This function doesn't delete clustering.
- **D is incorrect**: ALTER TABLE modifies clustering, not this function.

---

### Question 27

What is the recommended file size for optimal loading performance?

A. 1-10MB compressed  
B. 100-250MB compressed  
C. 500MB-1GB compressed  
D. Any size works equally well  

**Correct Answer: B**

**Explanation:**
- **B is correct**: 100-250MB compressed is the optimal file size for best loading performance.
- **A is incorrect**: Files smaller than 100MB may not utilize parallelism effectively.
- **C is incorrect**: Files larger than 250MB may take longer to process.
- **D is incorrect**: File size does affect performance.

---

### Question 28

What is the purpose of materialized views in query optimization?

A. To store data permanently  
B. To pre-compute expensive aggregations and joins  
C. To compress data  
D. To backup views  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Materialized views pre-compute expensive operations like aggregations and joins for faster query performance.
- **A is incorrect**: While data is stored, the purpose is performance optimization.
- **C is incorrect**: Materialized views don't compress data.
- **D is incorrect**: They're not for backing up views.

---

### Question 29

What is the benefit of using multi-cluster warehouses for BI tools?

A. Reduced storage costs  
B. Better handling of concurrent queries from multiple users  
C. Faster single queries  
D. Better compression  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Multi-cluster warehouses automatically scale to handle concurrent queries from multiple BI tool users.
- **A is incorrect**: Multi-cluster may increase compute costs.
- **C is incorrect**: Multi-cluster helps with concurrency, not single query speed.
- **D is incorrect**: Multi-cluster doesn't affect compression.

---

### Question 30

What is the purpose of the metadata cache?

A. To store query results  
B. To cache table metadata for faster query planning  
C. To store user sessions  
D. To cache warehouse configurations  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Metadata cache stores table metadata, statistics, and schema information for faster query planning.
- **A is incorrect**: Query results are cached separately (result cache).
- **C is incorrect**: User sessions are not cached in metadata cache.
- **D is incorrect**: Warehouse configurations are not in metadata cache.

---

### Question 31

What is the recommended approach for cost optimization?

A. Always use the largest warehouse  
B. Use auto-suspend, right-size warehouses, and optimize queries  
C. Never suspend warehouses  
D. Use only X-Small warehouses  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Cost optimization involves auto-suspend, right-sizing warehouses, and query optimization.
- **A is incorrect**: Largest warehouses waste credits if not needed.
- **C is incorrect**: Not suspending wastes credits on idle time.
- **D is incorrect**: X-Small may be too small for some workloads.

---

### Question 32

What happens when you increase the number of clusters in a multi-cluster warehouse?

A. Storage costs increase  
B. Compute costs may increase but concurrency improves  
C. Query performance always improves  
D. Storage capacity increases  

**Correct Answer: B**

**Explanation:**
- **B is correct**: More clusters increase compute costs but improve concurrency handling.
- **A is incorrect**: Multi-cluster doesn't affect storage costs.
- **C is incorrect**: Performance improvement depends on concurrency needs.
- **D is incorrect**: Multi-cluster doesn't affect storage capacity.

---

### Question 33

What is the purpose of the warehouse cache?

A. To store query results  
B. To cache frequently accessed data on compute nodes  
C. To store user sessions  
D. To cache metadata  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Warehouse cache stores frequently accessed data locally on compute nodes for faster access.
- **A is incorrect**: Query results are in result cache, not warehouse cache.
- **C is incorrect**: User sessions are not in warehouse cache.
- **D is incorrect**: Metadata is in metadata cache, not warehouse cache.

---

### Question 34

What is the recommended approach for optimizing queries with WHERE clauses?

A. Always use functions on columns  
B. Avoid functions on columns in WHERE clauses when possible  
C. Use subqueries in WHERE clauses  
D. WHERE clauses don't affect performance  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Avoiding functions on columns in WHERE clauses allows better partition pruning and index usage.
- **A is incorrect**: Functions on columns can prevent optimization.
- **C is incorrect**: Subqueries may also impact performance.
- **D is incorrect**: WHERE clauses definitely affect performance.

---

### Question 35

What is the purpose of Search Optimization Service?

A. To optimize all queries  
B. To accelerate point lookups on large tables  
C. To compress data  
D. To backup data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Search Optimization Service accelerates point lookups (WHERE id = X) on large tables.
- **A is incorrect**: It's specific to point lookups, not all queries.
- **C is incorrect**: It doesn't compress data.
- **D is incorrect**: It doesn't backup data.

---

### Question 36

What is the cost impact of keeping a warehouse running 24/7?

A. No cost impact  
B. Significant compute cost (credits charged continuously)  
C. Only storage costs  
D. One-time cost  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Keeping a warehouse running 24/7 results in continuous credit charges, significantly increasing costs.
- **A is incorrect**: There is a significant cost impact.
- **C is incorrect**: Compute costs are charged, not just storage.
- **D is incorrect**: Costs are ongoing, not one-time.

---

### Question 37

What is the recommended approach for monitoring warehouse usage?

A. Don't monitor, it's automatic  
B. Use account usage views to track usage and costs  
C. Only monitor during peak hours  
D. Monitoring is not available  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Use SNOWFLAKE.ACCOUNT_USAGE views to monitor warehouse usage, costs, and performance.
- **A is incorrect**: Monitoring is important for optimization.
- **C is incorrect**: Monitor continuously, not just peak hours.
- **D is incorrect**: Monitoring is definitely available.

---

### Question 38

What is the purpose of re-clustering a table?

A. To delete clustering  
B. To improve clustering effectiveness when depth increases  
C. To add more clustering columns  
D. To remove clustering columns  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Re-clustering improves clustering effectiveness when clustering depth increases due to data modifications.
- **A is incorrect**: Re-clustering improves, not deletes clustering.
- **C is incorrect**: ALTER TABLE adds columns, not re-clustering.
- **D is incorrect**: ALTER TABLE removes columns, not re-clustering.

---

### Question 39

What is the relationship between query complexity and warehouse size?

A. Simple queries always need small warehouses  
B. Complex queries may benefit from larger warehouses  
C. Query complexity doesn't matter  
D. All queries need the same warehouse size  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Complex queries with large data scans or aggregations may benefit from larger warehouses.
- **A is incorrect**: Simple queries may run fine on small warehouses, but it's not always the case.
- **C is incorrect**: Query complexity definitely matters.
- **D is incorrect**: Different queries have different resource needs.

---

### Question 40

What is the purpose of the SCALING_POLICY for multi-cluster warehouses?

A. To control storage scaling  
B. To control how quickly clusters are added/removed  
C. To control query performance  
D. To control data compression  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SCALING_POLICY (STANDARD or ECONOMY) controls how quickly clusters are added or removed based on load.
- **A is incorrect**: It's for compute scaling, not storage.
- **C is incorrect**: It affects concurrency, not individual query performance.
- **D is incorrect**: It doesn't control compression.

---

### Question 41

What is the recommended approach for handling mixed workloads?

A. Use one warehouse for everything  
B. Use separate warehouses for different workload types  
C. Always use the largest warehouse  
D. Don't use warehouses  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Using separate warehouses for different workloads (ETL, BI, ad-hoc) prevents resource contention.
- **A is incorrect**: One warehouse can cause contention between workloads.
- **C is incorrect**: Largest may be wasteful and doesn't solve contention.
- **D is incorrect**: Warehouses are required for queries.

---

### Question 42

What is the cost benefit of using auto-suspend with a short timeout?

A. No benefit  
B. Reduces idle time costs by suspending quickly  
C. Increases costs  
D. Only affects storage costs  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Short auto-suspend timeout reduces costs by suspending warehouses quickly when idle.
- **A is incorrect**: There is a significant cost benefit.
- **C is incorrect**: It reduces costs, not increases.
- **D is incorrect**: It affects compute costs, not storage.

---

### Question 43

What is the purpose of monitoring query performance?

A. To increase costs  
B. To identify optimization opportunities  
C. To reduce storage  
D. To encrypt queries  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Monitoring query performance helps identify slow queries and optimization opportunities.
- **A is incorrect**: Monitoring helps reduce costs through optimization.
- **C is incorrect**: Monitoring is for performance, not storage reduction.
- **D is incorrect**: Monitoring doesn't encrypt queries.

---

### Question 44

What is the recommended number of files to load in parallel?

A. 1 file at a time  
B. Multiple files (limited by warehouse size)  
C. Unlimited files  
D. Exactly 10 files  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Loading multiple files in parallel is recommended, limited by warehouse size and resources.
- **A is incorrect**: Parallel loading is more efficient.
- **C is incorrect**: There are practical limits based on warehouse resources.
- **D is incorrect**: The number depends on warehouse size, not a fixed number.

---

### Question 45

What is the purpose of the EXPLAIN command in query optimization?

A. To execute queries faster  
B. To understand query execution plan and identify bottlenecks  
C. To cache queries  
D. To compress queries  

**Correct Answer: B**

**Explanation:**
- **B is correct**: EXPLAIN shows the query execution plan, helping identify bottlenecks and optimization opportunities.
- **A is incorrect**: EXPLAIN doesn't execute queries; it shows the plan.
- **C is incorrect**: EXPLAIN doesn't cache queries.
- **D is incorrect**: EXPLAIN doesn't compress queries.

---

### Question 46

What is the relationship between clustering and query performance?

A. Clustering always improves performance  
B. Clustering improves performance for queries that benefit from partition pruning  
C. Clustering always degrades performance  
D. Clustering has no impact on performance  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Clustering improves performance for queries that filter on clustering columns and benefit from partition pruning.
- **A is incorrect**: Clustering helps specific query patterns, not all queries.
- **C is incorrect**: Clustering doesn't degrade performance when used appropriately.
- **D is incorrect**: Clustering definitely impacts performance for relevant queries.

---

### Question 47

What is the cost impact of using materialized views?

A. No cost impact  
B. Additional storage costs but potential compute savings  
C. Only increases costs  
D. Only reduces costs  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Materialized views add storage costs but can reduce compute costs by avoiding expensive query execution.
- **A is incorrect**: There is a cost impact (storage vs compute trade-off).
- **C is incorrect**: They can reduce compute costs.
- **D is incorrect**: They add storage costs.

---

### Question 48

What is the recommended approach for optimizing warehouse costs?

A. Never suspend warehouses  
B. Use auto-suspend, monitor usage, and right-size warehouses  
C. Always use the largest warehouses  
D. Don't use warehouses  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Optimize costs by using auto-suspend, monitoring usage patterns, and right-sizing warehouses.
- **A is incorrect**: Not suspending wastes credits on idle time.
- **C is incorrect**: Largest warehouses waste credits if not needed.
- **D is incorrect**: Warehouses are required for queries.

---

## Summary

This document contains 48 questions covering **Domain 3.0: Performance and Cost Optimization Concepts**. Focus on:
- Warehouse sizing strategies and best practices
- When to use clustering and how to monitor it
- Understanding caching mechanisms (result, metadata, warehouse)
- Cost optimization techniques (auto-suspend, right-sizing)
- Query performance optimization
- Multi-cluster warehouse configuration

**Key Concepts to Master:**
- Warehouse sizing and cost implications
- Clustering for large tables
- Caching strategies (result cache, metadata cache, warehouse cache)
- Auto-suspend and auto-resume for cost optimization
- Query optimization techniques
- Materialized views and Search Optimization Service
- Monitoring and performance tuning

Good luck with your SnowPro Core Certification exam preparation!

