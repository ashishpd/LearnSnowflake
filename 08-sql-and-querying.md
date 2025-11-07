# SQL and Querying in Snowflake

## Overview

Snowflake supports standard SQL (ANSI SQL) with extensions for cloud data warehousing. Understanding Snowflake's SQL capabilities is essential for effective data querying and manipulation.

## SQL Features in Snowflake

```
┌─────────────────────────────────────────┐
│         SQL Capabilities                │
├─────────────────────────────────────────┤
│                                         │
│  • Standard SQL (ANSI)                 │
│  • DDL (Data Definition Language)      │
│  • DML (Data Manipulation Language)    │
│  • DQL (Data Query Language)           │
│  • Stored Procedures                    │
│  • User-Defined Functions               │
│  • Window Functions                     │
│  • Semi-structured Data Support        │
│                                         │
└─────────────────────────────────────────┘
```

## Data Types

### Numeric Types

- **NUMBER**: Precision and scale (NUMBER(38,0) default)
- **INTEGER**: Alias for NUMBER(38,0)
- **BIGINT**: Alias for NUMBER(38,0)
- **FLOAT**: Floating point numbers
- **DOUBLE**: Double precision
- **DECIMAL**: Fixed precision

### String Types

- **VARCHAR**: Variable-length string (default 16777216)
- **CHAR**: Fixed-length string
- **STRING**: Alias for VARCHAR

### Date/Time Types

- **DATE**: Date only
- **TIME**: Time only
- **TIMESTAMP_NTZ**: Timestamp without timezone
- **TIMESTAMP_LTZ**: Timestamp with local timezone
- **TIMESTAMP_TZ**: Timestamp with timezone

### Boolean Types

- **BOOLEAN**: TRUE, FALSE, NULL

### Semi-Structured Types

- **VARIANT**: JSON, Avro, ORC, Parquet
- **OBJECT**: Key-value pairs
- **ARRAY**: Ordered list of values

## DDL - Data Definition Language

### Creating Objects

```sql
-- Database
CREATE DATABASE my_database;

-- Schema
CREATE SCHEMA my_database.my_schema;

-- Table
CREATE TABLE my_table (
  id INTEGER PRIMARY KEY,
  name VARCHAR(100),
  created_at TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);

-- View
CREATE VIEW my_view AS
SELECT id, name FROM my_table;

-- Secure View
CREATE SECURE VIEW secure_view AS
SELECT id, name FROM my_table;
```

### Altering Objects

```sql
-- Add column
ALTER TABLE my_table ADD COLUMN new_col VARCHAR(50);

-- Modify column
ALTER TABLE my_table MODIFY COLUMN name VARCHAR(200);

-- Drop column
ALTER TABLE my_table DROP COLUMN old_col;

-- Rename table
ALTER TABLE my_table RENAME TO new_table_name;
```

## DML - Data Manipulation Language

### INSERT

```sql
-- Single row
INSERT INTO my_table (id, name) VALUES (1, 'John');

-- Multiple rows
INSERT INTO my_table (id, name) VALUES
  (1, 'John'),
  (2, 'Jane'),
  (3, 'Bob');

-- From SELECT
INSERT INTO my_table (id, name)
SELECT id, name FROM source_table;
```

### UPDATE

```sql
-- Update with WHERE
UPDATE my_table
SET name = 'John Doe'
WHERE id = 1;

-- Update multiple columns
UPDATE my_table
SET name = 'John Doe', updated_at = CURRENT_TIMESTAMP()
WHERE id = 1;
```

### DELETE

```sql
-- Delete specific rows
DELETE FROM my_table WHERE id = 1;

-- Delete all rows
DELETE FROM my_table;
```

### MERGE

```sql
MERGE INTO target_table t
USING source_table s
ON t.id = s.id
WHEN MATCHED THEN
  UPDATE SET t.name = s.name
WHEN NOT MATCHED THEN
  INSERT (id, name) VALUES (s.id, s.name);
```

## DQL - Data Query Language

### SELECT Basics

