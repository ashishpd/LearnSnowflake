# Domain 5.0: Data Transformations
## 54 Practice Questions for SnowPro Core Certification

## Overview

This document contains 54 multiple-choice questions covering **Domain 5.0: Data Transformations (18% of exam)**. Topics include:
- SQL DDL, DML, DQL
- Data types (numeric, string, date/time, semi-structured)
- Window functions
- Aggregate functions
- JOIN operations
- Subqueries and CTEs
- Semi-structured data (VARIANT, OBJECT, ARRAY)
- FLATTEN function
- JSON querying
- Stored procedures
- User-defined functions (UDFs)
- Views and materialized views
- MERGE statements
- Data type conversions

## How to Use

1. Attempt each question before reading the explanation
2. Review explanations to understand concepts deeply
3. Focus on areas where you get questions wrong
4. Use for self-assessment and exam preparation

---

### Question 1

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

### Question 2

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

### Question 3

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

### Question 4

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

### Question 5

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

### Question 6

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

### Question 7

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

### Question 8

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

### Question 9

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

### Question 10

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

### Question 11

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

### Question 12

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

### Question 13

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

### Question 14

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

### Question 15

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

### Question 16

What is the purpose of the PARTITION BY clause in window functions?

A. To filter rows  
B. To divide rows into partitions for window function calculation  
C. To join tables  
D. To group rows  

**Correct Answer: B**

**Explanation:**
- **B is correct**: PARTITION BY divides rows into partitions, and window functions are calculated within each partition.
- **A is incorrect**: WHERE filters rows, not PARTITION BY.
- **C is incorrect**: JOIN joins tables, not PARTITION BY.
- **D is incorrect**: GROUP BY groups rows, not PARTITION BY.

---

### Question 17

What is the difference between COUNT(*) and COUNT(column_name)?

A. No difference  
B. COUNT(*) counts all rows, COUNT(column) counts non-NULL values  
C. COUNT(*) counts non-NULL values, COUNT(column) counts all rows  
D. COUNT(*) is faster  

**Correct Answer: B**

**Explanation:**
- **B is correct**: COUNT(*) counts all rows including NULLs, while COUNT(column) counts only non-NULL values in that column.
- **A is incorrect**: There is a difference.
- **C is incorrect**: It's the opposite.
- **D is incorrect**: Performance depends on context, not a general rule.

---

### Question 18

What is the purpose of the DISTINCT keyword?

A. To sort data  
B. To remove duplicate rows from results  
C. To filter data  
D. To join tables  

**Correct Answer: B**

**Explanation:**
- **B is correct**: DISTINCT removes duplicate rows from query results.
- **A is incorrect**: ORDER BY sorts data, not DISTINCT.
- **C is incorrect**: WHERE filters data, not DISTINCT.
- **D is incorrect**: JOIN joins tables, not DISTINCT.

---

### Question 19

What is the purpose of the GROUP BY clause?

A. To filter rows  
B. To group rows for aggregate functions  
C. To sort rows  
D. To join tables  

**Correct Answer: B**

**Explanation:**
- **B is correct**: GROUP BY groups rows so aggregate functions (SUM, COUNT, AVG, etc.) can be applied to each group.
- **A is incorrect**: WHERE filters rows, not GROUP BY.
- **C is incorrect**: ORDER BY sorts rows, not GROUP BY.
- **D is incorrect**: JOIN joins tables, not GROUP BY.

---

### Question 20

What is the purpose of the ORDER BY clause?

A. To filter rows  
B. To group rows  
C. To sort result rows  
D. To join tables  

**Correct Answer: C**

**Explanation:**
- **C is correct**: ORDER BY sorts the result set by specified columns.
- **A is incorrect**: WHERE filters rows, not ORDER BY.
- **B is incorrect**: GROUP BY groups rows, not ORDER BY.
- **D is incorrect**: JOIN joins tables, not ORDER BY.

---

### Question 21

What is the purpose of the LIMIT clause?

A. To filter rows  
B. To group rows  
C. To limit the number of rows returned  
D. To join tables  

**Correct Answer: C**

