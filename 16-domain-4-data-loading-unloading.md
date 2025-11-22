# Domain 4.0: Data Loading and Unloading
## 36 Practice Questions for SnowPro Core Certification

## Overview

This document contains 36 multiple-choice questions covering **Domain 4.0: Data Loading and Unloading (12% of exam)**. Topics include:
- COPY INTO command for bulk loading
- Snowpipe for continuous loading
- File formats (CSV, JSON, Parquet, Avro, ORC, XML)
- Internal and external stages
- Data unloading with COPY INTO
- File format options
- Error handling during loading
- Loading best practices
- Snowpipe configuration
- AUTO_INGEST

## How to Use

1. Attempt each question before reading the explanation
2. Review explanations to understand concepts deeply
3. Focus on areas where you get questions wrong
4. Use for self-assessment and exam preparation

---

### Question 1

What is the primary command for bulk loading data into Snowflake?

A. INSERT INTO  
B. COPY INTO  
C. LOAD DATA  
D. IMPORT DATA  

**Correct Answer: B**

**Explanation:**
- **B is correct**: `COPY INTO` is the primary command for bulk loading data into Snowflake tables.
- **A is incorrect**: INSERT INTO is for small volumes, not bulk loading.
- **C is incorrect**: LOAD DATA is not a valid Snowflake command.
- **D is incorrect**: IMPORT DATA is not a valid Snowflake command.

---

### Question 2

What is Snowpipe?

A. A data transformation tool  
B. A continuous data ingestion service  
C. A data visualization tool  
D. A backup service  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Snowpipe is Snowflake's continuous, event-driven data ingestion service.
- **A is incorrect**: Snowpipe loads data but doesn't transform it (though transformations can be added).
- **C is incorrect**: Snowpipe is not for visualization.
- **D is incorrect**: Snowpipe is for loading data, not backing it up.

---

### Question 3

What triggers a Snowpipe to load data?

A. Manual execution  
B. Scheduled execution  
C. Cloud storage events (S3, Azure, GCS)  
D. Database triggers  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Snowpipe is triggered by cloud storage events when files arrive (with AUTO_INGEST = TRUE).
- **A is incorrect**: Snowpipe is automatic, not manual.
- **B is incorrect**: Snowpipe is event-driven, not scheduled.
- **D is incorrect**: Database triggers don't trigger Snowpipe.

---

### Question 4

Which file format is NOT natively supported by Snowflake's COPY INTO?

A. CSV  
B. JSON  
C. Excel (.xlsx)  
D. Parquet  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Excel (.xlsx) files are not natively supported; you need to convert to CSV first.
- **A is incorrect**: CSV is fully supported.
- **B is incorrect**: JSON is fully supported.
- **D is incorrect**: Parquet is fully supported.

---

### Question 5

What is the optimal file size for loading into Snowflake?

A. 1-10MB compressed  
B. 100-250MB compressed  
C. 500MB-1GB compressed  
D. Any size works equally well  

**Correct Answer: B**

**Explanation:**
- **B is correct**: 100-250MB compressed is the optimal file size for best loading performance.
- **A is incorrect**: Files smaller than 100MB may not utilize parallelism effectively.
- **C is incorrect**: Files larger than 250MB may take longer to process.
- **D is incorrect**: File size does affect performance.

---

### Question 6

What does the ON_ERROR = 'CONTINUE' option do in COPY INTO?

A. Stops loading on first error  
B. Continues loading, skipping errors  
C. Retries failed rows  
D. Logs errors but doesn't load data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: ON_ERROR = 'CONTINUE' continues loading and skips rows with errors.
- **A is incorrect**: That would be ON_ERROR = 'ABORT_STATEMENT'.
- **C is incorrect**: COPY INTO doesn't automatically retry; you need to manually retry.
- **D is incorrect**: Data is still loaded; errors are just skipped.

---

### Question 7

What is the advantage of using compressed files for loading?

