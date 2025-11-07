# Snowflake Multiple Choice Questions with Explanations

## Overview

This document contains 150+ multiple-choice questions covering all major Snowflake topics. Each question includes:
- Four answer options (A, B, C, D)
- Correct answer marked
- Detailed explanation for the correct answer
- Explanations for why other options are incorrect

## How to Use

1. Attempt each question before reading the explanation
2. Review explanations to understand concepts deeply
3. Use for self-assessment and exam preparation
4. Focus on areas where you get questions wrong

---

## Table of Contents

1. [Architecture Questions (1-25)](#architecture-questions-1-25)
2. [Virtual Warehouses Questions (26-40)](#virtual-warehouses-questions-26-40)
3. [Data Loading Questions (41-60)](#data-loading-questions-41-60)
4. [Data Sharing Questions (61-75)](#data-sharing-questions-61-75)
5. [Security Questions (76-95)](#security-questions-76-95)
6. [Performance Optimization Questions (96-115)](#performance-optimization-questions-96-115)
7. [SQL and Querying Questions (116-130)](#sql-and-querying-questions-116-130)
8. [Advanced Features Questions (131-150)](#advanced-features-questions-131-150)

---

## Architecture Questions (1-25)

### Question 1

What are the three layers of Snowflake's architecture?

A. Storage, Compute, Network  
B. Cloud Services, Compute, Storage  
C. Database, Schema, Table  
D. Input, Process, Output  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Snowflake's architecture consists of Cloud Services Layer (authentication, metadata, query optimization), Compute Layer (Virtual Warehouses), and Storage Layer (database storage).
- **A is incorrect**: Network is not a separate layer in Snowflake's architecture.
- **C is incorrect**: Database, Schema, and Table are logical objects, not architectural layers.
- **D is incorrect**: These are generic processing concepts, not Snowflake's specific architecture.

---

### Question 2

Which layer in Snowflake handles query optimization?

A. Compute Layer  
B. Storage Layer  
C. Cloud Services Layer  
D. Network Layer  

**Correct Answer: C**

**Explanation:**
- **C is correct**: The Cloud Services Layer handles query parsing, optimization, and planning before queries are sent to compute resources.
- **A is incorrect**: The Compute Layer executes queries but doesn't optimize them.
- **B is incorrect**: The Storage Layer stores data but doesn't handle query optimization.
- **D is incorrect**: There is no separate Network Layer in Snowflake's architecture.

---

### Question 3

What is the primary benefit of separating storage and compute in Snowflake?

A. Reduced storage costs  
B. Independent scaling of storage and compute  
C. Faster query execution  
D. Better data compression  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Separating storage and compute allows you to scale them independently - you can add compute without adding storage, and vice versa.
- **A is incorrect**: While separation may help with cost optimization, it doesn't directly reduce storage costs.
- **C is incorrect**: Separation doesn't directly make queries faster; it enables better resource utilization.
- **D is incorrect**: Data compression is a storage feature, not directly related to the separation of storage and compute.

---

### Question 4

How does Snowflake store data in the Storage Layer?

A. Row-based format  
B. Columnar format  
C. Document-based format  
D. Graph-based format  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Snowflake uses columnar storage format, which provides better compression and is optimized for analytical queries.
- **A is incorrect**: Row-based storage is used in transactional databases, not Snowflake.
- **C is incorrect**: Document-based storage is used in NoSQL databases like MongoDB.
- **D is incorrect**: Graph-based storage is used in graph databases like Neo4j.

---

### Question 5

What is the default compression ratio typically achieved in Snowflake?

A. 1-2x  
B. 3-5x  
C. 6-8x  
D. 10x or more  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Snowflake typically achieves 3-5x compression due to columnar storage and automatic compression algorithms.
- **A is incorrect**: 1-2x compression is too low; Snowflake achieves better compression.
- **C is incorrect**: While possible, 6-8x is not the typical compression ratio.
- **D is incorrect**: 10x compression is not typical for Snowflake.

---

### Question 6

What encryption standard does Snowflake use for data at rest?

A. AES-128  
B. AES-256  
C. RSA-2048  
D. DES-256  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Snowflake uses AES-256 encryption for data at rest, which is a strong encryption standard.
- **A is incorrect**: AES-128 is weaker than AES-256 and not used by Snowflake.
- **C is incorrect**: RSA-2048 is an asymmetric encryption algorithm, not used for data at rest encryption.
- **D is incorrect**: DES-256 is not a valid encryption standard.

---

### Question 7

What is a micro-partition in Snowflake?

A. A small database  
B. An automatic partition of 16MB compressed  
C. A user-defined partition  
D. A compute cluster  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Micro-partitions are automatic partitions in Snowflake, typically 16MB compressed (up to 500MB uncompressed).
- **A is incorrect**: A micro-partition is not a database; it's a storage unit.
- **C is incorrect**: Micro-partitions are automatic, not user-defined.
- **D is incorrect**: A micro-partition is a storage concept, not a compute resource.

---

### Question 8

Which layer manages authentication in Snowflake?

A. Compute Layer  
B. Storage Layer  
C. Cloud Services Layer  
D. Application Layer  

**Correct Answer: C**

**Explanation:**
- **C is correct**: The Cloud Services Layer handles authentication, access control, and security.
- **A is incorrect**: The Compute Layer executes queries but doesn't handle authentication.
- **B is incorrect**: The Storage Layer stores data but doesn't handle authentication.
- **D is incorrect**: There is no Application Layer in Snowflake's architecture.

---

### Question 9

What happens when you query data in Snowflake?

A. Data is moved to compute nodes  
B. Compute nodes access shared storage  
C. Data is copied to local cache  
D. Data is streamed from external sources  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Compute nodes access the shared storage layer directly; data is not moved or copied.
- **A is incorrect**: Data is not moved to compute nodes; they access shared storage.
- **C is incorrect**: While caching may occur, the primary access is to shared storage.
- **D is incorrect**: Data is not streamed from external sources during normal queries.

---

### Question 10

What is the maximum number of micro-partitions that can be scanned in a single query?

A. 100  
B. 1,000  
C. Unlimited  
D. Depends on warehouse size  

**Correct Answer: C**

**Explanation:**
- **C is correct**: There is no hard limit on the number of micro-partitions that can be scanned; Snowflake automatically optimizes partition pruning.
- **A is incorrect**: 100 is not a limit; Snowflake can scan many more partitions.
- **B is incorrect**: 1,000 is not a limit; Snowflake can scan unlimited partitions.
- **D is incorrect**: Warehouse size affects compute power, not the number of partitions that can be scanned.

---

### Question 11

Which component in Snowflake's architecture is responsible for metadata management?

A. Virtual Warehouse  
B. Database  
C. Cloud Services Layer  
D. Storage Layer  

**Correct Answer: C**

**Explanation:**
- **C is correct**: The Cloud Services Layer manages all metadata including table schemas, statistics, and query metadata.
- **A is incorrect**: Virtual Warehouses are compute resources, not metadata managers.
- **B is incorrect**: Databases are logical containers, not metadata managers.
- **D is incorrect**: The Storage Layer stores data, not metadata.

---

### Question 12

What is the primary advantage of Snowflake's columnar storage?

A. Faster writes  
B. Better compression and faster aggregations  
C. Easier data updates  
D. Smaller storage requirements  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Columnar storage provides better compression (similar values together) and faster aggregations (only read needed columns).
- **A is incorrect**: Columnar storage is optimized for reads, not writes.
- **C is incorrect**: Updates can be slower in columnar storage.
- **D is incorrect**: While compression helps, the primary advantage is query performance, not just storage size.

---

### Question 13

How does Snowflake ensure data durability?

A. Replication across multiple regions  
B. Automatic backups  
C. Time Travel  
D. All of the above  

**Correct Answer: D**

**Explanation:**
- **D is correct**: Snowflake uses replication, automatic backups, Time Travel, and Fail-safe to ensure data durability.
- **A is incorrect**: While replication is part of it, it's not the only mechanism.
- **B is incorrect**: While backups are part of it, it's not the only mechanism.
- **C is incorrect**: While Time Travel helps, it's not the only mechanism.

---

### Question 14

What is the purpose of the Cloud Services Layer?

A. Only authentication  
B. Only query optimization  
C. Coordination of all Snowflake activities  
D. Only metadata management  

**Correct Answer: C**

**Explanation:**
- **C is correct**: The Cloud Services Layer coordinates all activities including authentication, metadata management, query optimization, and infrastructure management.
- **A is incorrect**: Authentication is just one function of the Cloud Services Layer.
- **B is incorrect**: Query optimization is just one function.
- **D is incorrect**: Metadata management is just one function.

---

### Question 15

In Snowflake's architecture, where is query execution performed?

A. Cloud Services Layer  
B. Compute Layer (Virtual Warehouses)  
C. Storage Layer  
D. Network Layer  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Query execution happens in the Compute Layer using Virtual Warehouses.
- **A is incorrect**: The Cloud Services Layer optimizes queries but doesn't execute them.
- **C is incorrect**: The Storage Layer stores data but doesn't execute queries.
- **D is incorrect**: There is no Network Layer in Snowflake's architecture.

---

### Question 16

What happens to data when a Virtual Warehouse is suspended?

A. Data is deleted  
B. Data remains in storage  
C. Data is moved to backup  
D. Data is compressed further  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Data remains in the Storage Layer when a warehouse is suspended; only compute resources are stopped.
- **A is incorrect**: Data is never deleted when a warehouse is suspended.
- **C is incorrect**: Data is not moved; it stays in the same storage location.
- **D is incorrect**: Suspending a warehouse doesn't trigger additional compression.

---

### Question 17

Which layer in Snowflake is automatically scaled?

A. Only Compute Layer  
B. Only Storage Layer  
C. Both Compute and Storage Layers  
D. None of the layers  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Both Compute Layer (Virtual Warehouses can be resized) and Storage Layer (automatically scales with data) are automatically scaled.
- **A is incorrect**: Storage also scales automatically.
- **B is incorrect**: Compute also scales automatically.
- **D is incorrect**: Both layers scale automatically.

---

### Question 18

What is the relationship between Virtual Warehouses and the Storage Layer?

A. Each warehouse has its own storage  
B. Warehouses share the same storage  
C. Storage is distributed across warehouses  
D. Warehouses don't access storage  

**Correct Answer: B**

**Explanation:**
- **B is correct**: All Virtual Warehouses access the same shared Storage Layer.
- **A is incorrect**: Warehouses don't have dedicated storage; they share it.
- **C is incorrect**: Storage is not distributed; it's shared.
- **D is incorrect**: Warehouses definitely access storage to read and write data.

---

### Question 19

What information is stored in micro-partition metadata?

A. Only column names  
B. Min/max values, null counts, and other statistics  
C. Only row counts  
D. Only data types  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Micro-partition metadata includes min/max values, null counts, distinct value counts, and other statistics used for query optimization.
- **A is incorrect**: Column names are in schema metadata, not partition metadata.
- **C is incorrect**: Row counts are part of it, but not the only information.
- **D is incorrect**: Data types are in schema metadata, not partition metadata.

---

### Question 20

How does Snowflake optimize query performance using micro-partitions?

A. By scanning all partitions  
B. By partition pruning based on query filters  
C. By merging partitions  
D. By deleting unused partitions  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Snowflake uses partition pruning to skip partitions that don't contain relevant data based on query filters and metadata.
- **A is incorrect**: Scanning all partitions would be inefficient; Snowflake prunes partitions.
- **C is incorrect**: Snowflake doesn't merge partitions; it prunes them.
- **D is incorrect**: Snowflake doesn't delete partitions based on queries.

---

### Question 21

What is the primary function of the Cloud Services Layer in query processing?

A. Execute queries  
B. Parse, optimize, and coordinate query execution  
C. Store query results  
D. Cache query results  

**Correct Answer: B**

**Explanation:**
- **B is correct**: The Cloud Services Layer parses SQL, optimizes queries, and coordinates execution but doesn't execute them.
- **A is incorrect**: Query execution happens in the Compute Layer.
- **C is incorrect**: Results are stored in the Storage Layer or returned to clients.
- **D is incorrect**: Caching happens at the warehouse level, not Cloud Services.

---

### Question 22

Which statement about Snowflake's architecture is true?

A. Storage and compute must scale together  
B. Storage and compute can scale independently  
C. Compute scales automatically but storage doesn't  
D. Storage scales automatically but compute doesn't  

**Correct Answer: B**

**Explanation:**
- **B is correct**: The separation of storage and compute allows independent scaling of each.
- **A is incorrect**: They don't need to scale together; that's the benefit of separation.
- **C is incorrect**: Both can scale automatically.
- **D is incorrect**: Both can scale automatically.

---

### Question 23

What happens to metadata when a table is modified?

A. Metadata is deleted  
B. Metadata is updated automatically  
C. Metadata must be manually updated  
D. Metadata is not affected  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Snowflake automatically updates metadata when tables are modified.
- **A is incorrect**: Metadata is not deleted; it's updated.
- **C is incorrect**: Metadata updates are automatic, not manual.
- **D is incorrect**: Metadata is definitely affected by table modifications.

---

### Question 24

What is the typical size of a micro-partition when uncompressed?

A. Up to 16MB  
B. Up to 100MB  
C. Up to 500MB  
D. Up to 1GB  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Micro-partitions can be up to 500MB uncompressed (16MB compressed).
- **A is incorrect**: 16MB is the compressed size, not uncompressed.
- **B is incorrect**: 100MB is less than the maximum uncompressed size.
- **D is incorrect**: 1GB exceeds the maximum uncompressed size.

---

### Question 25

Which layer handles transaction management in Snowflake?

A. Compute Layer  
B. Storage Layer  
C. Cloud Services Layer  
D. Application Layer  

**Correct Answer: C**

**Explanation:**
- **C is correct**: The Cloud Services Layer handles transaction management, ensuring ACID properties.
- **A is incorrect**: The Compute Layer executes transactions but doesn't manage them.
- **B is incorrect**: The Storage Layer stores data but doesn't manage transactions.
- **D is incorrect**: There is no Application Layer in Snowflake's architecture.

---

## Virtual Warehouses Questions (26-40)

### Question 26

What is the smallest Virtual Warehouse size in Snowflake?

A. Tiny  
B. X-Small  
C. Small  
D. Micro  

**Correct Answer: B**

**Explanation:**
- **B is correct**: X-Small is the smallest warehouse size (1 credit/hour, 1 compute node).
- **A is incorrect**: "Tiny" is not a valid warehouse size.
- **C is incorrect**: Small is larger than X-Small.
- **D is incorrect**: "Micro" is not a valid warehouse size.

---

### Question 27

How many compute nodes does an X-Small warehouse have?

A. 0  
B. 1  
C. 2  
D. 4  

**Correct Answer: B**

**Explanation:**
- **B is correct**: An X-Small warehouse has 1 compute node.
- **A is incorrect**: X-Small has at least 1 node.
- **C is incorrect**: 2 nodes would be a Small warehouse.
- **D is incorrect**: 4 nodes would be a Medium warehouse.

---

### Question 28

What happens when AUTO_SUSPEND is set on a warehouse?

A. Warehouse is always running  
B. Warehouse suspends after specified idle time  
C. Warehouse cannot be resumed  
D. Warehouse is deleted  

**Correct Answer: B**

**Explanation:**
- **B is correct**: AUTO_SUSPEND automatically suspends the warehouse after the specified idle time (in seconds).
- **A is incorrect**: AUTO_SUSPEND allows the warehouse to stop when idle.
- **C is incorrect**: Suspended warehouses can be resumed automatically or manually.
- **D is incorrect**: Suspending doesn't delete the warehouse.

---

### Question 29

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

### Question 30

What is the purpose of multi-cluster warehouses?

A. Reduce storage costs  
B. Handle high concurrency  
C. Increase storage capacity  
D. Reduce compute costs  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Multi-cluster warehouses automatically add clusters to handle high concurrency workloads.
- **A is incorrect**: Multi-cluster doesn't reduce storage costs; it may increase compute costs.
- **C is incorrect**: Multi-cluster doesn't affect storage capacity.
- **D is incorrect**: Multi-cluster may increase compute costs due to additional clusters.

---

### Question 31

Which scaling policy is more conservative when adding clusters?

A. STANDARD  
B. ECONOMY  
C. AGGRESSIVE  
D. CONSERVATIVE  

**Correct Answer: B**

**Explanation:**
- **B is correct**: ECONOMY scaling policy is more conservative, waiting longer before adding clusters.
- **A is incorrect**: STANDARD is the default, more balanced approach.
- **C is incorrect**: AGGRESSIVE is not a valid scaling policy.
- **D is incorrect**: CONSERVATIVE is not a valid scaling policy.

---

### Question 32

What happens to running queries when a warehouse is resized?

A. Queries are cancelled  
B. Queries continue running  
C. Queries are paused  
D. Queries fail  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Running queries continue to completion when a warehouse is resized; the resize happens after current queries finish.
- **A is incorrect**: Queries are not cancelled during resize.
- **C is incorrect**: Queries are not paused; they continue.
- **D is incorrect**: Queries don't fail during resize.

---

### Question 33

How do you manually suspend a warehouse?

A. DROP WAREHOUSE  
B. ALTER WAREHOUSE ... SUSPEND  
C. STOP WAREHOUSE  
D. PAUSE WAREHOUSE  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Use `ALTER WAREHOUSE ... SUSPEND` to manually suspend a warehouse.
- **A is incorrect**: DROP WAREHOUSE deletes the warehouse, not suspends it.
- **C is incorrect**: STOP WAREHOUSE is not valid SQL syntax.
- **D is incorrect**: PAUSE WAREHOUSE is not valid SQL syntax.

---

### Question 34

What is the maximum number of clusters in a multi-cluster warehouse?

A. 5  
B. 10  
C. 20  
D. No hard limit (but practical limits apply)  

**Correct Answer: D**

**Explanation:**
- **D is correct**: While there's no hard limit, practical limits apply based on account type and resources.
- **A is incorrect**: 5 is not a hard limit.
- **B is incorrect**: 10 is not a hard limit.
- **C is incorrect**: 20 is not a hard limit.

---

### Question 35

When does a warehouse automatically resume?

A. Never  
B. Only when manually resumed  
C. When AUTO_RESUME is TRUE and a query arrives  
D. Always after 1 hour  

**Correct Answer: C**

**Explanation:**
- **C is correct**: A warehouse automatically resumes when AUTO_RESUME is TRUE (default) and a query arrives.
- **A is incorrect**: Warehouses can auto-resume if configured.
- **B is incorrect**: Auto-resume happens automatically, not just manually.
- **D is incorrect**: Auto-resume is triggered by queries, not time-based.

---

### Question 36

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

### Question 37

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

### Question 38

Which warehouse size would you use for a small development workload?

A. 6X-Large  
B. Large  
C. X-Small  
D. 3X-Large  

**Correct Answer: C**

**Explanation:**
- **C is correct**: X-Small is appropriate for small development workloads to minimize costs.
- **A is incorrect**: 6X-Large is for very large production workloads.
- **B is incorrect**: Large is for medium to large production workloads.
- **D is incorrect**: 3X-Large is for large production workloads.

---

### Question 39

What is the minimum number of clusters in a multi-cluster warehouse?

A. 0  
B. 1  
C. 2  
D. 3  

**Correct Answer: B**

**Explanation:**
- **B is correct**: The minimum cluster count is 1 (single cluster mode).
- **A is incorrect**: At least 1 cluster is required.
- **C is incorrect**: 2 is not the minimum; you can start with 1.
- **D is incorrect**: 3 is not the minimum.

---

### Question 40

How do you check if a warehouse is currently running?

A. SHOW WAREHOUSES  
B. DESCRIBE WAREHOUSE  
C. SELECT from WAREHOUSE_STATUS  
D. Check the warehouse state in SHOW WAREHOUSES output  

**Correct Answer: D**

**Explanation:**
- **D is correct**: The `SHOW WAREHOUSES` command displays the state (RUNNING, SUSPENDED, etc.) of warehouses.
- **A is incorrect**: While SHOW WAREHOUSES shows warehouses, you need to check the state column.
- **B is incorrect**: DESCRIBE WAREHOUSE shows configuration, not current state.
- **C is incorrect**: There is no WAREHOUSE_STATUS table.

---

## Data Loading Questions (41-60)

### Question 41

What is the primary command for bulk loading data into Snowflake?

A. INSERT INTO  
B. COPY INTO  
C. LOAD DATA  
D. IMPORT DATA  

**Correct Answer: B**

**Explanation:**
- **B is correct**: `COPY INTO` is the primary command for bulk loading data into Snowflake tables.
- **A is incorrect**: INSERT INTO is for small volumes, not bulk loading.
- **C is incorrect**: LOAD DATA is not a valid Snowflake command.
- **D is incorrect**: IMPORT DATA is not a valid Snowflake command.

---

### Question 42

Which file format is NOT natively supported by Snowflake's COPY INTO?

A. CSV  
B. JSON  
C. Excel (.xlsx)  
D. Parquet  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Excel (.xlsx) files are not natively supported; you need to convert to CSV first.
- **A is incorrect**: CSV is fully supported.
- **B is incorrect**: JSON is fully supported.
- **D is incorrect**: Parquet is fully supported.

---

### Question 43

What is the optimal file size for loading into Snowflake?

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

### Question 44

What does the ON_ERROR = 'CONTINUE' option do in COPY INTO?

A. Stops loading on first error  
B. Continues loading, skipping errors  
C. Retries failed rows  
D. Logs errors but doesn't load data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: ON_ERROR = 'CONTINUE' continues loading and skips rows with errors.
- **A is incorrect**: That would be ON_ERROR = 'ABORT_STATEMENT'.
- **C is incorrect**: COPY INTO doesn't automatically retry; you need to manually retry.
- **D is incorrect**: Data is still loaded; errors are just skipped.

---

### Question 45

What is Snowpipe?

A. A data transformation tool  
B. A continuous data ingestion service  
C. A data visualization tool  
D. A backup service  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Snowpipe is Snowflake's continuous, event-driven data ingestion service.
- **A is incorrect**: Snowpipe loads data but doesn't transform it (though transformations can be added).
- **C is incorrect**: Snowpipe is not for visualization.
- **D is incorrect**: Snowpipe is for loading data, not backing it up.

---

### Question 46

What triggers a Snowpipe to load data?

A. Manual execution  
B. Scheduled execution  
C. Cloud storage events (S3, Azure, GCS)  
D. Database triggers  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Snowpipe is triggered by cloud storage events when files arrive (with AUTO_INGEST = TRUE).
- **A is incorrect**: Snowpipe is automatic, not manual.
- **B is incorrect**: Snowpipe is event-driven, not scheduled.
- **D is incorrect**: Database triggers don't trigger Snowpipe.

---

### Question 47

What is the advantage of using compressed files for loading?

A. Reduced storage costs  
B. Faster loading  
C. Better data quality  
D. Smaller file sizes only  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Compressed files load faster because less data needs to be transferred and processed.
- **A is incorrect**: While compression helps, the main advantage for loading is speed.
- **C is incorrect**: Compression doesn't affect data quality.
- **D is incorrect**: Smaller files are a benefit, but faster loading is the key advantage.

---

### Question 48

What does VALIDATION_MODE = 'RETURN_ERRORS' do?

A. Loads data and returns errors  
B. Validates files without loading data  
C. Loads only valid rows  
D. Skips validation  

**Correct Answer: B**

**Explanation:**
- **B is correct**: VALIDATION_MODE = 'RETURN_ERRORS' validates files and returns errors without loading any data.
- **A is incorrect**: It doesn't load data; it only validates.
- **C is incorrect**: No data is loaded in validation mode.
- **D is incorrect**: It performs validation, not skips it.

---

### Question 49

Which compression format is recommended for CSV files in Snowflake?

A. ZIP  
B. GZIP  
C. BZIP2  
D. RAR  

**Correct Answer: B**

**Explanation:**
- **B is correct**: GZIP is the recommended compression format for CSV files in Snowflake.
- **A is incorrect**: ZIP is supported but GZIP is preferred.
- **C is incorrect**: BZIP2 is supported but slower than GZIP.
- **D is incorrect**: RAR is not supported by Snowflake.

---

### Question 50

What is the difference between an internal stage and an external stage?

A. No difference  
B. Internal stages are in Snowflake, external stages are in cloud storage  
C. Internal stages are faster  
D. External stages cost more  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Internal stages store files in Snowflake, while external stages reference files in cloud storage (S3, Azure, GCS).
- **A is incorrect**: There is a significant difference.
- **C is incorrect**: Speed depends on many factors, not just stage type.
- **D is incorrect**: External stages may actually reduce costs by not storing data in Snowflake.

---

### Question 51

What happens if you load the same file twice with COPY INTO?

A. Data is duplicated  
B. Data is updated  
C. Snowflake skips already loaded files (by default)  
D. An error occurs  

**Correct Answer: C**

**Explanation:**
- **C is correct**: By default, Snowflake tracks loaded files and skips files that have already been loaded to prevent duplicates.
- **A is incorrect**: Snowflake prevents duplicates by default.
- **B is incorrect**: Data is not updated; files are skipped.
- **D is incorrect**: No error occurs; files are silently skipped.

---

### Question 52

What is the purpose of the PATTERN parameter in COPY INTO?

A. Validate data patterns  
B. Select files matching a regex pattern  
C. Transform data  
D. Compress files  

**Correct Answer: B**

**Explanation:**
- **B is correct**: PATTERN uses regex to select which files to load from a stage.
- **A is incorrect**: PATTERN doesn't validate data; it selects files.
- **C is incorrect**: PATTERN doesn't transform data.
- **D is incorrect**: PATTERN doesn't compress files.

---

### Question 53

Can you transform data during loading with COPY INTO?

A. No, never  
B. Yes, using a SELECT statement in the FROM clause  
C. Only with Snowpipe  
D. Only with external tables  

**Correct Answer: B**

**Explanation:**
- **B is correct**: You can transform data during COPY INTO by using a SELECT statement in the FROM clause.
- **A is incorrect**: Transformation is possible with SELECT.
- **C is incorrect**: COPY INTO also supports transformations.
- **D is incorrect**: External tables are for querying, not loading with transformations.

---

### Question 54

What is the maximum number of files that can be loaded in parallel?

A. 10  
B. 100  
C. Limited by warehouse size  
D. Unlimited  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Parallel loading is limited by warehouse size - larger warehouses can load more files in parallel.
- **A is incorrect**: 10 is too low; Snowflake can handle more.
- **B is incorrect**: 100 is not a hard limit; it depends on warehouse size.
- **D is incorrect**: There are practical limits based on warehouse resources.

---

### Question 55

What does AUTO_INGEST = TRUE do in Snowpipe?

A. Automatically compresses files  
B. Enables automatic loading when files arrive  
C. Automatically validates files  
D. Automatically deletes files after loading  

**Correct Answer: B**

**Explanation:**
- **B is correct**: AUTO_INGEST = TRUE enables automatic loading when files arrive in the external stage.
- **A is incorrect**: AUTO_INGEST doesn't compress files.
- **C is incorrect**: AUTO_INGEST doesn't validate; it loads.
- **D is incorrect**: AUTO_INGEST doesn't delete files.

---

### Question 56

What information is available in the LOAD_HISTORY table function?

A. Only success status  
B. File names, rows loaded, errors  
C. Only error messages  
D. Only file names  

**Correct Answer: B**

**Explanation:**
- **B is correct**: LOAD_HISTORY provides comprehensive information including file names, rows loaded, errors, and status.
- **A is incorrect**: It provides much more than just status.
- **C is incorrect**: It provides more than just errors.
- **D is incorrect**: It provides much more than just file names.

---

### Question 57

What is the recommended approach for loading very large files?

A. Load as single file  
B. Split into multiple smaller files  
C. Compress more  
D. Use larger warehouse only  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Splitting large files into multiple smaller files (100-250MB) enables better parallelism and faster loading.
- **A is incorrect**: Single large files don't utilize parallelism well.
- **C is incorrect**: Compression helps but splitting is more important.
- **D is incorrect**: Warehouse size helps, but file splitting is still recommended.

---

### Question 58

Can Snowpipe load data from multiple cloud providers simultaneously?

A. No, only one cloud provider  
B. Yes, with separate pipes  
C. Yes, with a single pipe  
D. Only with external tables  

**Correct Answer: B**

**Explanation:**
- **B is correct**: You can create separate Snowpipes for different cloud providers, but a single pipe typically targets one stage.
- **A is incorrect**: You can use multiple cloud providers.
- **C is incorrect**: A single pipe typically targets one stage/provider.
- **D is incorrect**: External tables are for querying, not loading via Snowpipe.

---

### Question 59

What happens to a Snowpipe if the target table schema changes?

A. Snowpipe continues working  
B. Snowpipe automatically adapts  
C. Snowpipe may fail until updated  
D. Snowpipe is automatically recreated  

**Correct Answer: C**

**Explanation:**
- **C is correct**: If the target table schema changes and the pipe definition doesn't match, the pipe may fail until the pipe definition is updated.
- **A is incorrect**: Schema mismatches can cause failures.
- **B is incorrect**: Snowpipe doesn't automatically adapt to schema changes.
- **D is incorrect**: Snowpipe is not automatically recreated.

---

### Question 60

What is the cost model for Snowpipe?

A. Pay per file loaded  
B. Pay for warehouse compute time  
C. Pay per GB loaded  
D. Free for all loads  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Snowpipe uses serverless compute and you pay for the compute time used during loads (similar to warehouse credits).
- **A is incorrect**: Cost is based on compute, not per file.
- **C is incorrect**: Cost is based on compute time, not data volume.
- **D is incorrect**: Snowpipe is not free; you pay for compute.

---

## Data Sharing Questions (61-75)

### Question 61

What is the primary benefit of Snowflake's Data Sharing?

A. Reduced storage costs  
B. Secure data sharing without copying data  
C. Faster data access  
D. Automatic data synchronization  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Data Sharing allows secure sharing without copying or moving data; data remains in the provider account.
- **A is incorrect**: While there are cost benefits, the primary benefit is sharing without copying.
- **C is incorrect**: Speed may vary; the primary benefit is no data copying.
- **D is incorrect**: Data Sharing provides real-time access, not synchronization.

---

### Question 62

Who pays for storage in a Data Sharing scenario?

A. Consumer  
B. Provider  
C. Both equally  
D. Neither (it's free)  

**Correct Answer: B**

**Explanation:**
- **B is correct**: The provider pays for storage; consumers have read-only access without storage costs.
- **A is incorrect**: Consumers don't pay for storage.
- **C is incorrect**: Only the provider pays.
- **D is incorrect**: Storage is not free; provider pays.

---

### Question 63

What can be shared through a Share object?

A. Only tables  
B. Tables and views  
C. Databases, schemas, tables, views, and UDFs  
D. Only databases  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Shares can contain databases, schemas, tables, views, and user-defined functions.
- **A is incorrect**: More than just tables can be shared.
- **B is incorrect**: More than tables and views can be shared.
- **D is incorrect**: More than just databases can be shared.

---

### Question 64

What is the access level for consumers of shared data?

A. Read and write  
B. Read-only  
C. Write-only  
D. No access  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Consumers have read-only access to shared data.
- **A is incorrect**: Consumers cannot write to shared data.
- **C is incorrect**: Consumers cannot write.
- **D is incorrect**: Consumers have read access.

---

### Question 65

How do you add a consumer account to a share?

A. GRANT SHARE TO ACCOUNT  
B. ALTER SHARE ... ADD ACCOUNTS  
C. CREATE SHARE FOR ACCOUNT  
D. SHARE WITH ACCOUNT  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Use `ALTER SHARE ... ADD ACCOUNTS` to add consumer accounts to a share.
- **A is incorrect**: GRANT SHARE TO ACCOUNT is not valid syntax.
- **C is incorrect**: CREATE SHARE creates the share, doesn't add accounts.
- **D is incorrect**: SHARE WITH ACCOUNT is not valid syntax.

---

### Question 66

What happens when you modify shared data in the provider account?

A. Changes are not visible to consumers  
B. Changes are visible immediately to consumers  
C. Changes require share to be recreated  
D. Changes are queued for next day  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Changes to shared data are immediately visible to consumers in real-time.
- **A is incorrect**: Changes are visible immediately.
- **C is incorrect**: No recreation is needed.
- **D is incorrect**: Changes are real-time, not queued.

---

### Question 67

Can a consumer modify shared data?

A. Yes, with proper permissions  
B. No, read-only access  
C. Yes, but only through views  
D. Yes, but changes are local only  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Consumers have read-only access and cannot modify shared data.
- **A is incorrect**: Consumers cannot modify shared data regardless of permissions.
- **C is incorrect**: Consumers cannot modify through views either.
- **D is incorrect**: Consumers cannot modify shared data at all.

---

### Question 68

What is a Secure View in the context of Data Sharing?

A. A view that encrypts data  
B. A view that filters data for sharing  
C. A view that compresses data  
D. A regular view with a different name  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Secure Views can filter rows and columns, making them ideal for sharing only necessary data with consumers.
- **A is incorrect**: Secure Views don't encrypt; they filter.
- **C is incorrect**: Secure Views don't compress data.
- **D is incorrect**: Secure Views have special properties for data sharing.

---

### Question 69

How many consumer accounts can be added to a single share?

A. 1  
B. 10  
C. 100  
D. Multiple (no hard limit)  

**Correct Answer: D**

**Explanation:**
- **D is correct**: Multiple consumer accounts can be added to a share; there's no hard limit.
- **A is incorrect**: More than one consumer can be added.
- **B is incorrect**: 10 is not a limit.
- **C is incorrect**: 100 is not a limit.

---

### Question 70

What is required to share data across different cloud providers?

A. Data must be copied  
B. Both accounts must be on same cloud  
C. Cross-cloud sharing is supported  
D. Special license required  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Cross-cloud sharing is supported, though same cloud/region is preferred for performance.
- **A is incorrect**: Data is not copied in Data Sharing.
- **B is incorrect**: Same cloud is not required.
- **D is incorrect**: No special license is required.

---

### Question 71

How do consumers access shared data?

A. Through a separate database  
B. Through the same database  
C. Through external tables  
D. Through a special share schema  

**Correct Answer: A**

**Explanation:**
- **A is correct**: Consumers create a database from the share, which appears as a separate database in their account.
- **B is incorrect**: It's a separate database, not the same one.
- **C is incorrect**: External tables are for querying cloud storage, not shares.
- **D is incorrect**: It's a database, not just a schema.

---

### Question 72

What happens if a provider revokes access from a consumer?

A. Consumer's database is deleted  
B. Consumer loses access immediately  
C. Consumer keeps cached data  
D. Consumer gets 30-day notice  

**Correct Answer: B**

**Explanation:**
- **B is correct**: When access is revoked, consumers lose access immediately.
- **A is incorrect**: The database may remain but becomes inaccessible.
- **C is incorrect**: There's no persistent cache of shared data.
- **D is incorrect**: Access is revoked immediately.

---

### Question 73

Can you share data with accounts in different regions?

A. No, same region required  
B. Yes, but with performance impact  
C. Yes, with no impact  
D. Only with special configuration  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Cross-region sharing is possible but may have performance implications due to network latency.
- **A is incorrect**: Same region is not required.
- **C is incorrect**: There can be performance impact.
- **D is incorrect**: No special configuration is needed, but performance may vary.

---

### Question 74

What is the Snowflake Data Marketplace?

A. A place to buy Snowflake licenses  
B. A platform for publishing and discovering data products  
C. A training platform  
D. A support portal  

**Correct Answer: B**

**Explanation:**
- **B is correct**: The Data Marketplace is a platform where providers can publish data products and consumers can discover and subscribe to them.
- **A is incorrect**: It's not for buying licenses.
- **C is incorrect**: It's not a training platform.
- **D is incorrect**: It's not a support portal.

---

### Question 75

How do you remove a consumer from a share?

A. DROP SHARE  
B. ALTER SHARE ... REMOVE ACCOUNTS  
C. REVOKE SHARE FROM ACCOUNT  
D. DELETE CONSUMER FROM SHARE  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Use `ALTER SHARE ... REMOVE ACCOUNTS` to remove consumer accounts.
- **A is incorrect**: DROP SHARE deletes the entire share.
- **C is incorrect**: REVOKE SHARE FROM ACCOUNT is not valid syntax.
- **D is incorrect**: DELETE CONSUMER FROM SHARE is not valid syntax.

---

## Security Questions (76-95)

### Question 76

What is the highest-level role in Snowflake?

A. SYSADMIN  
B. SECURITYADMIN  
C. ACCOUNTADMIN  
D. USERADMIN  

**Correct Answer: C**

**Explanation:**
- **C is correct**: ACCOUNTADMIN is the highest-level role with full account management privileges.
- **A is incorrect**: SYSADMIN is below ACCOUNTADMIN.
- **B is incorrect**: SECURITYADMIN manages security but is below ACCOUNTADMIN.
- **D is incorrect**: USERADMIN manages users but is below ACCOUNTADMIN.

---

### Question 77

Which authentication method is recommended for programmatic access?

A. Username/Password  
B. SSO  
C. Key Pair Authentication  
D. MFA  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Key Pair Authentication (RSA keys) is recommended for programmatic access as it's more secure than passwords.
- **A is incorrect**: Username/password is less secure for programmatic access.
- **B is incorrect**: SSO is for user access, not typically used for programmatic access.
- **D is incorrect**: MFA adds security but key pairs are preferred for automation.

---

### Question 78

What does RBAC stand for in Snowflake?

A. Role-Based Access Control  
B. Row-Based Access Control  
C. Resource-Based Access Control  
D. Region-Based Access Control  

**Correct Answer: A**

**Explanation:**
- **A is correct**: RBAC stands for Role-Based Access Control, the security model used in Snowflake.
- **B is incorrect**: Row-Based Access Control is RLS (Row-Level Security), not RBAC.
- **C is incorrect**: Resource-Based is not the correct term.
- **D is incorrect**: Region-Based is not the correct term.

---

### Question 79

What is Dynamic Data Masking used for?

A. Encrypting data  
B. Masking sensitive data based on user role  
C. Compressing data  
D. Backing up data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Dynamic Data Masking masks sensitive data (like emails, SSNs) based on the user's role.
- **A is incorrect**: Masking is different from encryption.
- **C is incorrect**: Masking doesn't compress data.
- **D is incorrect**: Masking doesn't backup data.

---

### Question 80

What is Row-Level Security (RLS) used for?

A. Encrypting rows  
B. Filtering rows based on user context  
C. Compressing rows  
D. Backing up rows  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Row-Level Security filters which rows a user can see based on policies and user context.
- **A is incorrect**: RLS doesn't encrypt rows.
- **C is incorrect**: RLS doesn't compress rows.
- **D is incorrect**: RLS doesn't backup rows.

---

### Question 81

What encryption does Snowflake use for data in transit?

A. AES-128  
B. AES-256  
C. TLS 1.2+  
D. SSL 3.0  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Snowflake uses TLS 1.2+ (Transport Layer Security) for data in transit.
- **A is incorrect**: AES-128 is for data at rest, not in transit.
- **B is incorrect**: AES-256 is for data at rest, not in transit.
- **D is incorrect**: SSL 3.0 is outdated and not used.

---

### Question 82

What is the default role assigned to all users?

A. ACCOUNTADMIN  
B. SYSADMIN  
C. PUBLIC  
D. USERADMIN  

**Correct Answer: C**

**Explanation:**
- **C is correct**: PUBLIC is the default role assigned to all users with minimal privileges.
- **A is incorrect**: ACCOUNTADMIN is the highest role, not default.
- **B is incorrect**: SYSADMIN is not the default role.
- **D is incorrect**: USERADMIN is for user management, not default.

---

### Question 83

What is a Network Policy used for?

A. Encrypting network traffic  
B. Restricting access by IP address  
C. Speeding up network connections  
D. Monitoring network usage  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Network Policies restrict which IP addresses can access Snowflake.
- **A is incorrect**: Network Policies don't encrypt; they filter by IP.
- **C is incorrect**: Network Policies don't speed up connections.
- **D is incorrect**: Network Policies restrict access, not monitor usage.

---

### Question 84

How do you enable MFA for a user?

A. ALTER USER ... ENABLE MFA  
B. ALTER USER ... MFA_ENABLED = TRUE  
C. CREATE USER ... WITH MFA  
D. GRANT MFA TO USER  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Use `ALTER USER ... MFA_ENABLED = TRUE` to enable MFA.
- **A is incorrect**: ENABLE MFA is not valid syntax.
- **C is incorrect**: MFA is enabled after user creation, not during.
- **D is incorrect**: GRANT MFA is not valid syntax.

---

### Question 85

What is the difference between a Secure View and a regular view?

A. Secure Views are faster  
B. Secure Views hide the definition from unauthorized users  
C. Secure Views compress data  
D. No difference  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Secure Views hide the SQL definition from users who don't have access, providing better security.
- **A is incorrect**: Secure Views may actually be slightly slower due to security checks.
- **C is incorrect**: Secure Views don't compress data.
- **D is incorrect**: There is a significant security difference.

---

### Question 86

What is Fail-safe in Snowflake?

A. A backup service  
B. Disaster recovery protection (7 days, Enterprise+)  
C. A security feature  
D. A performance optimization  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Fail-safe provides 7 days of disaster recovery protection for Enterprise+ accounts (data is not queryable).
- **A is incorrect**: Fail-safe is more than just backup; it's disaster recovery.
- **C is incorrect**: Fail-safe is not a security feature.
- **D is incorrect**: Fail-safe is not a performance feature.

---

### Question 87

What is the maximum Time Travel retention period?

A. 1 day  
B. 7 days  
C. 30 days  
D. 90 days  

**Correct Answer: D**

**Explanation:**
- **D is correct**: Maximum Time Travel retention is 90 days (Enterprise edition).
- **A is incorrect**: 1 day is the default, not maximum.
- **B is incorrect**: 7 days is for Fail-safe, not Time Travel maximum.
- **C is incorrect**: 30 days is possible but not the maximum.

---

### Question 88

What does Object Tagging enable?

A. Faster queries  
B. Adding metadata tags to objects for classification  
C. Compressing objects  
D. Backing up objects  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Object Tagging allows adding metadata tags to database objects for classification and governance.
- **A is incorrect**: Tagging doesn't directly speed up queries.
- **C is incorrect**: Tagging doesn't compress objects.
- **D is incorrect**: Tagging doesn't backup objects.

---

### Question 89

What is the purpose of the SECURITYADMIN role?

A. Manage all security settings  
B. Manage users, roles, and privileges  
C. Manage warehouses  
D. Manage databases  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SECURITYADMIN manages users, roles, and privileges but cannot manage warehouses or databases.
- **A is incorrect**: SECURITYADMIN has specific privileges, not all security settings.
- **C is incorrect**: SECURITYADMIN cannot manage warehouses.
- **D is incorrect**: SECURITYADMIN cannot manage databases.

---

### Question 90

What encryption key management options does Snowflake support?

A. Only Snowflake-managed keys  
B. Only customer-managed keys  
C. Both Snowflake-managed and customer-managed keys  
D. No encryption keys  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Snowflake supports both Snowflake-managed keys (default) and customer-managed keys (Enterprise+).
- **A is incorrect**: Customer-managed keys are also supported.
- **B is incorrect**: Snowflake-managed keys are the default.
- **D is incorrect**: Encryption keys are definitely used.

---

### Question 91

What is the SYSADMIN role typically used for?

A. User management  
B. Creating and managing warehouses, databases, and objects  
C. Security management  
D. Account administration  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SYSADMIN is typically used for creating and managing warehouses, databases, and other objects.
- **A is incorrect**: USERADMIN handles user management.
- **C is incorrect**: SECURITYADMIN handles security management.
- **D is incorrect**: ACCOUNTADMIN handles account administration.

---

### Question 92

What happens when you apply a masking policy to a column?

A. Data is permanently encrypted  
B. Data is masked based on user role when queried  
C. Data is deleted  
D. Data is compressed  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Masking policies dynamically mask data based on the user's role when the data is queried.
- **A is incorrect**: Data is not encrypted; it's masked dynamically.
- **C is incorrect**: Data is not deleted.
- **D is incorrect**: Data is not compressed.

---

### Question 93

What is required to use customer-managed encryption keys?

A. Standard edition  
B. Enterprise edition  
C. Business Critical edition  
D. Any edition  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Customer-managed keys require Business Critical edition or higher.
- **A is incorrect**: Standard edition doesn't support customer-managed keys.
- **B is incorrect**: Enterprise edition doesn't support customer-managed keys.
- **D is incorrect**: Not all editions support it.

---

### Question 94

What is the purpose of a Row Access Policy?

A. Encrypt specific rows  
B. Control which rows users can see based on conditions  
C. Compress specific rows  
D. Backup specific rows  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Row Access Policies control which rows users can see based on policy conditions and user context.
- **A is incorrect**: Policies don't encrypt rows.
- **C is incorrect**: Policies don't compress rows.
- **D is incorrect**: Policies don't backup rows.

---

### Question 95

What information can you find in the ACCESS_HISTORY view?

A. Only successful queries  
B. Data access patterns, objects accessed, and query details  
C. Only failed queries  
D. Only user logins  

**Correct Answer: B**

**Explanation:**
- **B is correct**: ACCESS_HISTORY provides comprehensive information about data access patterns, objects accessed, and query details.
- **A is incorrect**: It includes more than just successful queries.
- **C is incorrect**: It includes more than just failed queries.
- **D is incorrect**: Login information is in LOGIN_HISTORY, not ACCESS_HISTORY.

---

## Performance Optimization Questions (96-115)

### Question 96

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

### Question 97

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

### Question 98

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

### Question 99

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

### Question 100

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

### Question 101

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

### Question 102

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

### Question 103

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

### Question 104

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

### Question 105

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

### Question 106

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

### Question 107

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

### Question 108

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

### Question 109

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

### Question 110

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

### Question 111

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

### Question 112

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

### Question 113

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

### Question 114

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

### Question 115

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

## SQL and Querying Questions (116-130)

### Question 116

What is the VARIANT data type used for?

A. Storing only JSON  
B. Storing semi-structured data (JSON, Avro, Parquet, etc.)  
C. Storing only text  
D. Storing only numbers  

**Correct Answer: B**

**Explanation:**
- **B is correct**: VARIANT can store various semi-structured data formats including JSON, Avro, ORC, Parquet, and XML.
- **A is incorrect**: VARIANT supports more than just JSON.
- **C is incorrect**: VARIANT is for semi-structured data, not just text.
- **D is incorrect**: VARIANT is for semi-structured data, not just numbers.

---

### Question 117

How do you access a field in a JSON object stored in VARIANT?

A. Using dot notation (data:field)  
B. Using bracket notation (data['field'])  
C. Using arrow notation (data->field)  
D. Using parentheses (data(field))  

**Correct Answer: A**

**Explanation:**
- **A is correct**: Snowflake uses colon notation: `data:field::STRING` to access JSON fields.
- **B is incorrect**: Bracket notation is not used in Snowflake.
- **C is incorrect**: Arrow notation is used in some databases but not Snowflake.
- **D is incorrect**: Parentheses are not used for field access.

---

### Question 118

What is the FLATTEN function used for?

A. Compressing data  
B. Converting nested arrays and objects into rows  
C. Encrypting data  
D. Backing up data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: FLATTEN converts nested arrays and objects into rows for easier querying.
- **A is incorrect**: FLATTEN doesn't compress data.
- **C is incorrect**: FLATTEN doesn't encrypt data.
- **D is incorrect**: FLATTEN doesn't backup data.

---

### Question 119

What is a Common Table Expression (CTE)?

A. A temporary table  
B. A named temporary result set within a query  
C. A permanent view  
D. A stored procedure  

**Correct Answer: B**

**Explanation:**
- **B is correct**: A CTE is a named temporary result set that exists only for the duration of the query.
- **A is incorrect**: CTEs are not tables; they're result sets.
- **C is incorrect**: CTEs are temporary, not permanent.
- **D is incorrect**: CTEs are not stored procedures.

---

### Question 120

What is the difference between RANK() and DENSE_RANK() window functions?

A. No difference  
B. RANK() leaves gaps, DENSE_RANK() doesn't  
C. DENSE_RANK() leaves gaps, RANK() doesn't  
D. RANK() only works with numbers  

**Correct Answer: B**

**Explanation:**
- **B is correct**: RANK() leaves gaps in ranking (1,2,2,4), while DENSE_RANK() doesn't (1,2,2,3).
- **A is incorrect**: There is a significant difference.
- **C is incorrect**: It's the opposite.
- **D is incorrect**: RANK() works with various data types.

---

### Question 121

What does the LAG() window function do?

A. Returns the next row's value  
B. Returns the previous row's value  
C. Returns the first row's value  
D. Returns the last row's value  

**Correct Answer: B**

**Explanation:**
- **B is correct**: LAG() returns the value from the previous row in the window.
- **A is incorrect**: That would be LEAD().
- **C is incorrect**: That would be FIRST_VALUE().
- **D is incorrect**: That would be LAST_VALUE().

---

### Question 122

What is the purpose of the MERGE statement?

A. Combine two tables  
B. Perform INSERT, UPDATE, or DELETE based on conditions  
C. Copy data between tables  
D. Delete duplicate rows  

**Correct Answer: B**

**Explanation:**
- **B is correct**: MERGE performs INSERT, UPDATE, or DELETE operations based on matching conditions.
- **A is incorrect**: MERGE doesn't just combine; it conditionally modifies data.
- **C is incorrect**: MERGE does more than copy; it conditionally modifies.
- **D is incorrect**: MERGE doesn't just delete duplicates; it handles various operations.

---

### Question 123

What is the difference between INNER JOIN and LEFT JOIN?

A. No difference  
B. INNER JOIN returns only matching rows, LEFT JOIN returns all left table rows  
C. LEFT JOIN returns only matching rows, INNER JOIN returns all rows  
D. INNER JOIN is faster  

**Correct Answer: B**

**Explanation:**
- **B is correct**: INNER JOIN returns only rows with matches in both tables; LEFT JOIN returns all rows from the left table.
- **A is incorrect**: There is a significant difference.
- **C is incorrect**: It's the opposite.
- **D is incorrect**: Performance depends on data and query, not just join type.

---

### Question 124

What does the HAVING clause do?

A. Filters rows before grouping  
B. Filters groups after GROUP BY  
C. Sorts results  
D. Limits results  

**Correct Answer: B**

**Explanation:**
- **B is correct**: HAVING filters groups after GROUP BY, while WHERE filters rows before grouping.
- **A is incorrect**: That's what WHERE does.
- **C is incorrect**: ORDER BY sorts results.
- **D is incorrect**: LIMIT limits results.

---

### Question 125

What is the purpose of the UNION operator?

A. Combines columns from two tables  
B. Combines rows from two queries (removes duplicates)  
C. Joins two tables  
D. Updates two tables  

**Correct Answer: B**

**Explanation:**
- **B is correct**: UNION combines rows from two queries and removes duplicates.
- **A is incorrect**: UNION works with rows, not columns.
- **C is incorrect**: UNION doesn't join; it combines result sets.
- **D is incorrect**: UNION doesn't update tables.

---

### Question 126

What is the difference between UNION and UNION ALL?

A. No difference  
B. UNION removes duplicates, UNION ALL keeps all rows  
C. UNION ALL removes duplicates, UNION keeps all rows  
D. UNION is faster  

**Correct Answer: B**

**Explanation:**
- **B is correct**: UNION removes duplicate rows, while UNION ALL keeps all rows including duplicates.
- **A is incorrect**: There is a significant difference.
- **C is incorrect**: It's the opposite.
- **D is incorrect**: UNION ALL is typically faster because it doesn't remove duplicates.

---

### Question 127

What does the COALESCE function do?

A. Combines strings  
B. Returns the first non-NULL value from a list  
C. Counts non-NULL values  
D. Converts data types  

**Correct Answer: B**

**Explanation:**
- **B is correct**: COALESCE returns the first non-NULL value from the provided arguments.
- **A is incorrect**: That's what CONCAT does.
- **C is incorrect**: That's what COUNT does.
- **D is incorrect**: That's what CAST does.

---

### Question 128

What is a subquery?

A. A query within another query  
B. A stored query  
C. A view  
D. A table  

**Correct Answer: A**

**Explanation:**
- **A is correct**: A subquery is a query nested within another query.
- **B is incorrect**: Subqueries are not stored; they're inline.
- **C is incorrect**: Subqueries are not views.
- **D is incorrect**: Subqueries are not tables.

---

### Question 129

What is the purpose of the EXISTS operator?

A. Checks if a value exists in a list  
B. Checks if a subquery returns any rows  
C. Checks if a table exists  
D. Checks if a column exists  

**Correct Answer: B**

**Explanation:**
- **B is correct**: EXISTS returns TRUE if the subquery returns at least one row.
- **A is incorrect**: That's what IN does.
- **C is incorrect**: EXISTS doesn't check table existence.
- **D is incorrect**: EXISTS doesn't check column existence.

---

### Question 130

What does the CASE statement do?

A. Executes conditional logic in SQL  
B. Creates a new table  
C. Deletes data  
D. Updates all rows  

**Correct Answer: A**

**Explanation:**
- **A is correct**: CASE provides conditional logic (IF-THEN-ELSE) in SQL.
- **B is incorrect**: CASE doesn't create tables.
- **C is incorrect**: CASE doesn't delete data.
- **D is incorrect**: CASE doesn't update all rows; it provides conditional values.

---

## Advanced Features Questions (131-150)

### Question 131

What is Time Travel used for?

A. Scheduling queries  
B. Accessing historical data at a point in time  
C. Speeding up queries  
D. Backing up data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Time Travel allows querying data as it existed at a specific point in time.
- **A is incorrect**: That's what Tasks do.
- **C is incorrect**: Time Travel doesn't speed up queries; it accesses historical data.
- **D is incorrect**: Time Travel is for accessing history, not backing up.

---

### Question 132

What is the default Time Travel retention period?

A. 1 day  
B. 7 days  
C. 30 days  
D. 90 days  

**Correct Answer: A**

**Explanation:**
- **A is correct**: Default Time Travel retention is 1 day (Standard edition).
- **B is incorrect**: 7 days is for Fail-safe, not default Time Travel.
- **C is incorrect**: 30 days is possible but not default.
- **D is incorrect**: 90 days is maximum (Enterprise), not default.

---

### Question 133

What is Zero-Copy Cloning?

A. Copying data to a new location  
B. Creating instant copies without duplicating data  
C. Compressing data  
D. Backing up data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Zero-Copy Cloning creates instant copies by sharing storage until data is modified.
- **A is incorrect**: No data is copied initially.
- **C is incorrect**: Cloning doesn't compress data.
- **D is incorrect**: Cloning is for creating copies, not backing up.

---

### Question 134

What happens when you modify a cloned table?

A. Original table is also modified  
B. Only the clone is modified (data is copied at that point)  
C. Both tables are deleted  
D. An error occurs  

**Correct Answer: B**

**Explanation:**
- **B is correct**: When you modify a clone, only the clone is affected, and data is copied at that point (copy-on-write).
- **A is incorrect**: Original table is not affected.
- **C is incorrect**: Tables are not deleted.
- **D is incorrect**: No error occurs; modification is allowed.

---

### Question 135

What is a Stream in Snowflake?

A. A data loading service  
B. Change Data Capture (CDC) that tracks table changes  
C. A backup service  
D. A compression service  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Streams provide Change Data Capture, tracking INSERT, UPDATE, and DELETE operations.
- **A is incorrect**: Streams track changes but don't load data.
- **C is incorrect**: Streams are not for backup.
- **D is incorrect**: Streams don't compress data.

---

### Question 136

What metadata does a Stream provide about changes?

A. Only row data  
B. METADATA$ACTION (INSERT, DELETE, UPDATE)  
C. Only timestamps  
D. Only user information  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Streams provide METADATA$ACTION indicating the type of change (INSERT, DELETE, UPDATE).
- **A is incorrect**: Streams provide more than just row data.
- **C is incorrect**: Streams provide more than just timestamps.
- **D is incorrect**: Streams provide more than just user information.

---

### Question 137

What is a Task in Snowflake?

A. A scheduled SQL statement  
B. A user assignment  
C. A backup job  
D. A compression job  

**Correct Answer: A**

**Explanation:**
- **A is correct**: Tasks are scheduled SQL statements that run automatically.
- **B is incorrect**: Tasks are not user assignments.
- **C is incorrect**: Tasks can do backups but that's not their primary purpose.
- **D is incorrect**: Tasks don't compress data.

---

### Question 138

How do you schedule a Task to run daily at 2 AM?

A. SCHEDULE = 'DAILY 2AM'  
B. SCHEDULE = 'USING CRON 0 2 * * * UTC'  
C. SCHEDULE = 'EVERY DAY AT 2'  
D. SCHEDULE = 'DAILY AT 2:00'  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Snowflake uses cron syntax: 'USING CRON 0 2 * * * UTC' for daily at 2 AM UTC.
- **A is incorrect**: That's not valid cron syntax.
- **C is incorrect**: That's not valid cron syntax.
- **D is incorrect**: That's not valid cron syntax.

---

### Question 139

What is the purpose of combining Streams and Tasks?

A. To compress data  
B. To create automated data pipelines with change detection  
C. To backup data  
D. To encrypt data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Streams detect changes, and Tasks process those changes automatically, creating CDC pipelines.
- **A is incorrect**: Streams and Tasks don't compress data.
- **C is incorrect**: They're not primarily for backup.
- **D is incorrect**: They don't encrypt data.

---

### Question 140

What is an External Table?

A. A table stored outside Snowflake  
B. A table that queries data in cloud storage without loading  
C. A backup table  
D. A compressed table  

**Correct Answer: B**

**Explanation:**
- **B is correct**: External Tables query data in cloud storage (S3, Azure, GCS) without loading it into Snowflake.
- **A is incorrect**: External Tables are Snowflake objects; data is external.
- **C is incorrect**: External Tables are not for backup.
- **D is incorrect**: External Tables don't compress data.

---

### Question 141

What is the benefit of using External Tables?

A. Faster queries  
B. No Snowflake storage costs for the data  
C. Better compression  
D. Automatic backups  

**Correct Answer: B**

**Explanation:**
- **B is correct**: External Tables don't store data in Snowflake, so there are no storage costs.
- **A is incorrect**: External Tables may actually be slower than regular tables.
- **C is incorrect**: External Tables don't provide compression benefits.
- **D is incorrect**: External Tables don't provide automatic backups.

---

### Question 142

What is a Stored Procedure in Snowflake?

A. A scheduled task  
B. Encapsulated business logic (SQL or JavaScript)  
C. A view  
D. A table  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Stored Procedures encapsulate business logic using SQL or JavaScript.
- **A is incorrect**: Stored Procedures are called, not scheduled (Tasks are scheduled).
- **C is incorrect**: Stored Procedures are not views.
- **D is incorrect**: Stored Procedures are not tables.

---

### Question 143

What is a User-Defined Function (UDF)?

A. A system function  
B. A custom function created by users  
C. A built-in function  
D. A view function  

**Correct Answer: B**

**Explanation:**
- **B is correct**: UDFs are custom functions created by users for use in SQL queries.
- **A is incorrect**: UDFs are user-created, not system functions.
- **C is incorrect**: UDFs are custom, not built-in.
- **D is incorrect**: UDFs are functions, not views.

---

### Question 144

What is Fail-safe in Snowflake?

A. A backup you can query  
B. 7 days of disaster recovery data (not queryable)  
C. A security feature  
D. A performance feature  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Fail-safe provides 7 days of disaster recovery protection; data is not queryable (Enterprise+).
- **A is incorrect**: Fail-safe data is not queryable.
- **C is incorrect**: Fail-safe is for disaster recovery, not security.
- **D is incorrect**: Fail-safe is not a performance feature.

---

### Question 145

What is the UNDROP command used for?

A. Deleting objects  
B. Restoring dropped objects using Time Travel  
C. Backing up objects  
D. Compressing objects  

**Correct Answer: B**

**Explanation:**
- **B is correct**: UNDROP restores dropped objects (tables, schemas, databases) using Time Travel.
- **A is incorrect**: UNDROP restores, doesn't delete.
- **C is incorrect**: UNDROP doesn't backup; it restores.
- **D is incorrect**: UNDROP doesn't compress.

---

### Question 146

What is the difference between a regular view and a materialized view?

A. No difference  
B. Materialized views store pre-computed results  
C. Regular views are faster  
D. Materialized views can't be queried  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Materialized Views store pre-computed results, while regular views compute on each query.
- **A is incorrect**: There is a significant difference.
- **C is incorrect**: Materialized Views are typically faster due to pre-computation.
- **D is incorrect**: Materialized Views can definitely be queried.

---

### Question 147

What happens when you query a table using Time Travel?

A. Current data is returned  
B. Historical data at the specified point is returned  
C. Data is modified  
D. Data is deleted  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Time Travel queries return data as it existed at the specified point in time.
- **A is incorrect**: Time Travel returns historical data, not current.
- **C is incorrect**: Time Travel doesn't modify data.
- **D is incorrect**: Time Travel doesn't delete data.

---

### Question 148

What is the purpose of the AT clause in Time Travel?

A. Specify table location  
B. Specify a point in time or statement  
C. Specify a user  
D. Specify a warehouse  

**Correct Answer: B**

**Explanation:**
- **B is correct**: The AT clause specifies a point in time (timestamp) or statement ID for Time Travel queries.
- **A is incorrect**: AT doesn't specify location.
- **C is incorrect**: AT doesn't specify users.
- **D is incorrect**: AT doesn't specify warehouses.

---

### Question 149

Can you clone a database at a specific point in time?

A. No, only current state  
B. Yes, using AT clause  
C. Only for tables  
D. Only with special permission  

**Correct Answer: B**

**Explanation:**
- **B is correct**: You can clone databases, schemas, or tables at a specific point in time using the AT clause.
- **A is incorrect**: Cloning supports Time Travel.
- **C is incorrect**: Cloning works for databases, schemas, and tables.
- **D is incorrect**: No special permission needed beyond cloning privileges.

---

### Question 150

What is the primary use case for External Tables?

A. Storing data in Snowflake  
B. Querying data lake data without loading  
C. Backing up data  
D. Compressing data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: External Tables are primarily used to query data in data lakes (S3, Azure, GCS) without loading it into Snowflake.
- **A is incorrect**: External Tables don't store data in Snowflake.
- **C is incorrect**: External Tables are not for backup.
- **D is incorrect**: External Tables don't compress data.

---

## Summary

This document contains 150 multiple-choice questions covering all major Snowflake topics. Use these questions to:

1. **Test your knowledge** before certification exams
2. **Identify weak areas** that need more study
3. **Understand concepts deeply** through detailed explanations
4. **Prepare for interviews** with comprehensive coverage

Remember to:
- Read each explanation carefully
- Understand why wrong answers are incorrect
- Review related topics in the main documentation
- Practice with hands-on exercises in Snowflake

Good luck with your Snowflake certification and interviews!

