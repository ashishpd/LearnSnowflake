# Snowpipe - Continuous Data Loading

## Overview

Snowpipe is Snowflake's continuous data ingestion service. It enables automatic, event-driven loading of data from external stages (S3, Azure Blob, GCS) into Snowflake tables.

## Snowpipe Architecture

```
┌──────────────┐
│ Cloud Storage│
│ (S3/Azure/GCS│
│  Event)      │
└──────┬───────┘
       │
       │ Event Notification
       ▼
┌──────────────┐
│  Snowpipe    │
│  Service     │
└──────┬───────┘
       │
       │ Automatic Load
       ▼
┌──────────────┐
│ Snowflake    │
│ Table        │
└──────────────┘
```

## Key Features

- **Automatic**: Loads data automatically when files arrive
- **Event-Driven**: Triggered by cloud storage events
- **Serverless**: No warehouse management required
- **Cost-Effective**: Pay only for compute used during loads
- **Scalable**: Handles high-volume, continuous ingestion

## Creating a Snowpipe

### Basic Syntax

```sql
CREATE PIPE my_pipe
  AUTO_INGEST = TRUE
  AS
  COPY INTO my_table
  FROM @my_stage
  FILE_FORMAT = (TYPE = 'CSV');
```

### With Pattern Matching

```sql
CREATE PIPE my_pipe
  AUTO_INGEST = TRUE
  AS
  COPY INTO my_table
  FROM @my_stage
  PATTERN = '.*data.*[.]csv'
  FILE_FORMAT = (TYPE = 'CSV');
```

## Auto-Ingest Setup

### For AWS S3

1. **Create S3 Event Notification**
   - Event: ObjectCreated (PUT, POST, COPY)
   - Destination: SQS Queue
   - Queue ARN: Provided by Snowpipe

2. **Get Queue ARN from Snowpipe**

```sql
DESC PIPE my_pipe;
-- Note the NOTIFICATION_CHANNEL value (SQS ARN)
```

3. **Configure S3 to Send Events to SQS**
   - Use the SQS ARN from step 2

### For Azure Blob Storage

1. **Create Event Grid Subscription**
   - Event: BlobCreated
   - Endpoint: Snowpipe endpoint URL

2. **Get Endpoint URL**

```sql
DESC PIPE my_pipe;
-- Note the NOTIFICATION_CHANNEL value (Event Grid endpoint)
```

### For Google Cloud Storage

1. **Create Pub/Sub Topic**
2. **Create Notification**
3. **Configure Snowpipe with Pub/Sub subscription**

## Manual Snowpipe (No Auto-Ingest)

```sql
CREATE PIPE my_pipe
  AUTO_INGEST = FALSE
  AS
  COPY INTO my_table
  FROM @my_stage
  FILE_FORMAT = (TYPE = 'CSV');

-- Manually refresh
ALTER PIPE my_pipe REFRESH;
```

## Monitoring Snowpipes

### Check Pipe Status

```sql
SELECT 
    PIPE_NAME,
    PIPE_SCHEMA,
    IS_AUTOINGEST_ENABLED,
    NOTIFICATION_CHANNEL_NAME,
    PIPE_STATUS
FROM INFORMATION_SCHEMA.PIPES
WHERE PIPE_NAME = 'MY_PIPE';
```

### Check Load History

```sql
SELECT 
    PIPE_NAME,
    FILE_NAME,
    STATUS,
    ROWS_LOADED,
    ROWS_PARSE_ERROR,
    LAST_LOAD_TIME
FROM TABLE(INFORMATION_SCHEMA.COPY_HISTORY(
    TABLE_NAME => 'MY_TABLE',
    START_TIME => DATEADD(HOUR, -24, CURRENT_TIMESTAMP())
))
WHERE PIPE_NAME = 'MY_PIPE'
ORDER BY LAST_LOAD_TIME DESC;
```

### Check Pipe Usage

```sql
SELECT 
    PIPE_NAME,
    START_TIME,
    END_TIME,
    CREDITS_USED,
    BYTES_INSERTED,
    FILES_INSERTED
FROM SNOWFLAKE.ACCOUNT_USAGE.PIPE_USAGE_HISTORY
WHERE PIPE_NAME = 'MY_PIPE'
ORDER BY START_TIME DESC;
```

## Error Handling

### Viewing Errors

```sql
SELECT 
    PIPE_NAME,
    FILE_NAME,
    STATUS,
    FIRST_ERROR,
    FIRST_ERROR_LINE,
    LAST_LOAD_TIME
FROM TABLE(INFORMATION_SCHEMA.COPY_HISTORY(
    TABLE_NAME => 'MY_TABLE'
))
WHERE STATUS = 'LOAD_FAILED'
ORDER BY LAST_LOAD_TIME DESC;
```

### Retry Failed Files

```sql
-- Snowpipe automatically retries failed files
-- Or manually reload from stage
COPY INTO my_table
FROM @my_stage
FILES = ('failed_file.csv')
FILE_FORMAT = (TYPE = 'CSV');
```

## Best Practices

1. **File Format**: Use consistent file formats
2. **Naming Convention**: Use clear file naming patterns
3. **Error Monitoring**: Regularly check for failed loads
4. **Cost Optimization**: Ensure files are appropriately sized
5. **Security**: Use secure credentials for stages
6. **Testing**: Test with sample files before production

## Snowpipe vs. COPY INTO

| Feature | Snowpipe | COPY INTO |
|---------|----------|-----------|
| Automation | Automatic | Manual |
| Trigger | Event-driven | On-demand |
| Warehouse | Serverless | Requires warehouse |
| Use Case | Continuous loading | Bulk/one-time loads |
| Cost | Pay per load | Pay for warehouse time |

## Common Patterns

### Incremental Loading

```sql
CREATE PIPE incremental_pipe
  AUTO_INGEST = TRUE
  AS
  COPY INTO my_table
  FROM (
    SELECT 
      $1, $2, $3,
      CURRENT_TIMESTAMP() AS load_timestamp
    FROM @my_stage
  )
  FILE_FORMAT = (TYPE = 'CSV');
```

### Loading with Transformations

```sql
CREATE PIPE transform_pipe
  AUTO_INGEST = TRUE
  AS
  COPY INTO my_table (id, name, email, created_at)
  FROM (
    SELECT 
      $1::INTEGER AS id,
      TRIM($2::VARCHAR) AS name,
      LOWER($3::VARCHAR) AS email,
      CURRENT_TIMESTAMP() AS created_at
    FROM @my_stage
  )
  FILE_FORMAT = (TYPE = 'CSV');
```

