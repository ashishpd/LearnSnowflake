# Data Storage in Snowflake

## Overview

Snowflake stores all data in its proprietary format optimized for cloud storage. The storage layer is completely separate from compute, allowing multiple compute clusters to access the same data simultaneously.

## Storage Architecture

```
┌─────────────────────────────────────────────────┐
│           Database Storage Layer                │
│                                                 │
│  ┌──────────────┐  ┌──────────────┐            │
│  │ Micro-       │  │ Micro-       │            │
│  │ Partition 1  │  │ Partition 2  │  ...       │
│  └──────────────┘  └──────────────┘            │
│                                                 │
│  Each partition:                                 │
│  - Columnar format                               │
│  - Compressed                                    │
│  - Encrypted                                     │
│  - Rich metadata                                 │
└─────────────────────────────────────────────────┘
```

## Key Storage Concepts

### Micro-Partitions

- **Size**: 16MB compressed (up to 500MB uncompressed)
- **Format**: Columnar storage
- **Automatic**: Snowflake automatically partitions data
- **Metadata**: Each partition contains rich metadata
- **Benefits**: 
  - Automatic partition pruning
  - Efficient query execution
  - Better compression

### Columnar Storage

```
Row-Based (Traditional)          Columnar (Snowflake)
┌─────────────┐                 ┌─────────────┐
│ Row 1: A,B,C│                 │ Col A: 1,2,3│
│ Row 2: A,B,C│                 │ Col B: 4,5,6│
│ Row 3: A,B,C│                 │ Col C: 7,8,9│
└─────────────┘                 └─────────────┘
```

**Benefits of Columnar Storage:**
- Better compression (similar values together)
- Faster aggregations (only read needed columns)
- Efficient for analytical queries

### Compression

- **Automatic**: Snowflake automatically compresses data
- **Ratio**: Typically 3-5x compression
- **Format**: Proprietary compression algorithm
- **Transparent**: No manual intervention needed

### Encryption

- **At Rest**: All data encrypted using AES-256
- **In Transit**: TLS encryption for data movement
- **Key Management**: 
  - Snowflake-managed keys (default)
  - Customer-managed keys (Enterprise+)

## Storage Costs

- **Charges**: Based on average daily storage (TB)
- **Compression**: Charges apply to compressed size
- **Time Travel**: Additional storage for historical data
- **Fail-safe**: Additional storage for disaster recovery

## Data Organization

### Databases
- Top-level container for objects
- Contains schemas, tables, views, etc.

### Schemas
- Logical grouping within a database
- Contains tables, views, functions, etc.

### Tables
- Physical storage of data
- Organized into micro-partitions automatically

## Storage Optimization

### Clustering Keys
- **Purpose**: Co-locate related data
- **When to use**: Large tables with specific query patterns
- **Trade-off**: Additional maintenance overhead

### Automatic Optimization
- **Automatic**: Snowflake optimizes storage automatically
- **No manual tuning**: No need for manual partition management
- **Background processes**: Continuous optimization

## Data Lifecycle

```
┌──────────┐
│  Active  │ ← Current data
└────┬─────┘
     │
     ├──→ Time Travel (0-90 days)
     │
     ├──→ Fail-safe (7 days, Enterprise+)
     │
     └──→ Permanent Deletion
```

## Storage Best Practices

1. **Use Appropriate Data Types**: Choose correct types to minimize storage
2. **Clustering**: Use clustering keys for large tables with specific patterns
3. **Time Travel**: Set appropriate retention periods
4. **Monitor Storage**: Track storage usage and costs
5. **Clean Up**: Remove unused objects and data

## Storage Monitoring

```sql
-- Check database storage
SELECT 
    DATABASE_NAME,
    AVERAGE_DATABASE_BYTES / (1024*1024*1024) AS GB
FROM SNOWFLAKE.ACCOUNT_USAGE.DATABASE_STORAGE_USAGE_HISTORY
ORDER BY AVERAGE_DATABASE_BYTES DESC;
```

