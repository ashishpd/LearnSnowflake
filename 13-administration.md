# Administration in Snowflake

## Overview

Snowflake administration involves managing accounts, users, roles, warehouses, databases, and monitoring system usage and performance.

## Administration Areas

```
┌─────────────────────────────────────────┐
│      Administration                     │
├─────────────────────────────────────────┤
│                                         │
│  1. Account Management                 │
│  2. User Management                    │
│  3. Role Management                    │
│  4. Warehouse Management               │
│  5. Database Management                │
│  6. Monitoring and Usage                │
│                                         │
└─────────────────────────────────────────┘
```

## Account Management

### Account Parameters

```sql
-- View account parameters
SHOW PARAMETERS IN ACCOUNT;

-- Set account parameter
ALTER ACCOUNT SET 
  STATEMENT_TIMEOUT_IN_SECONDS = 3600;
```

## User Management

### Creating and Managing Users

```sql
-- Create user
CREATE USER john_doe
  PASSWORD = 'secure_password'
  MUST_CHANGE_PASSWORD = TRUE;

-- Modify user
ALTER USER john_doe SET
  PASSWORD = 'new_password'
  DEFAULT_ROLE = 'ANALYST';

-- Drop user
DROP USER john_doe;
```

## Monitoring

### Query History

```sql
SELECT 
    QUERY_TEXT,
    USER_NAME,
    ROLE_NAME,
    START_TIME,
    TOTAL_ELAPSED_TIME,
    BYTES_SCANNED,
    CREDITS_USED
FROM SNOWFLAKE.ACCOUNT_USAGE.QUERY_HISTORY
WHERE START_TIME >= DATEADD(DAYS, -7, CURRENT_TIMESTAMP())
ORDER BY START_TIME DESC;
```

### Warehouse Usage

```sql
SELECT 
    WAREHOUSE_NAME,
    START_TIME,
    END_TIME,
    CREDITS_USED
FROM SNOWFLAKE.ACCOUNT_USAGE.WAREHOUSE_METERING_HISTORY
WHERE START_TIME >= DATEADD(DAYS, -7, CURRENT_TIMESTAMP());
```

### Storage Usage

```sql
SELECT 
    DATABASE_NAME,
    AVERAGE_DATABASE_BYTES / (1024*1024*1024) AS GB
FROM SNOWFLAKE.ACCOUNT_USAGE.DATABASE_STORAGE_USAGE_HISTORY
ORDER BY AVERAGE_DATABASE_BYTES DESC;
```

## Best Practices

1. **Regular Monitoring**: Monitor usage and costs regularly
2. **User Management**: Regularly review and update user access
3. **Cost Optimization**: Right-size warehouses and monitor usage
4. **Security**: Regularly audit security settings
5. **Documentation**: Document administrative procedures