A. Reduced storage costs  
B. Faster loading  
C. Better data quality  
D. Smaller file sizes only  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Compressed files load faster because less data needs to be transferred and processed.
- **A is incorrect**: While compression helps, the main advantage for loading is speed.
- **C is incorrect**: Compression doesn't affect data quality.
- **D is incorrect**: Smaller files are a benefit, but faster loading is the key advantage.

---

### Question 8

What does VALIDATION_MODE = 'RETURN_ERRORS' do?

A. Loads data and returns errors  
B. Validates files without loading data  
C. Loads only valid rows  
D. Skips validation  

**Correct Answer: B**

**Explanation:**
- **B is correct**: VALIDATION_MODE = 'RETURN_ERRORS' validates files and returns errors without loading any data.
- **A is incorrect**: It doesn't load data; it only validates.
- **C is incorrect**: No data is loaded in validation mode.
- **D is incorrect**: It performs validation, not skips it.

---

### Question 9

Which compression format is recommended for CSV files in Snowflake?

A. ZIP  
B. GZIP  
C. BZIP2  
D. RAR  

**Correct Answer: B**

**Explanation:**
- **B is correct**: GZIP is the recommended compression format for CSV files in Snowflake.
- **A is incorrect**: ZIP is supported but GZIP is preferred.
- **C is incorrect**: BZIP2 is supported but slower than GZIP.
- **D is incorrect**: RAR is not supported by Snowflake.

---

### Question 10

What is the difference between an internal stage and an external stage?

A. No difference  
B. Internal stages are in Snowflake, external stages are in cloud storage  
C. Internal stages are faster  
D. External stages cost more  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Internal stages store files in Snowflake, while external stages reference files in cloud storage (S3, Azure, GCS).
- **A is incorrect**: There is a significant difference.
- **C is incorrect**: Speed depends on many factors, not just stage type.
- **D is incorrect**: External stages may actually reduce costs by not storing data in Snowflake.

---

### Question 11

What happens if you load the same file twice with COPY INTO?

A. Data is duplicated  
B. Data is updated  
C. Snowflake skips already loaded files (by default)  
D. An error occurs  

**Correct Answer: C**

**Explanation:**
- **C is correct**: By default, Snowflake tracks loaded files and skips files that have already been loaded to prevent duplicates.
- **A is incorrect**: Snowflake prevents duplicates by default.
- **B is incorrect**: Data is not updated; files are skipped.
- **D is incorrect**: No error occurs; files are silently skipped.

---

### Question 12

What is the purpose of the PATTERN parameter in COPY INTO?

A. Validate data patterns  
B. Select files matching a regex pattern  
C. Transform data  
D. Compress files  

**Correct Answer: B**

**Explanation:**
- **B is correct**: PATTERN uses regex to select which files to load from a stage.
- **A is incorrect**: PATTERN doesn't validate data; it selects files.
- **C is incorrect**: PATTERN doesn't transform data.
- **D is incorrect**: PATTERN doesn't compress files.

---

### Question 13

Can you transform data during loading with COPY INTO?

A. No, never  
B. Yes, using a SELECT statement in the FROM clause  
C. Only with Snowpipe  
D. Only with external tables  

**Correct Answer: B**

**Explanation:**
- **B is correct**: You can transform data during COPY INTO by using a SELECT statement in the FROM clause.
- **A is incorrect**: Transformation is possible with SELECT.
- **C is incorrect**: COPY INTO also supports transformations.
- **D is incorrect**: External tables are for querying, not loading with transformations.

---

### Question 14

What is the maximum number of files that can be loaded in parallel?

A. 10  
B. 100  
C. Limited by warehouse size  
D. Unlimited  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Parallel loading is limited by warehouse size - larger warehouses can load more files in parallel.
- **A is incorrect**: 10 is too low; Snowflake can handle more.
- **B is incorrect**: 100 is not a hard limit; it depends on warehouse size.
- **D is incorrect**: There are practical limits based on warehouse resources.

---

### Question 15

What does AUTO_INGEST = TRUE do in Snowpipe?

A. Automatically compresses files  
B. Enables automatic loading when files arrive  
C. Automatically validates files  
D. Automatically deletes files after loading  

**Correct Answer: B**

