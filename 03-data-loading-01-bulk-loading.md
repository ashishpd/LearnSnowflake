# Bulk Loading with COPY INTO

## Overview

Bulk loading is the primary method for loading large volumes of data into Snowflake. The `COPY INTO` command is optimized for high-performance data ingestion.

## COPY INTO Command

### Basic Syntax

```sql
COPY INTO [<database>.]<schema>.<table>
FROM { <internal_stage> | <external_stage> | <external_location> }
[ FILE_FORMAT = ( { FORMAT_NAME = '<file_format_name>' | TYPE = '<file_type>' [ <format_type_options> ] } ) ]
[ FILES = ( '<file_name>' [ , '<file_name>' ... ] ) ]
[ PATTERN = '<regex_pattern>' ]
[ ON_ERROR = { 'CONTINUE' | 'SKIP_FILE' | 'ABORT_STATEMENT' } ]
[ SIZE_LIMIT = <num> ]
[ PURGE = { TRUE | FALSE } ]
[ RETURN_FAILED_ONLY = { TRUE | FALSE } ]
[ VALIDATION_MODE = { 'RETURN_ERRORS' | 'RETURN_ALL_ERRORS' | 'RETURN_1_ROW_ERRORS' } ]
```

## Loading Process Flow

```
┌──────────────┐
│ Source Files │
│ (S3/Azure/GCS│
│  or Stage)   │
└──────┬───────┘
       │
       ▼
┌──────────────┐
│ COPY INTO    │
│ Command      │
└──────┬───────┘
       │
       ▼
┌──────────────┐
│ Validation   │
│ & Parsing    │
└──────┬───────┘
       │
       ▼
┌──────────────┐
│ Load to      │
│ Snowflake    │
│ Table        │
└──────────────┘
```

## Loading from Stages

### Internal Stage

```sql
-- Create internal stage
CREATE OR REPLACE STAGE my_stage;

-- Upload file (via SnowSQL CLI)
PUT file:///local/data.csv @my_stage;

-- Load from internal stage
COPY INTO my_table
FROM @my_stage
FILE_FORMAT = (TYPE = 'CSV' SKIP_HEADER = 1);
```

### External Stage (S3 Example)

```sql
-- Create external stage
CREATE OR REPLACE STAGE s3_stage
  URL = 's3://my-bucket/data/'
  CREDENTIALS = (AWS_KEY_ID = 'AKIA...' AWS_SECRET_KEY = '...');

-- Load from external stage
COPY INTO my_table
FROM @s3_stage
FILE_FORMAT = (TYPE = 'CSV');
```

## File Selection

### Loading Specific Files

```sql
COPY INTO my_table
FROM @my_stage
FILES = ('file1.csv', 'file2.csv', 'file3.csv')
FILE_FORMAT = (TYPE = 'CSV');
```

### Loading with Pattern Matching

```sql
-- Load all CSV files
COPY INTO my_table
FROM @my_stage
PATTERN = '.*[.]csv'
FILE_FORMAT = (TYPE = 'CSV');

-- Load files with date pattern
COPY INTO my_table
FROM @my_stage
PATTERN = '.*2024[0-9]{4}[.]csv'
FILE_FORMAT = (TYPE = 'CSV');
```

## Error Handling

### ON_ERROR Options

```sql
-- Continue loading, skip errors
COPY INTO my_table
FROM @my_stage
FILE_FORMAT = (TYPE = 'CSV')
ON_ERROR = 'CONTINUE';

-- Skip entire file on error
COPY INTO my_table
FROM @my_stage
FILE_FORMAT = (TYPE = 'CSV')
ON_ERROR = 'SKIP_FILE';

-- Abort on first error
COPY INTO my_table
FROM @my_stage
FILE_FORMAT = (TYPE = 'CSV')
ON_ERROR = 'ABORT_STATEMENT';
```

### Validation Mode

```sql
-- Validate without loading
COPY INTO my_table
FROM @my_stage
FILE_FORMAT = (TYPE = 'CSV')
VALIDATION_MODE = 'RETURN_ERRORS';

-- Returns errors without loading data
```

## Transformations During Load

### Column Mapping

```sql
COPY INTO my_table (col1, col2, col3)
FROM (
  SELECT 
    $1::INTEGER,
    $2::VARCHAR,
    $3::DATE
  FROM @my_stage
)
FILE_FORMAT = (TYPE = 'CSV');
```

### Data Transformation

```sql
COPY INTO my_table
FROM (
  SELECT 
    $1::INTEGER AS id,
    UPPER($2::VARCHAR) AS name,
    CURRENT_TIMESTAMP() AS load_time
  FROM @my_stage
)
FILE_FORMAT = (TYPE = 'CSV');
```

## Performance Tips

1. **Warehouse Size**: Use larger warehouses for faster loads
2. **File Size**: Optimal is 100-250MB compressed
3. **Compression**: Use gzip compression
4. **Parallel Files**: Multiple smaller files load faster than one large file
5. **Dedicated Warehouse**: Use separate warehouse for loading

## Monitoring Loads

### Check Load History

```sql
SELECT 
    FILE_NAME,
    STATUS,
    ROWS_LOADED,
    ROWS_PARSED,
    ROWS_PARSE_ERROR,
    ERROR_COUNT,
    FIRST_ERROR,
    FIRST_ERROR_LINE,
    FIRST_ERROR_CHARACTER_POS,
    FIRST_ERROR_COLUMN_NAME,
    LAST_LOAD_TIME
FROM TABLE(INFORMATION_SCHEMA.LOAD_HISTORY(
    TABLE_NAME => 'MY_TABLE'
))
ORDER BY LAST_LOAD_TIME DESC;
```

### Check Load Errors

```sql
SELECT * FROM TABLE(INFORMATION_SCHEMA.LOAD_HISTORY(
    TABLE_NAME => 'MY_TABLE'
))
WHERE STATUS = 'LOAD_FAILED'
ORDER BY LAST_LOAD_TIME DESC;
```

## Best Practices

1. **Validate First**: Use VALIDATION_MODE before actual load
2. **Error Handling**: Set appropriate ON_ERROR behavior
3. **File Format**: Create reusable file formats
4. **Staging**: Use stages for organization
5. **Monitoring**: Regularly check load history
6. **Compression**: Always compress files
7. **File Size**: Optimize file sizes for performance

