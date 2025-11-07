# Data Unloading in Snowflake

## Overview

Data unloading is the process of exporting data from Snowflake tables to external storage locations (S3, Azure Blob, GCS) or local files. Snowflake provides the `COPY INTO` command for unloading data.

## Unloading Methods

```
┌─────────────────────────────────────────┐
│       Data Unloading Methods           │
├─────────────────────────────────────────┤
│                                         │
│  1. COPY INTO Location                 │
│     - Unload to external stage         │
│     - Most common method               │
│                                         │
│  2. EXPORT TO Local                    │
│     - Via SnowSQL CLI                  │
│     - Small datasets                   │
│                                         │
│  3. Data Sharing                       │
│     - Share data without copying        │
│     - Consumer access                  │
│                                         │
└─────────────────────────────────────────┘
```

## Basic Unloading Syntax

### Unload to External Stage

```sql
COPY INTO @stage_name/path/
FROM my_table
FILE_FORMAT = (TYPE = 'CSV' COMPRESSION = 'GZIP')
HEADER = TRUE;
```

### Unload to S3

```sql
COPY INTO 's3://my-bucket/export/'
FROM my_table
CREDENTIALS = (AWS_KEY_ID = '...' AWS_SECRET_KEY = '...')
FILE_FORMAT = (TYPE = 'CSV' COMPRESSION = 'GZIP')
HEADER = TRUE;
```

## File Format Options

### CSV Format

```sql
COPY INTO @my_stage
FROM my_table
FILE_FORMAT = (
  TYPE = 'CSV'
  COMPRESSION = 'GZIP'
  FIELD_DELIMITER = ','
  RECORD_DELIMITER = '\n'
  HEADER = TRUE
  ESCAPE = 'NONE'
);
```

### JSON Format

```sql
COPY INTO @my_stage
FROM my_table
FILE_FORMAT = (
  TYPE = 'JSON'
  COMPRESSION = 'GZIP'
);
```

### Parquet Format

```sql
COPY INTO @my_stage
FROM my_table
FILE_FORMAT = (
  TYPE = 'PARQUET'
  COMPRESSION = 'SNAPPY'
);
```

## Unloading with Filters

### Unload Specific Rows

```sql
COPY INTO @my_stage
FROM (
  SELECT * FROM my_table
  WHERE date_column >= '2024-01-01'
)
FILE_FORMAT = (TYPE = 'CSV');
```

### Unload Specific Columns

```sql
COPY INTO @my_stage
FROM (
  SELECT col1, col2, col3
  FROM my_table
)
FILE_FORMAT = (TYPE = 'CSV');
```

## File Naming and Partitioning

### Single File

```sql
COPY INTO @my_stage/data.csv
FROM my_table
FILE_FORMAT = (TYPE = 'CSV')
SINGLE = TRUE;
```

### Multiple Files (Automatic)

```sql
COPY INTO @my_stage/
FROM my_table
FILE_FORMAT = (TYPE = 'CSV')
MAX_FILE_SIZE = 100000000;  -- 100MB
```

### Partitioned Files

```sql
COPY INTO @my_stage/
FROM (
  SELECT 
    *,
    TO_CHAR(date_column, 'YYYY/MM/DD') AS partition_path
  FROM my_table
)
FILE_FORMAT = (TYPE = 'CSV')
PARTITION BY (partition_path);
```

## Compression Options

- **GZIP**: Best compression ratio, slower
- **BZIP2**: Good compression, slower than GZIP
- **BROTLI**: Good balance of speed and compression
- **ZSTD**: Fast with good compression
- **DEFLATE**: Standard compression
- **RAW_DEFLATE**: No wrapper

```sql
COPY INTO @my_stage
FROM my_table
FILE_FORMAT = (TYPE = 'CSV' COMPRESSION = 'GZIP');
```

## Performance Optimization

1. **Warehouse Size**: Use larger warehouses for faster unloads
2. **Parallel Execution**: Snowflake automatically parallelizes
3. **File Size**: Control with MAX_FILE_SIZE
4. **Compression**: Use appropriate compression for your needs
5. **Dedicated Warehouse**: Use separate warehouse for unloading

## Unloading Best Practices

1. **Use Stages**: Create stages for better organization
2. **Compression**: Always use compression for large exports
3. **File Size**: Set appropriate MAX_FILE_SIZE
4. **Headers**: Include headers for CSV files
5. **Error Handling**: Monitor unload operations
6. **Security**: Use secure credentials for external stages

## Monitoring Unloads

```sql
-- Check unload history
SELECT 
    FILE_NAME,
    FILE_SIZE,
    ROW_COUNT,
    STATUS,
    LAST_LOAD_TIME
FROM TABLE(INFORMATION_SCHEMA.LOAD_HISTORY(
    TABLE_NAME => 'MY_TABLE'
))
WHERE FILE_NAME LIKE '%unload%'
ORDER BY LAST_LOAD_TIME DESC;
```

## Common Unloading Scenarios

### Daily Export

```sql
COPY INTO @daily_export/date={{date}}/
FROM (
  SELECT * FROM my_table
  WHERE date_column = CURRENT_DATE()
)
FILE_FORMAT = (TYPE = 'CSV' COMPRESSION = 'GZIP')
HEADER = TRUE
MAX_FILE_SIZE = 100000000;
```

### Incremental Export

```sql
COPY INTO @incremental_export/
FROM (
  SELECT * FROM my_table
  WHERE last_modified > (SELECT MAX(export_date) FROM export_log)
)
FILE_FORMAT = (TYPE = 'CSV')
HEADER = TRUE;
```

### Full Table Export

```sql
COPY INTO @full_export/
FROM my_table
FILE_FORMAT = (TYPE = 'PARQUET' COMPRESSION = 'SNAPPY')
MAX_FILE_SIZE = 500000000;
```