**Explanation:**
- **B is correct**: AUTO_INGEST = TRUE enables automatic loading when files arrive in the external stage.
- **A is incorrect**: AUTO_INGEST doesn't compress files.
- **C is incorrect**: AUTO_INGEST doesn't validate; it loads.
- **D is incorrect**: AUTO_INGEST doesn't delete files.

---

### Question 16

What information is available in the LOAD_HISTORY table function?

A. Only success status  
B. File names, rows loaded, errors  
C. Only error messages  
D. Only file names  

**Correct Answer: B**

**Explanation:**
- **B is correct**: LOAD_HISTORY provides comprehensive information including file names, rows loaded, errors, and status.
- **A is incorrect**: It provides much more than just status.
- **C is incorrect**: It provides more than just errors.
- **D is incorrect**: It provides much more than just file names.

---

### Question 17

What is the recommended approach for loading very large files?

A. Load as single file  
B. Split into multiple smaller files  
C. Compress more  
D. Use larger warehouse only  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Splitting large files into multiple smaller files (100-250MB) enables better parallelism and faster loading.
- **A is incorrect**: Single large files don't utilize parallelism well.
- **C is incorrect**: Compression helps but splitting is more important.
- **D is incorrect**: Warehouse size helps, but file splitting is still recommended.

---

### Question 18

Can Snowpipe load data from multiple cloud providers simultaneously?

A. No, only one cloud provider  
B. Yes, with separate pipes  
C. Yes, with a single pipe  
D. Only with external tables  

**Correct Answer: B**

**Explanation:**
- **B is correct**: You can create separate Snowpipes for different cloud providers, but a single pipe typically targets one stage.
- **A is incorrect**: You can use multiple cloud providers.
- **C is incorrect**: A single pipe typically targets one stage/provider.
- **D is incorrect**: External tables are for querying, not loading via Snowpipe.

---

### Question 19

What happens to a Snowpipe if the target table schema changes?

A. Snowpipe continues working  
B. Snowpipe automatically adapts  
C. Snowpipe may fail until updated  
D. Snowpipe is automatically recreated  

**Correct Answer: C**

**Explanation:**
- **C is correct**: If the target table schema changes and the pipe definition doesn't match, the pipe may fail until the pipe definition is updated.
- **A is incorrect**: Schema mismatches can cause failures.
- **B is incorrect**: Snowpipe doesn't automatically adapt to schema changes.
- **D is incorrect**: Snowpipe is not automatically recreated.

---

### Question 20

What is the cost model for Snowpipe?

A. Pay per file loaded  
B. Pay for warehouse compute time  
C. Pay per GB loaded  
D. Free for all loads  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Snowpipe uses serverless compute and you pay for the compute time used during loads (similar to warehouse credits).
- **A is incorrect**: Cost is based on compute, not per file.
- **C is incorrect**: Cost is based on compute time, not data volume.
- **D is incorrect**: Snowpipe is not free; you pay for compute.

---

### Question 21

What is the purpose of the FORCE option in COPY INTO?

A. To force loading even if files are already loaded  
B. To force compression  
C. To force validation  
D. To force error handling  

**Correct Answer: A**

**Explanation:**
- **A is correct**: FORCE = TRUE forces loading even if files have been loaded before, bypassing the default duplicate detection.
- **B is incorrect**: FORCE doesn't force compression.
- **C is incorrect**: FORCE doesn't force validation.
- **D is incorrect**: FORCE doesn't force error handling.

---

### Question 22

What is the purpose of the HEADER option in file format?

A. To add headers to files  
B. To skip header rows when loading  
C. To validate headers  
D. To compress headers  

**Correct Answer: B**

**Explanation:**
- **B is correct**: HEADER = TRUE tells Snowflake to skip the first row (header) when loading CSV files.
- **A is incorrect**: HEADER doesn't add headers; it skips them.
- **C is incorrect**: HEADER doesn't validate headers.
- **D is incorrect**: HEADER doesn't compress headers.

---

### Question 23

What is the purpose of the FIELD_DELIMITER option in CSV file format?

A. To specify the column separator  
B. To specify row separator  
C. To specify compression type  
D. To specify encoding  

