# Data Governance in Snowflake

## Overview

Data Governance in Snowflake encompasses policies, processes, and tools to ensure data quality, security, compliance, and proper usage. Snowflake provides comprehensive features for data governance.

## Data Governance Components

```
┌─────────────────────────────────────────┐
│      Data Governance                    │
├─────────────────────────────────────────┤
│                                         │
│  1. Data Classification                 │
│  2. Data Masking                        │
│  3. Row-Level Security                  │
│  4. Object Tagging                      │
│  5. Access Control                      │
│  6. Audit and Compliance                │
│  7. Data Quality                        │
│                                         │
└─────────────────────────────────────────┘
```

## Data Classification

### Overview

Data classification helps identify and categorize sensitive data for appropriate protection.

### Classification Functions

```sql
-- Classify data
SELECT 
  SYSTEM$CLASSIFY('credit_card_number', '4532-1234-5678-9010');

-- Get classification metadata
SELECT * FROM TABLE(
  INFORMATION_SCHEMA.CLASSIFICATION_POLICIES()
);
```

## Dynamic Data Masking

### Overview

Dynamic Data Masking (DDM) enables masking sensitive data based on the user's role, ensuring data privacy while maintaining usability.

### Creating Masking Policies

```sql
-- Email masking
CREATE MASKING POLICY email_mask AS (val STRING) RETURNS STRING ->
  CASE
    WHEN CURRENT_ROLE() IN ('ADMIN', 'DATA_STEWARD') THEN val
    ELSE REGEXP_REPLACE(val, '(.*)@(.*)', '***@\\2')
  END;

-- SSN masking
CREATE MASKING POLICY ssn_mask AS (val STRING) RETURNS STRING ->
  CASE
    WHEN CURRENT_ROLE() = 'ADMIN' THEN val
    ELSE '***-**-' || SUBSTRING(val, 8, 4)
  END;

-- Credit card masking
CREATE MASKING POLICY cc_mask AS (val STRING) RETURNS STRING ->
  CASE
    WHEN CURRENT_ROLE() = 'ADMIN' THEN val
    ELSE '****-****-****-' || SUBSTRING(val, 16, 4)
  END;
```

### Applying Masking Policies

```sql
-- Apply to column
ALTER TABLE customers MODIFY COLUMN email 
  SET MASKING POLICY email_mask;

-- Apply to multiple columns
ALTER TABLE customers 
  MODIFY COLUMN ssn SET MASKING POLICY ssn_mask,
  MODIFY COLUMN credit_card SET MASKING POLICY cc_mask;
```

### Viewing Masking Policies

```sql
-- List masking policies
SHOW MASKING POLICIES;

-- Describe masking policy
DESC MASKING POLICY email_mask;

-- View applied policies
SELECT * FROM TABLE(
  INFORMATION_SCHEMA.POLICY_REFERENCES(
    POLICY_NAME => 'email_mask'
  )
);
```

## Row-Level Security

### Overview

Row-Level Security (RLS) enables filtering rows based on user context, ensuring users only see data they're authorized to access.

### Creating Row Access Policies

```sql
-- Department-based access
CREATE ROW ACCESS POLICY dept_policy AS (dept STRING) RETURNS BOOLEAN ->
  CURRENT_ROLE() = 'ADMIN' OR
  CURRENT_ROLE() = 'DEPT_' || dept;

-- Region-based access
CREATE ROW ACCESS POLICY region_policy AS (region STRING) RETURNS BOOLEAN ->
  CURRENT_ROLE() = 'ADMIN' OR
  CURRENT_ROLE() IN ('REGION_US', 'REGION_EU', 'REGION_ASIA') AND
  CURRENT_ROLE() = 'REGION_' || region;

-- User-specific access
CREATE ROW ACCESS POLICY user_policy AS (user_id STRING) RETURNS BOOLEAN ->
  CURRENT_ROLE() = 'ADMIN' OR
  CURRENT_USER() = user_id;
```

### Applying Row Access Policies

```sql
-- Apply to table
ALTER TABLE employees 
  ADD ROW ACCESS POLICY dept_policy ON (department);

-- Apply multiple policies
ALTER TABLE sales 
  ADD ROW ACCESS POLICY region_policy ON (region),
  ADD ROW ACCESS POLICY dept_policy ON (department);
```

### Combining Masking and RLS

```sql
-- Table with both masking and RLS
CREATE TABLE sensitive_data (
  id INTEGER,
  email STRING,
  department STRING,
  salary NUMBER
);

-- Apply masking
ALTER TABLE sensitive_data 
  MODIFY COLUMN email SET MASKING POLICY email_mask,
  MODIFY COLUMN salary SET MASKING POLICY salary_mask;

-- Apply RLS
ALTER TABLE sensitive_data 
  ADD ROW ACCESS POLICY dept_policy ON (department);
```