**Explanation:**
- **C is correct**: LIMIT restricts the number of rows returned by a query.
- **A is incorrect**: WHERE filters rows, not LIMIT.
- **B is incorrect**: GROUP BY groups rows, not LIMIT.
- **D is incorrect**: JOIN joins tables, not LIMIT.

---

### Question 22

What is the purpose of the CAST function?

A. To convert data types  
B. To filter data  
C. To join tables  
D. To group data  

**Correct Answer: A**

**Explanation:**
- **A is correct**: CAST converts a value from one data type to another.
- **B is incorrect**: WHERE filters data, not CAST.
- **C is incorrect**: JOIN joins tables, not CAST.
- **D is incorrect**: GROUP BY groups data, not CAST.

---

### Question 23

What is the purpose of the CONCAT function?

A. To convert data types  
B. To combine strings  
C. To filter data  
D. To join tables  

**Correct Answer: B**

**Explanation:**
- **B is correct**: CONCAT combines multiple strings into one string.
- **A is incorrect**: CAST converts data types, not CONCAT.
- **C is incorrect**: WHERE filters data, not CONCAT.
- **D is incorrect**: JOIN joins tables, not CONCAT.

---

### Question 24

What is the purpose of the TRIM function?

A. To remove leading and trailing spaces  
B. To add spaces  
C. To filter data  
D. To join tables  

**Correct Answer: A**

**Explanation:**
- **A is correct**: TRIM removes leading and trailing spaces (or other characters) from a string.
- **B is incorrect**: TRIM removes spaces, not adds them.
- **C is incorrect**: WHERE filters data, not TRIM.
- **D is incorrect**: JOIN joins tables, not TRIM.

---

### Question 25

What is the purpose of the SUBSTRING function?

A. To extract a portion of a string  
B. To combine strings  
C. To filter data  
D. To join tables  

**Correct Answer: A**

**Explanation:**
- **A is correct**: SUBSTRING extracts a portion of a string based on position and length.
- **B is incorrect**: CONCAT combines strings, not SUBSTRING.
- **C is incorrect**: WHERE filters data, not SUBSTRING.
- **D is incorrect**: JOIN joins tables, not SUBSTRING.

---

### Question 26

What is the purpose of the DATE_TRUNC function?

A. To truncate dates to a specified precision  
B. To add dates  
C. To filter dates  
D. To join dates  

**Correct Answer: A**

**Explanation:**
- **A is correct**: DATE_TRUNC truncates a date/time to a specified precision (day, month, year, etc.).
- **B is incorrect**: DATEADD adds to dates, not DATE_TRUNC.
- **C is incorrect**: WHERE filters dates, not DATE_TRUNC.
- **D is incorrect**: DATE_TRUNC doesn't join dates.

---

### Question 27

What is the purpose of the DATEDIFF function?

A. To calculate the difference between two dates  
B. To add dates  
C. To filter dates  
D. To join dates  

**Correct Answer: A**

**Explanation:**
- **A is correct**: DATEDIFF calculates the difference between two dates in specified units (days, months, years, etc.).
- **B is incorrect**: DATEADD adds to dates, not DATEDIFF.
- **C is incorrect**: WHERE filters dates, not DATEDIFF.
- **D is incorrect**: DATEDIFF doesn't join dates.

---

### Question 28

What is the purpose of a stored procedure in Snowflake?

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

### Question 29

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

### Question 30

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

### Question 31

What is the purpose of the LEAD() window function?

A. Returns the previous row's value  
B. Returns the next row's value  
C. Returns the first row's value  
D. Returns the last row's value  

**Correct Answer: B**

**Explanation:**
- **B is correct**: LEAD() returns the value from the next row in the window.
- **A is incorrect**: That would be LAG().
- **C is incorrect**: That would be FIRST_VALUE().
- **D is incorrect**: That would be LAST_VALUE().

---

### Question 32

What is the purpose of the ROW_NUMBER() window function?

A. To count rows  
B. To assign sequential numbers to rows  
C. To filter rows  
D. To join rows  

**Correct Answer: B**