**Correct Answer: A**

**Explanation:**
- **A is correct**: FIELD_DELIMITER specifies the character that separates columns in CSV files (default is comma).
- **B is incorrect**: Row separator is different (RECORD_DELIMITER).
- **C is incorrect**: FIELD_DELIMITER doesn't specify compression.
- **D is incorrect**: FIELD_DELIMITER doesn't specify encoding.

---

### Question 24

What is the purpose of data unloading in Snowflake?

A. To delete data  
B. To export data to external storage or local files  
C. To compress data  
D. To backup data only  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Data unloading exports data from Snowflake tables to external storage (S3, Azure, GCS) or local files.
- **A is incorrect**: Unloading exports data; it doesn't delete it.
- **C is incorrect**: Unloading may compress, but that's not its primary purpose.
- **D is incorrect**: Unloading is for export, not just backup.

---

### Question 25

What command is used for data unloading?

A. EXPORT  
B. COPY INTO (with FROM table TO stage)  
C. UNLOAD  
D. EXTRACT  

**Correct Answer: B**

**Explanation:**
- **B is correct**: COPY INTO is used for unloading with syntax: COPY INTO @stage FROM table.
- **A is incorrect**: EXPORT is not a valid Snowflake command.
- **C is incorrect**: UNLOAD is not a valid Snowflake command.
- **D is incorrect**: EXTRACT is not a valid Snowflake command.

---

### Question 26

What file formats can be used for unloading?

A. Only CSV  
B. CSV and JSON only  
C. CSV, JSON, Parquet, and other supported formats  
D. Only Parquet  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Snowflake supports unloading to CSV, JSON, Parquet, and other supported file formats.
- **A is incorrect**: Multiple formats are supported.
- **B is incorrect**: More formats than just CSV and JSON are supported.
- **D is incorrect**: Parquet is one option, but not the only one.

---

### Question 27

What is the purpose of the SINGLE option when unloading?

A. To unload to a single file  
B. To unload only one row  
C. To unload only one column  
D. To unload once  

**Correct Answer: A**

**Explanation:**
- **A is correct**: SINGLE = TRUE unloads all data to a single file instead of multiple files.
- **B is incorrect**: SINGLE is about file count, not row count.
- **C is incorrect**: SINGLE is about file count, not column count.
- **D is incorrect**: SINGLE is about file count, not unload frequency.

---

### Question 28

What is the purpose of the OVERWRITE option when unloading?

A. To overwrite existing files in the stage  
B. To overwrite the source table  
C. To overwrite compression  
D. To overwrite file format  

**Correct Answer: A**

**Explanation:**
- **A is correct**: OVERWRITE = TRUE overwrites existing files with the same name in the target stage.
- **B is incorrect**: OVERWRITE doesn't affect the source table.
- **C is incorrect**: OVERWRITE doesn't affect compression.
- **D is incorrect**: OVERWRITE doesn't affect file format.

---

### Question 29

What is the recommended approach for handling loading errors?

A. Always use ABORT_STATEMENT  
B. Use appropriate ON_ERROR option based on requirements  
C. Ignore all errors  
D. Don't use error handling  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Choose the appropriate ON_ERROR option (CONTINUE, SKIP_FILE, ABORT_STATEMENT) based on your requirements.
- **A is incorrect**: ABORT_STATEMENT may not be appropriate for all scenarios.
- **C is incorrect**: Errors should be handled appropriately.
- **D is incorrect**: Error handling is important for data quality.

---

### Question 30

What is the purpose of the FILE_FORMAT parameter in COPY INTO?

A. To specify the source file format  
B. To specify the target file format  
C. To validate file format  
D. To convert file format  

**Correct Answer: A**

**Explanation:**
- **A is correct**: FILE_FORMAT specifies the format of source files being loaded (CSV, JSON, Parquet, etc.).
- **B is incorrect**: For loading, it specifies source format, not target.
- **C is incorrect**: FILE_FORMAT doesn't validate; it specifies format.
- **D is incorrect**: FILE_FORMAT doesn't convert; it specifies how to read the format.