```sql
-- Basic SELECT
SELECT * FROM my_table;

-- Specific columns
SELECT id, name FROM my_table;

-- With WHERE
SELECT * FROM my_table WHERE id > 100;

-- With ORDER BY
SELECT * FROM my_table ORDER BY name DESC;

-- With LIMIT
SELECT * FROM my_table LIMIT 10;
```

### JOINs

```sql
-- INNER JOIN
SELECT t1.*, t2.*
FROM table1 t1
INNER JOIN table2 t2 ON t1.id = t2.id;

-- LEFT JOIN
SELECT t1.*, t2.*
FROM table1 t1
LEFT JOIN table2 t2 ON t1.id = t2.id;

-- RIGHT JOIN
SELECT t1.*, t2.*
FROM table1 t1
RIGHT JOIN table2 t2 ON t1.id = t2.id;

-- FULL OUTER JOIN
SELECT t1.*, t2.*
FROM table1 t1
FULL OUTER JOIN table2 t2 ON t1.id = t2.id;
```

### Aggregations

```sql
-- GROUP BY
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region;

-- HAVING
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region
HAVING SUM(sales) > 1000000;
```

### Window Functions

```sql
-- ROW_NUMBER
SELECT 
  id,
  name,
  ROW_NUMBER() OVER (PARTITION BY region ORDER BY sales DESC) AS rank
FROM sales;

-- RANK
SELECT 
  id,
  name,
  RANK() OVER (ORDER BY sales DESC) AS sales_rank
FROM sales;

-- LAG/LEAD
SELECT 
  date,
  sales,
  LAG(sales) OVER (ORDER BY date) AS prev_sales,
  LEAD(sales) OVER (ORDER BY date) AS next_sales
FROM daily_sales;
```

## Common Table Expressions (CTEs)

```sql
WITH sales_summary AS (
  SELECT region, SUM(sales) AS total
  FROM sales
  GROUP BY region
),
top_regions AS (
  SELECT region
  FROM sales_summary
  WHERE total > 1000000
)
SELECT * FROM top_regions;
```

## Subqueries

```sql
-- Scalar subquery
SELECT name, 
  (SELECT AVG(sales) FROM sales) AS avg_sales
FROM employees;

-- EXISTS
SELECT * FROM customers c
WHERE EXISTS (
  SELECT 1 FROM orders o
  WHERE o.customer_id = c.id
);

-- IN
SELECT * FROM products
WHERE category_id IN (
  SELECT id FROM categories WHERE active = TRUE
);
```

## Functions

### String Functions

```sql
SELECT 
  CONCAT(first_name, ' ', last_name) AS full_name,
  UPPER(email) AS email_upper,
  LOWER(name) AS name_lower,
  SUBSTRING(phone, 1, 3) AS area_code,
  LENGTH(description) AS desc_length
FROM customers;
```

### Date Functions

```sql
SELECT 
  CURRENT_DATE() AS today,
  CURRENT_TIMESTAMP() AS now,
  DATEADD(DAY, 7, order_date) AS delivery_date,
  DATEDIFF(DAY, order_date, ship_date) AS days_to_ship,
  DATE_TRUNC('MONTH', order_date) AS order_month
FROM orders;
```

### Aggregate Functions

```sql
SELECT 
  COUNT(*) AS total_rows,
  SUM(sales) AS total_sales,
  AVG(sales) AS avg_sales,
  MIN(sales) AS min_sales,
  MAX(sales) AS max_sales
FROM sales;
```

## Semi-Structured Data Queries

```sql
-- Querying JSON
SELECT 
  id,
  data:name::STRING AS name,
  data:age::INTEGER AS age,
  data:address.city::STRING AS city
FROM json_table;

-- Flattening arrays
SELECT 
  id,
  f.value::STRING AS tag
FROM tags_table t,
LATERAL FLATTEN(INPUT => t.tags) f;
```

## Best Practices

1. **Use Specific Columns**: Avoid SELECT *
2. **Filter Early**: Use WHERE clauses
3. **Use Appropriate JOINs**: Choose correct JOIN type
4. **Limit Results**: Use LIMIT when appropriate
5. **Index Functions**: Avoid functions on indexed columns
6. **Use CTEs**: For complex queries
7. **Optimize Aggregations**: Use appropriate aggregate functions