**Explanation:**
- **B is correct**: ROW_NUMBER() assigns a unique sequential number to each row in the result set.
- **A is incorrect**: COUNT counts rows, not ROW_NUMBER.
- **C is incorrect**: WHERE filters rows, not ROW_NUMBER.
- **D is incorrect**: JOIN joins rows, not ROW_NUMBER.

---

### Question 33

What is the purpose of the FIRST_VALUE() window function?

A. Returns the first row's value in the window  
B. Returns the last row's value  
C. Returns the previous row's value  
D. Returns the next row's value  

**Correct Answer: A**

**Explanation:**
- **A is correct**: FIRST_VALUE() returns the value from the first row in the window frame.
- **B is incorrect**: That would be LAST_VALUE().
- **C is incorrect**: That would be LAG().
- **D is incorrect**: That would be LEAD().

---

### Question 34

What is the purpose of the SUM() aggregate function?

A. To count rows  
B. To calculate the sum of numeric values  
C. To find the average  
D. To find the maximum  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SUM() calculates the sum of numeric values in a group.
- **A is incorrect**: COUNT counts rows, not SUM.
- **C is incorrect**: AVG finds the average, not SUM.
- **D is incorrect**: MAX finds the maximum, not SUM.

---

### Question 35

What is the purpose of the AVG() aggregate function?

A. To count rows  
B. To calculate the sum  
C. To calculate the average  
D. To find the maximum  

**Correct Answer: C**

**Explanation:**
- **C is correct**: AVG() calculates the average of numeric values in a group.
- **A is incorrect**: COUNT counts rows, not AVG.
- **B is incorrect**: SUM calculates the sum, not AVG.
- **D is incorrect**: MAX finds the maximum, not AVG.

---

### Question 36

What is the purpose of the MAX() aggregate function?

A. To count rows  
B. To calculate the sum  
C. To calculate the average  
D. To find the maximum value  

**Correct Answer: D**

**Explanation:**
- **D is correct**: MAX() returns the maximum value in a group.
- **A is incorrect**: COUNT counts rows, not MAX.
- **B is incorrect**: SUM calculates the sum, not MAX.
- **C is incorrect**: AVG calculates the average, not MAX.

---

### Question 37

What is the purpose of the MIN() aggregate function?

A. To count rows  
B. To calculate the sum  
C. To calculate the average  
D. To find the minimum value  

**Correct Answer: D**

**Explanation:**
- **D is correct**: MIN() returns the minimum value in a group.
- **A is incorrect**: COUNT counts rows, not MIN.
- **B is incorrect**: SUM calculates the sum, not MIN.
- **C is incorrect**: AVG calculates the average, not MIN.

---

### Question 38

What is the purpose of the LIKE operator?

A. To join tables  
B. To filter rows using pattern matching  
C. To group rows  
D. To sort rows  

**Correct Answer: B**

**Explanation:**
- **B is correct**: LIKE is used for pattern matching in WHERE clauses (e.g., WHERE name LIKE 'John%').
- **A is incorrect**: JOIN joins tables, not LIKE.
- **C is incorrect**: GROUP BY groups rows, not LIKE.
- **D is incorrect**: ORDER BY sorts rows, not LIKE.

---

### Question 39

What is the purpose of the IN operator?

A. To check if a value exists in a list  
B. To join tables  
C. To group rows  
D. To sort rows  

**Correct Answer: A**

**Explanation:**
- **A is correct**: IN checks if a value exists in a list of values (e.g., WHERE id IN (1, 2, 3)).
- **B is incorrect**: JOIN joins tables, not IN.
- **C is incorrect**: GROUP BY groups rows, not IN.
- **D is incorrect**: ORDER BY sorts rows, not IN.

---

### Question 40

What is the purpose of the BETWEEN operator?

A. To check if a value is within a range  
B. To join tables  
C. To group rows  
D. To sort rows  

**Correct Answer: A**

**Explanation:**
- **A is correct**: BETWEEN checks if a value is within a range (e.g., WHERE age BETWEEN 18 AND 65).
- **B is incorrect**: JOIN joins tables, not BETWEEN.
- **C is incorrect**: GROUP BY groups rows, not BETWEEN.
- **D is incorrect**: ORDER BY sorts rows, not BETWEEN.

---

### Question 41