---

### Question 31

What is the purpose of the MAX_FILE_SIZE option when unloading?

A. To limit the size of source files  
B. To limit the size of unloaded files  
C. To limit the number of files  
D. To limit compression  

**Correct Answer: B**

**Explanation:**
- **B is correct**: MAX_FILE_SIZE limits the size of individual unloaded files.
- **A is incorrect**: MAX_FILE_SIZE is for unloading, not source files.
- **C is incorrect**: MAX_FILE_SIZE limits file size, not count.
- **D is incorrect**: MAX_FILE_SIZE doesn't limit compression.

---

### Question 32

What is the purpose of the ENCRYPTION option in file format?

A. To encrypt data in Snowflake  
B. To specify encryption for files in external stages  
C. To decrypt data  
D. To hash data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: ENCRYPTION specifies encryption settings for files in external stages (for loading/unloading).
- **A is incorrect**: Snowflake data encryption is separate from file format encryption.
- **C is incorrect**: ENCRYPTION encrypts, not decrypts.
- **D is incorrect**: ENCRYPTION encrypts, not hashes.

---

### Question 33

What is the purpose of the NULL_IF option in file format?

A. To specify NULL values  
B. To convert NULL to empty strings  
C. To skip NULL values  
D. To count NULL values  

**Correct Answer: A**

**Explanation:**
- **A is correct**: NULL_IF specifies which values in source files should be treated as NULL when loading.
- **B is incorrect**: NULL_IF doesn't convert NULL to empty strings.
- **C is incorrect**: NULL_IF doesn't skip NULL values.
- **D is incorrect**: NULL_IF doesn't count NULL values.

---

### Question 34

What is the purpose of the ERROR_ON_COLUMN_COUNT_MISMATCH option?

A. To ignore column count mismatches  
B. To raise errors when column counts don't match  
C. To fix column count mismatches  
D. To count columns  

**Correct Answer: B**

**Explanation:**
- **B is correct**: ERROR_ON_COLUMN_COUNT_MISMATCH = TRUE raises errors when source file column count doesn't match table schema.
- **A is incorrect**: The option controls whether to error, not ignore.
- **C is incorrect**: The option doesn't fix mismatches.
- **D is incorrect**: The option doesn't count columns.

---

### Question 35

What is the purpose of the TRIM_SPACE option in file format?

A. To add spaces  
B. To remove leading/trailing spaces from fields  
C. To compress spaces  
D. To validate spaces  

**Correct Answer: B**

**Explanation:**
- **B is correct**: TRIM_SPACE = TRUE removes leading and trailing spaces from field values when loading.
- **A is incorrect**: TRIM_SPACE removes spaces, not adds them.
- **C is incorrect**: TRIM_SPACE doesn't compress spaces.
- **D is incorrect**: TRIM_SPACE doesn't validate spaces.

---

### Question 36

What is the recommended approach for monitoring Snowpipe performance?

A. Don't monitor, it's automatic  
B. Use SNOWPIPE_HISTORY and query history views  
C. Only monitor errors  
D. Monitoring is not available  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Use SNOWPIPE_HISTORY and query history views to monitor Snowpipe performance, errors, and load times.
- **A is incorrect**: Monitoring is important for troubleshooting and optimization.
- **C is incorrect**: Monitor more than just errors (performance, timing, etc.).
- **D is incorrect**: Monitoring is definitely available.

---

## Summary

This document contains 36 questions covering **Domain 4.0: Data Loading and Unloading**. Focus on:
- COPY INTO syntax and options for loading
- Snowpipe configuration and use cases
- File format specifications and options
- Loading and unloading best practices
- Error handling strategies
- Stage types (internal vs external)

**Key Concepts to Master:**
- COPY INTO command for bulk loading
- Snowpipe for continuous loading
- File formats (CSV, JSON, Parquet, Avro, ORC, XML)
- File format options (compression, delimiters, headers, etc.)
- Error handling (ON_ERROR options)
- Data unloading with COPY INTO
- Stage management (internal and external)

Good luck with your SnowPro Core Certification exam preparation!

