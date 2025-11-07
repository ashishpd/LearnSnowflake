# Semi-Structured Data in Snowflake

## Overview

Snowflake natively supports semi-structured data formats including JSON, Avro, ORC, Parquet, and XML. This enables querying and analyzing data without pre-processing.

## Supported Formats

- **JSON**: JavaScript Object Notation
- **Avro**: Apache Avro format
- **ORC**: Optimized Row Columnar
- **Parquet**: Columnar storage format
- **XML**: Extensible Markup Language

## VARIANT Data Type

### Overview

The VARIANT data type can store semi-structured data in its native format.

### Creating Tables with VARIANT

```sql
CREATE TABLE json_data (
  id INTEGER,
  data VARIANT
);
```

### Loading JSON Data

```sql
-- Load JSON file
COPY INTO json_data
FROM @my_stage
FILE_FORMAT = (TYPE = 'JSON');
```

### Querying VARIANT Data

```sql
-- Access JSON fields
SELECT 
  id,
  data:name::STRING AS name,
  data:age::INTEGER AS age,
  data:address.city::STRING AS city
FROM json_data;

-- Query nested objects
SELECT 
  data:user.profile.email::STRING AS email
FROM json_data;
```

## FLATTEN Function

### Overview

FLATTEN converts nested arrays and objects into rows.

### Flattening Arrays

```sql
-- Flatten array
SELECT 
  id,
  f.value::STRING AS tag
FROM tags_table t,
LATERAL FLATTEN(INPUT => t.tags) f;
```

### Flattening Nested Objects

```sql
-- Flatten nested structure
SELECT 
  id,
  f.key::STRING AS attribute_name,
  f.value::STRING AS attribute_value
FROM json_data,
LATERAL FLATTEN(INPUT => data:attributes) f;
```

## Best Practices

1. **Use VARIANT**: Store semi-structured data as VARIANT
2. **Extract Early**: Extract frequently used fields
3. **Use FLATTEN**: For array and nested object processing
4. **Optimize Queries**: Use appropriate data types when extracting
5. **File Format**: Choose appropriate file format for your use case