What is the purpose of the IS NULL operator?

A. To check if a value is NULL  
B. To join tables  
C. To group rows  
D. To sort rows  

**Correct Answer: A**

**Explanation:**
- **A is correct**: IS NULL checks if a value is NULL (e.g., WHERE column IS NULL).
- **B is incorrect**: JOIN joins tables, not IS NULL.
- **C is incorrect**: GROUP BY groups rows, not IS NULL.
- **D is incorrect**: ORDER BY sorts rows, not IS NULL.

---

### Question 42

What is the purpose of the OBJECT data type?

A. To store key-value pairs (JSON objects)  
B. To store arrays  
C. To store text  
D. To store numbers  

**Correct Answer: A**

**Explanation:**
- **A is correct**: OBJECT stores key-value pairs, typically JSON objects.
- **B is incorrect**: ARRAY stores arrays, not OBJECT.
- **C is incorrect**: VARCHAR stores text, not OBJECT.
- **D is incorrect**: NUMBER stores numbers, not OBJECT.

---

### Question 43

What is the purpose of the ARRAY data type?

A. To store key-value pairs  
B. To store ordered lists of values  
C. To store text  
D. To store numbers  

**Correct Answer: B**

**Explanation:**
- **B is correct**: ARRAY stores ordered lists of values.
- **A is incorrect**: OBJECT stores key-value pairs, not ARRAY.
- **C is incorrect**: VARCHAR stores text, not ARRAY.
- **D is incorrect**: NUMBER stores numbers, not ARRAY.

---

### Question 44

What is the purpose of the LATERAL FLATTEN syntax?

A. To flatten nested arrays and objects in a table function  
B. To join tables  
C. To group rows  
D. To sort rows  

**Correct Answer: A**

**Explanation:**
- **A is correct**: LATERAL FLATTEN is used to flatten nested arrays and objects, typically in a FROM clause with a table function.
- **B is incorrect**: JOIN joins tables, not LATERAL FLATTEN.
- **C is incorrect**: GROUP BY groups rows, not LATERAL FLATTEN.
- **D is incorrect**: ORDER BY sorts rows, not LATERAL FLATTEN.

---

### Question 45

What is the purpose of the :: operator in Snowflake?

A. To cast data types  
B. To join tables  
C. To group rows  
D. To sort rows  

**Correct Answer: A**

**Explanation:**
- **A is correct**: The :: operator is shorthand for CAST (e.g., value::STRING).
- **B is incorrect**: JOIN joins tables, not ::.
- **C is incorrect**: GROUP BY groups rows, not ::.
- **D is incorrect**: ORDER BY sorts rows, not ::.

---

### Question 46

What is the purpose of the IFNULL function?

A. To return the first non-NULL value  
B. To return a specified value if the first argument is NULL  
C. To check if a value is NULL  
D. To convert NULL to zero  

**Correct Answer: B**

**Explanation:**
- **B is correct**: IFNULL returns a specified value if the first argument is NULL, otherwise returns the first argument.
- **A is incorrect**: That's what COALESCE does.
- **C is incorrect**: IS NULL checks for NULL, not IFNULL.
- **D is incorrect**: IFNULL can return any value, not just zero.

---

### Question 47

What is the purpose of the NVL function?

A. To return the first non-NULL value  
B. To return a specified value if the first argument is NULL (same as IFNULL)  
C. To check if a value is NULL  
D. To convert NULL to zero  

**Correct Answer: B**

**Explanation:**
- **B is correct**: NVL is equivalent to IFNULL - returns a specified value if the first argument is NULL.
- **A is incorrect**: That's what COALESCE does.
- **C is incorrect**: IS NULL checks for NULL, not NVL.
- **D is incorrect**: NVL can return any value, not just zero.

---

### Question 48

What is the purpose of the REGEXP_LIKE function?

A. To join tables  
B. To filter rows using regular expression pattern matching  
C. To group rows  
D. To sort rows  

**Correct Answer: B**

**Explanation:**
- **B is correct**: REGEXP_LIKE checks if a string matches a regular expression pattern.
- **A is incorrect**: JOIN joins tables, not REGEXP_LIKE.
- **C is incorrect**: GROUP BY groups rows, not REGEXP_LIKE.
- **D is incorrect**: ORDER BY sorts rows, not REGEXP_LIKE.