## Object Tagging

### Overview

Object tagging enables adding metadata tags to database objects for classification and governance.

### Creating Tags

```sql
-- Create tag
CREATE TAG data_classification;

-- Create tag with allowed values
CREATE TAG sensitivity_level
  ALLOWED_VALUES 'PUBLIC', 'INTERNAL', 'CONFIDENTIAL', 'RESTRICTED';
```

### Applying Tags

```sql
-- Tag table
ALTER TABLE customers SET TAG data_classification = 'PII';

-- Tag column
ALTER TABLE customers MODIFY COLUMN ssn 
  SET TAG data_classification = 'SENSITIVE',
           sensitivity_level = 'RESTRICTED';

-- Tag database
ALTER DATABASE my_database SET TAG data_classification = 'PRODUCTION';
```

### Querying Tags

```sql
-- Find objects with specific tag
SELECT * FROM TABLE(
  INFORMATION_SCHEMA.TAG_REFERENCES(
    'customers',
    'TABLE'
  )
);

-- Find all PII data
SELECT * FROM TABLE(
  INFORMATION_SCHEMA.TAG_REFERENCES_ALL_COLUMNS(
    'data_classification',
    'PII'
  )
);
```

## Access Control

### Role-Based Access Control (RBAC)

```sql
-- Create governance roles
CREATE ROLE data_steward;
CREATE ROLE data_analyst;
CREATE ROLE data_viewer;

-- Grant appropriate privileges
GRANT SELECT ON DATABASE my_database TO ROLE data_viewer;
GRANT SELECT, INSERT ON SCHEMA my_schema TO ROLE data_analyst;
GRANT ALL ON DATABASE my_database TO ROLE data_steward;
```

### Privilege Management

```sql
-- Grant future privileges
GRANT SELECT ON FUTURE TABLES IN SCHEMA my_schema TO ROLE data_analyst;

-- Revoke privileges
REVOKE SELECT ON TABLE sensitive_table FROM ROLE data_viewer;

-- View grants
SHOW GRANTS TO ROLE data_analyst;
```

## Audit and Compliance

### Query History

```sql
-- Audit queries
SELECT 
    QUERY_TEXT,
    USER_NAME,
    ROLE_NAME,
    START_TIME,
    BYTES_SCANNED,
    ROWS_PRODUCED
FROM SNOWFLAKE.ACCOUNT_USAGE.QUERY_HISTORY
WHERE START_TIME >= DATEADD(DAYS, -30, CURRENT_TIMESTAMP())
ORDER BY START_TIME DESC;
```

### Access History

```sql
-- Track data access
SELECT 
    QUERY_START_TIME,
    USER_NAME,
    ROLE_NAME,
    OBJECT_DOMAIN,
    OBJECT_NAME,
    QUERY_TEXT
FROM SNOWFLAKE.ACCOUNT_USAGE.ACCESS_HISTORY
WHERE QUERY_START_TIME >= DATEADD(DAYS, -30, CURRENT_TIMESTAMP());
```

### Login History

```sql
-- Monitor logins
SELECT 
    EVENT_TIMESTAMP,
    USER_NAME,
    CLIENT_IP,
    IS_SUCCESS,
    ERROR_MESSAGE
FROM SNOWFLAKE.ACCOUNT_USAGE.LOGIN_HISTORY
WHERE EVENT_TIMESTAMP >= DATEADD(DAYS, -30, CURRENT_TIMESTAMP());
```

## Data Quality

### Constraints

```sql
-- Primary key
ALTER TABLE customers ADD PRIMARY KEY (id);

-- Foreign key
ALTER TABLE orders ADD FOREIGN KEY (customer_id) 
  REFERENCES customers(id);

-- Unique constraint
ALTER TABLE products ADD UNIQUE (sku);

-- Not null
ALTER TABLE customers MODIFY COLUMN email SET NOT NULL;
```

### Data Validation

```sql
-- Check for duplicates
SELECT email, COUNT(*) 
FROM customers 
GROUP BY email 
HAVING COUNT(*) > 1;

-- Validate data quality
SELECT 
  COUNT(*) AS total_rows,
  COUNT(DISTINCT id) AS unique_ids,
  COUNT(email) AS emails_with_value,
  COUNT(*) - COUNT(email) AS null_emails
FROM customers;
```

## Best Practices

1. **Classify Data**: Identify and tag sensitive data
2. **Mask Sensitive Data**: Use masking policies for PII
3. **Implement RLS**: Restrict row-level access
4. **Tag Objects**: Use tags for metadata management
5. **Monitor Access**: Regularly audit data access
6. **Document Policies**: Document governance policies
7. **Regular Reviews**: Review access and privileges regularly
8. **Compliance**: Ensure compliance with regulations (GDPR, HIPAA, etc.)

