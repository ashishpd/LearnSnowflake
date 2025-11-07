# Performance Optimization in Snowflake

## Overview

Snowflake provides automatic query optimization, but understanding how to optimize performance can significantly improve query execution times and reduce costs. Key optimization areas include clustering, caching, warehouse sizing, and query design.

## Performance Optimization Areas

```
┌─────────────────────────────────────────┐
│    Performance Optimization             │
├─────────────────────────────────────────┤
│                                         │
│  1. Warehouse Sizing                   │
│  2. Clustering                          │
│  3. Caching                             │
│  4. Query Optimization                  │
│  5. Materialized Views                  │
│  6. Search Optimization Service         │
│                                         │
└─────────────────────────────────────────┘
```

## Warehouse Sizing

### Choosing the Right Size

- **Small Queries**: X-Small to Small
- **Medium Queries**: Medium to Large
- **Large Queries**: X-Large and above
- **Rule**: Start small, scale up based on performance needs

### Multi-Cluster Warehouses

- **Use Case**: High concurrency
- **Benefit**: Automatic scaling for concurrent queries
- **Configuration**: Set MIN/MAX cluster count

```sql
ALTER WAREHOUSE my_warehouse
  SET MIN_CLUSTER_COUNT = 1
      MAX_CLUSTER_COUNT = 3
      SCALING_POLICY = 'STANDARD';
```

## Clustering

### Overview

Clustering determines how data is organized in micro-partitions. Good clustering improves query performance by enabling partition pruning.

### When to Use Clustering

- Large tables (> 1TB)
- Frequent queries with specific filters
- Queries benefit from partition pruning
- Not needed for small tables

### Creating Clustered Tables

```sql
-- Create table with clustering key
CREATE TABLE large_table (
  id INTEGER,
  date_col DATE,
  region VARCHAR,
  data VARCHAR
)
CLUSTER BY (date_col, region);
```

### Monitoring Clustering

```sql
-- Check clustering information
SELECT SYSTEM$CLUSTERING_INFORMATION('large_table', '(date_col, region)');

-- Check clustering depth
SELECT SYSTEM$CLUSTERING_DEPTH('large_table');
```

### Best Practices

1. **Choose High-Cardinality Columns**: Columns with many distinct values
2. **Use Frequently Filtered Columns**: Columns in WHERE clauses
3. **Limit Columns**: 3-4 columns maximum
4. **Monitor Effectiveness**: Regularly check clustering depth
5. **Re-cluster When Needed**: Use ALTER TABLE ... RECLUSTER

## Caching

### Query Result Cache

- **Duration**: 24 hours
- **Scope**: Same query returns cached results
- **Benefit**: Instant results for repeated queries
- **Automatic**: No configuration needed

### Metadata Cache

- **Purpose**: Table metadata, statistics
- **Benefit**: Faster query planning
- **Automatic**: Always enabled

### Virtual Warehouse Cache

- **Purpose**: Local disk cache on compute nodes
- **Benefit**: Faster access to frequently used data
- **Scope**: Per warehouse
- **Automatic**: Enabled by default

## Query Optimization

### Best Practices

1. **Select Only Needed Columns**: Avoid SELECT *
2. **Use Appropriate Filters**: Filter early in query
3. **Limit Results**: Use LIMIT when appropriate
4. **Avoid Functions on Columns**: Prevents index usage
5. **Use JOINs Efficiently**: Prefer smaller tables first
6. **Avoid Unnecessary Subqueries**: Use CTEs or JOINs

### Query Patterns

#### Good: Filter Early

```sql
-- Good
SELECT col1, col2
FROM large_table
WHERE date_col = '2024-01-01'
  AND region = 'US';
```

#### Bad: Function on Column

```sql
-- Bad: Function prevents partition pruning
SELECT * FROM large_table
WHERE YEAR(date_col) = 2024;

-- Good: Direct comparison
SELECT * FROM large_table
WHERE date_col >= '2024-01-01' AND date_col < '2025-01-01';
```

### EXPLAIN Plan

```sql
-- View query execution plan
EXPLAIN SELECT * FROM my_table WHERE id = 1;

-- Detailed plan
EXPLAIN USING TABULAR SELECT * FROM my_table WHERE id = 1;
```

## Materialized Views

### Overview

Pre-computed views that store query results for faster access.

### When to Use

- Expensive aggregations
- Frequently accessed queries
- Complex JOINs
- Data doesn't change frequently

### Creating Materialized Views

```sql
CREATE MATERIALIZED VIEW sales_summary AS
SELECT 
  date_trunc('month', sale_date) AS month,
  region,
  SUM(amount) AS total_sales,
  COUNT(*) AS transaction_count
FROM sales
GROUP BY month, region;
```

### Maintaining Materialized Views

- **Automatic**: Snowflake automatically maintains
- **Incremental**: Only updates changed data
- **Cost**: Additional storage and compute

## Search Optimization Service

### Overview

Accelerates point lookups and range queries on large tables.

### When to Use

- Frequent point lookups (WHERE id = X)
- Range queries on large tables
- High-cardinality columns

### Enabling Search Optimization

```sql
-- Enable on table
ALTER TABLE large_table ADD SEARCH OPTIMIZATION ON EQUALITY(id);

-- Enable on multiple columns
ALTER TABLE large_table ADD SEARCH OPTIMIZATION 
  ON EQUALITY(id, email)
  ON RANGE(date_col);
```

## Performance Monitoring

### Query Profile

```sql
-- View query profile in Snowflake UI
-- Or check query history
SELECT 
    QUERY_ID,
    QUERY_TEXT,
    TOTAL_ELAPSED_TIME,
    BYTES_SCANNED,
    ROWS_PRODUCED,
    PARTITIONS_SCANNED,
    PARTITIONS_TOTAL
FROM SNOWFLAKE.ACCOUNT_USAGE.QUERY_HISTORY
WHERE QUERY_ID = 'your_query_id';
```

### Warehouse Usage

```sql
-- Monitor warehouse usage
SELECT 
    WAREHOUSE_NAME,
    START_TIME,
    END_TIME,
    CREDITS_USED,
    BYTES_SCANNED,
    ROWS_PRODUCED
FROM SNOWFLAKE.ACCOUNT_USAGE.WAREHOUSE_METERING_HISTORY
WHERE START_TIME >= DATEADD(DAYS, -7, CURRENT_TIMESTAMP())
ORDER BY START_TIME DESC;
```

## Common Performance Issues

1. **Over-sized Warehouses**: Using larger warehouses than needed
2. **Poor Clustering**: Large tables without clustering
3. **Inefficient Queries**: SELECT *, functions on columns
4. **No Caching**: Not leveraging result cache
5. **Concurrency Issues**: Single warehouse for high concurrency

## Best Practices Summary

1. **Right-Size Warehouses**: Match size to workload
2. **Use Clustering**: For large, frequently queried tables
3. **Optimize Queries**: Follow query best practices
4. **Leverage Caching**: Design queries to use cache
5. **Monitor Performance**: Regularly review query profiles
6. **Use Materialized Views**: For expensive, repeated queries
7. **Enable Search Optimization**: For point lookups
8. **Multi-Cluster**: For high concurrency scenarios