---

### Question 49

What is the purpose of the SPLIT function?

A. To split a string into an array  
B. To combine strings  
C. To filter data  
D. To join tables  

**Correct Answer: A**

**Explanation:**
- **A is correct**: SPLIT divides a string into an array based on a delimiter.
- **B is incorrect**: CONCAT combines strings, not SPLIT.
- **C is incorrect**: WHERE filters data, not SPLIT.
- **D is incorrect**: JOIN joins tables, not SPLIT.

---

### Question 50

What is the purpose of the ARRAY_AGG function?

A. To create an array from values  
B. To split arrays  
C. To filter arrays  
D. To join arrays  

**Correct Answer: A**

**Explanation:**
- **A is correct**: ARRAY_AGG aggregates values into an array.
- **B is incorrect**: SPLIT splits strings, not ARRAY_AGG.
- **C is incorrect**: ARRAY_AGG doesn't filter.
- **D is incorrect**: ARRAY_AGG doesn't join.

---

### Question 51

What is the purpose of the OBJECT_CONSTRUCT function?

A. To create an object from key-value pairs  
B. To split objects  
C. To filter objects  
D. To join objects  

**Correct Answer: A**

**Explanation:**
- **A is correct**: OBJECT_CONSTRUCT creates an object from key-value pairs.
- **B is incorrect**: OBJECT_CONSTRUCT doesn't split.
- **C is incorrect**: OBJECT_CONSTRUCT doesn't filter.
- **D is incorrect**: OBJECT_CONSTRUCT doesn't join.

---

### Question 52

What is the purpose of the PARSE_JSON function?

A. To parse a JSON string into a VARIANT value  
B. To convert VARIANT to JSON string  
C. To filter JSON  
D. To join JSON  

**Correct Answer: A**

**Explanation:**
- **A is correct**: PARSE_JSON parses a JSON string into a VARIANT value.
- **B is incorrect**: That would be TO_JSON or similar.
- **C is incorrect**: PARSE_JSON doesn't filter.
- **D is incorrect**: PARSE_JSON doesn't join.

---

### Question 53

What is the purpose of the TO_JSON function?

A. To parse JSON  
B. To convert a VARIANT value to a JSON string  
C. To filter JSON  
D. To join JSON  

**Correct Answer: B**

**Explanation:**
- **B is correct**: TO_JSON converts a VARIANT value to a JSON string.
- **A is incorrect**: PARSE_JSON parses JSON, not TO_JSON.
- **C is incorrect**: TO_JSON doesn't filter.
- **D is incorrect**: TO_JSON doesn't join.

---

### Question 54

What is the purpose of the GET function for VARIANT data?

A. To extract a value from a VARIANT using a path  
B. To insert values  
C. To delete values  
D. To update values  

**Correct Answer: A**

**Explanation:**
- **A is correct**: GET extracts a value from a VARIANT using a path expression.
- **B is incorrect**: GET doesn't insert values.
- **C is incorrect**: GET doesn't delete values.
- **D is incorrect**: GET doesn't update values.

---

## Summary

This document contains 54 questions covering **Domain 5.0: Data Transformations**. Focus on:
- SQL syntax and functions (DDL, DML, DQL)
- Semi-structured data handling (VARIANT, OBJECT, ARRAY)
- Window functions and aggregations
- JOIN operations and subqueries
- Views and stored procedures
- Data type conversions and functions

**Key Concepts to Master:**
- SQL fundamentals (SELECT, WHERE, GROUP BY, HAVING, ORDER BY)
- Window functions (RANK, DENSE_RANK, ROW_NUMBER, LAG, LEAD, etc.)
- JOIN types (INNER, LEFT, RIGHT, FULL OUTER)
- Semi-structured data (VARIANT, FLATTEN, JSON functions)
- Aggregate functions (SUM, COUNT, AVG, MAX, MIN)
- Stored procedures and UDFs
- MERGE statements
- CTEs and subqueries

Good luck with your SnowPro Core Certification exam preparation!

