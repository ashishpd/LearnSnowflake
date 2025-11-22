# Domain 6.0: Data Protection and Data Sharing
## 36 Practice Questions for SnowPro Core Certification

## Overview

This document contains 36 multiple-choice questions covering **Domain 6.0: Data Protection and Data Sharing (12% of exam)**. Topics include:
- Encryption (at rest and in transit)
- Dynamic Data Masking
- Row-Level Security (RLS)
- Data Sharing concepts
- Provider and consumer accounts
- Shares and share management
- Secure views for sharing
- Time Travel
- Fail-safe
- Object tagging
- Network policies
- Compliance features

## How to Use

1. Attempt each question before reading the explanation
2. Review explanations to understand concepts deeply
3. Focus on areas where you get questions wrong
4. Use for self-assessment and exam preparation

---

### Question 1

What is the primary benefit of Snowflake's Data Sharing?

A. Reduced storage costs  
B. Secure data sharing without copying data  
C. Faster data access  
D. Automatic data synchronization  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Data Sharing allows secure sharing without copying or moving data; data remains in the provider account.
- **A is incorrect**: While there are cost benefits, the primary benefit is sharing without copying.
- **C is incorrect**: Speed may vary; the primary benefit is no data copying.
- **D is incorrect**: Data Sharing provides real-time access, not synchronization.

---

### Question 2

What is Dynamic Data Masking used for?

A. Encrypting data  
B. Masking sensitive data based on user role  
C. Compressing data  
D. Backing up data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Dynamic Data Masking masks sensitive data (like emails, SSNs) based on the user's role.
- **A is incorrect**: Masking is different from encryption.
- **C is incorrect**: Masking doesn't compress data.
- **D is incorrect**: Masking doesn't backup data.

---

### Question 3

What is Row-Level Security (RLS) used for?

A. Encrypting rows  
B. Filtering rows based on user context  
C. Compressing rows  
D. Backing up rows  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Row-Level Security filters which rows a user can see based on policies and user context.
- **A is incorrect**: RLS doesn't encrypt rows.
- **C is incorrect**: RLS doesn't compress rows.
- **D is incorrect**: RLS doesn't backup rows.

---

### Question 4

Who pays for storage in a Data Sharing scenario?

A. Consumer  
B. Provider  
C. Both equally  
D. Neither (it's free)  

**Correct Answer: B**

**Explanation:**
- **B is correct**: The provider pays for storage; consumers have read-only access without storage costs.
- **A is incorrect**: Consumers don't pay for storage.
- **C is incorrect**: Only the provider pays.
- **D is incorrect**: Storage is not free; provider pays.

---

### Question 5

What can be shared through a Share object?

A. Only tables  
B. Tables and views  
C. Databases, schemas, tables, views, and UDFs  
D. Only databases  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Shares can contain databases, schemas, tables, views, and user-defined functions.
- **A is incorrect**: More than just tables can be shared.
- **B is incorrect**: More than tables and views can be shared.
- **D is incorrect**: More than just databases can be shared.

---

### Question 6

What is the access level for consumers of shared data?

A. Read and write  
B. Read-only  
C. Write-only  
D. No access  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Consumers have read-only access to shared data.
- **A is incorrect**: Consumers cannot write to shared data.
- **C is incorrect**: Consumers cannot write.
- **D is incorrect**: Consumers have read access.

---

### Question 7

How do you add a consumer account to a share?

A. GRANT SHARE TO ACCOUNT  
B. ALTER SHARE ... ADD ACCOUNTS  
C. CREATE SHARE FOR ACCOUNT  
D. SHARE WITH ACCOUNT  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Use `ALTER SHARE ... ADD ACCOUNTS` to add consumer accounts to a share.
- **A is incorrect**: GRANT SHARE TO ACCOUNT is not valid syntax.
- **C is incorrect**: CREATE SHARE creates the share, doesn't add accounts.
- **D is incorrect**: SHARE WITH ACCOUNT is not valid syntax.

---

### Question 8

What happens when you modify shared data in the provider account?

A. Changes are not visible to consumers  
B. Changes are visible immediately to consumers  
C. Changes require share to be recreated  
D. Changes are queued for next day  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Changes to shared data are immediately visible to consumers in real-time.
- **A is incorrect**: Changes are visible immediately.
- **C is incorrect**: No recreation is needed.
- **D is incorrect**: Changes are real-time, not queued.

---

### Question 9

Can a consumer modify shared data?

A. Yes, with proper permissions  
B. No, read-only access  
C. Yes, but only through views  
D. Yes, but changes are local only  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Consumers have read-only access and cannot modify shared data.
- **A is incorrect**: Consumers cannot modify shared data regardless of permissions.
- **C is incorrect**: Consumers cannot modify through views either.
- **D is incorrect**: Consumers cannot modify shared data at all.

---

### Question 10

What is a Secure View in the context of Data Sharing?

A. A view that encrypts data  
B. A view that filters data for sharing  
C. A view that compresses data  
D. A regular view with a different name  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Secure Views can filter rows and columns, making them ideal for sharing only necessary data with consumers.
- **A is incorrect**: Secure Views don't encrypt; they filter.
- **C is incorrect**: Secure Views don't compress data.
- **D is incorrect**: Secure Views have special properties for data sharing.

---

### Question 11

What encryption does Snowflake use for data at rest?

A. AES-128  
B. AES-256  
C. RSA-2048  
D. DES-256  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Snowflake uses AES-256 encryption for data at rest.
- **A is incorrect**: AES-128 is weaker than AES-256 and not used by Snowflake.
- **C is incorrect**: RSA-2048 is asymmetric encryption, not used for data at rest.
- **D is incorrect**: DES-256 is not a valid encryption standard.

---

### Question 12

What encryption does Snowflake use for data in transit?

A. AES-128  
B. AES-256  
C. TLS 1.2+  
D. SSL 3.0  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Snowflake uses TLS 1.2+ (Transport Layer Security) for data in transit.
- **A is incorrect**: AES-128 is for data at rest, not in transit.
- **B is incorrect**: AES-256 is for data at rest, not in transit.
- **D is incorrect**: SSL 3.0 is outdated and not used.

---

### Question 13

What is Fail-safe in Snowflake?

A. A backup you can query  
B. 7 days of disaster recovery data (not queryable)  
C. A security feature  
D. A performance feature  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Fail-safe provides 7 days of disaster recovery protection; data is not queryable (Enterprise+).
- **A is incorrect**: Fail-safe data is not queryable.
- **C is incorrect**: Fail-safe is for disaster recovery, not security.
- **D is incorrect**: Fail-safe is not a performance feature.

---

### Question 14

What is the maximum Time Travel retention period?

A. 1 day  
B. 7 days  
C. 30 days  
D. 90 days  

**Correct Answer: D**

**Explanation:**
- **D is correct**: Maximum Time Travel retention is 90 days (Enterprise edition).
- **A is incorrect**: 1 day is the default, not maximum.
- **B is incorrect**: 7 days is for Fail-safe, not Time Travel maximum.
- **C is incorrect**: 30 days is possible but not the maximum.

---

### Question 15

What does Object Tagging enable?

A. Faster queries  
B. Adding metadata tags to objects for classification  
C. Compressing objects  
D. Backing up objects  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Object Tagging allows adding metadata tags to database objects for classification and governance.
- **A is incorrect**: Tagging doesn't directly speed up queries.
- **C is incorrect**: Tagging doesn't compress objects.
- **D is incorrect**: Tagging doesn't backup objects.

---

### Question 16

What is required to use customer-managed encryption keys?

A. Standard edition  
B. Enterprise edition  
C. Business Critical edition  
D. Any edition  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Customer-managed keys require Business Critical edition or higher.
- **A is incorrect**: Standard edition doesn't support customer-managed keys.
- **B is incorrect**: Enterprise edition doesn't support customer-managed keys.
- **D is incorrect**: Not all editions support it.

---

### Question 17

What is the purpose of a Row Access Policy?

A. Encrypt specific rows  
B. Control which rows users can see based on conditions  
C. Compress specific rows  
D. Backup specific rows  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Row Access Policies control which rows users can see based on policy conditions and user context.
- **A is incorrect**: Policies don't encrypt rows.
- **C is incorrect**: Policies don't compress rows.
- **D is incorrect**: Policies don't backup rows.

---

### Question 18

What information can you find in the ACCESS_HISTORY view?

A. Only successful queries  
B. Data access patterns, objects accessed, and query details  
C. Only failed queries  
D. Only user logins  

**Correct Answer: B**

**Explanation:**
- **B is correct**: ACCESS_HISTORY provides comprehensive information about data access patterns, objects accessed, and query details.
- **A is incorrect**: It includes more than just successful queries.
- **C is incorrect**: It includes more than just failed queries.
- **D is incorrect**: Login information is in LOGIN_HISTORY, not ACCESS_HISTORY.

---

### Question 19

How many consumer accounts can be added to a single share?

A. 1  
B. 10  
C. 100  
D. Multiple (no hard limit)  

**Correct Answer: D**

**Explanation:**
- **D is correct**: Multiple consumer accounts can be added to a share; there's no hard limit.
- **A is incorrect**: More than one consumer can be added.
- **B is incorrect**: 10 is not a limit.
- **C is incorrect**: 100 is not a limit.

---

### Question 20

What is required to share data across different cloud providers?

A. Data must be copied  
B. Both accounts must be on same cloud  
C. Cross-cloud sharing is supported  
D. Special license required  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Cross-cloud sharing is supported, though same cloud/region is preferred for performance.
- **A is incorrect**: Data is not copied in Data Sharing.
- **B is incorrect**: Same cloud is not required.
- **D is incorrect**: No special license is required.

---

### Question 21

How do consumers access shared data?

A. Through a separate database  
B. Through the same database  
C. Through external tables  
D. Through a special share schema  

**Correct Answer: A**

**Explanation:**
- **A is correct**: Consumers create a database from the share, which appears as a separate database in their account.
- **B is incorrect**: It's a separate database, not the same one.
- **C is incorrect**: External tables are for querying cloud storage, not shares.
- **D is incorrect**: It's a database, not just a schema.

---

### Question 22

What happens if a provider revokes access from a consumer?

A. Consumer's database is deleted  
B. Consumer loses access immediately  
C. Consumer keeps cached data  
D. Consumer gets 30-day notice  

**Correct Answer: B**

**Explanation:**
- **B is correct**: When access is revoked, consumers lose access immediately.
- **A is incorrect**: The database may remain but becomes inaccessible.
- **C is incorrect**: There's no persistent cache of shared data.
- **D is incorrect**: Access is revoked immediately.

---

### Question 23

Can you share data with accounts in different regions?

A. No, same region required  
B. Yes, but with performance impact  
C. Yes, with no impact  
D. Only with special configuration  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Cross-region sharing is possible but may have performance implications due to network latency.
- **A is incorrect**: Same region is not required.
- **C is incorrect**: There can be performance impact.
- **D is incorrect**: No special configuration is needed, but performance may vary.

---

### Question 24

What is the Snowflake Data Marketplace?

A. A place to buy Snowflake licenses  
B. A platform for publishing and discovering data products  
C. A training platform  
D. A support portal  

**Correct Answer: B**

**Explanation:**
- **B is correct**: The Data Marketplace is a platform where providers can publish data products and consumers can discover and subscribe to them.
- **A is incorrect**: It's not for buying licenses.
- **C is incorrect**: It's not a training platform.
- **D is incorrect**: It's not a support portal.

---

### Question 25

How do you remove a consumer from a share?

A. DROP SHARE  
B. ALTER SHARE ... REMOVE ACCOUNTS  
C. REVOKE SHARE FROM ACCOUNT  
D. DELETE CONSUMER FROM SHARE  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Use `ALTER SHARE ... REMOVE ACCOUNTS` to remove consumer accounts.
- **A is incorrect**: DROP SHARE deletes the entire share.
- **C is incorrect**: REVOKE SHARE FROM ACCOUNT is not valid syntax.
- **D is incorrect**: DELETE CONSUMER FROM SHARE is not valid syntax.

---

### Question 26

What is the purpose of creating a masking policy?

A. To encrypt data  
B. To define how data should be masked based on user role  
C. To compress data  
D. To backup data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Masking policies define how sensitive data should be masked based on user roles and conditions.
- **A is incorrect**: Masking is different from encryption.
- **C is incorrect**: Masking doesn't compress data.
- **D is incorrect**: Masking doesn't backup data.

---

### Question 27

What happens when you apply a masking policy to a column?

A. Data is permanently encrypted  
B. Data is masked based on user role when queried  
C. Data is deleted  
D. Data is compressed  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Masking policies dynamically mask data based on the user's role when the data is queried.
- **A is incorrect**: Data is not encrypted; it's masked dynamically.
- **C is incorrect**: Data is not deleted.
- **D is incorrect**: Data is not compressed.

---

### Question 28

What is the purpose of the UNDROP command?

A. Deleting objects  
B. Restoring dropped objects using Time Travel  
C. Backing up objects  
D. Compressing objects  

**Correct Answer: B**

**Explanation:**
- **B is correct**: UNDROP restores dropped objects (tables, schemas, databases) using Time Travel.
- **A is incorrect**: UNDROP restores, doesn't delete.
- **C is incorrect**: UNDROP doesn't backup; it restores.
- **D is incorrect**: UNDROP doesn't compress.

---

### Question 29

What is the difference between Time Travel and Fail-safe?

A. No difference  
B. Time Travel is queryable, Fail-safe is not queryable  
C. Fail-safe is queryable, Time Travel is not  
D. Both are queryable  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Time Travel data is queryable within the retention period, while Fail-safe data is not queryable (disaster recovery only).
- **A is incorrect**: There is a significant difference.
- **C is incorrect**: It's the opposite.
- **D is incorrect**: Fail-safe is not queryable.

---

### Question 30

What is the default Time Travel retention period?

A. 1 day  
B. 7 days  
C. 30 days  
D. 90 days  

**Correct Answer: A**

**Explanation:**
- **A is correct**: Default Time Travel retention is 1 day (Standard edition).
- **B is incorrect**: 7 days is for Fail-safe, not default Time Travel.
- **C is incorrect**: 30 days is possible but not default.
- **D is incorrect**: 90 days is maximum (Enterprise), not default.

---

### Question 31

What is the purpose of the AT clause in Time Travel?

A. Specify table location  
B. Specify a point in time or statement  
C. Specify a user  
D. Specify a warehouse  

**Correct Answer: B**

**Explanation:**
- **B is correct**: The AT clause specifies a point in time (timestamp) or statement ID for Time Travel queries.
- **A is incorrect**: AT doesn't specify location.
- **C is incorrect**: AT doesn't specify users.
- **D is incorrect**: AT doesn't specify warehouses.

---

### Question 32

Can you clone a database at a specific point in time?

A. No, only current state  
B. Yes, using AT clause  
C. Only for tables  
D. Only with special permission  

**Correct Answer: B**

**Explanation:**
- **B is correct**: You can clone databases, schemas, or tables at a specific point in time using the AT clause.
- **A is incorrect**: Cloning supports Time Travel.
- **C is incorrect**: Cloning works for databases, schemas, and tables.
- **D is incorrect**: No special permission needed beyond cloning privileges.

---

### Question 33

What is the purpose of a Network Policy in data protection?

A. To encrypt network traffic  
B. To restrict access by IP address for security  
C. To speed up network connections  
D. To monitor network usage  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Network Policies restrict which IP addresses can access Snowflake, providing network-level security.
- **A is incorrect**: Network Policies don't encrypt; they filter by IP.
- **C is incorrect**: Network Policies don't speed up connections.
- **D is incorrect**: Network Policies restrict access, not monitor usage.

---

### Question 34

What is the purpose of the SHOW SHARES command?

A. To create a share  
B. To list available shares (as provider or consumer)  
C. To grant a share  
D. To revoke a share  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SHOW SHARES lists shares you own (as provider) or shares available to you (as consumer).
- **A is incorrect**: CREATE SHARE creates shares, not SHOW SHARES.
- **C is incorrect**: ALTER SHARE grants access, not SHOW SHARES.
- **D is incorrect**: ALTER SHARE removes access, not SHOW SHARES.

---

### Question 35

What is the purpose of creating a database from a share?

A. To create a new database  
B. To access shared data as a consumer  
C. To share a database  
D. To backup a database  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Consumers create a database from a share to access the shared data.
- **A is incorrect**: While it creates a database, the purpose is to access shared data.
- **C is incorrect**: Sharing is done by the provider, not by creating from share.
- **D is incorrect**: Creating from share is for access, not backup.

---

### Question 36

What is the purpose of the GRANT USAGE ON SHARE command?

A. To create a share  
B. To grant access to a share for a consumer account  
C. To grant privileges on shared objects  
D. To revoke access from a share  

**Correct Answer: B**

**Explanation:**
- **B is correct**: GRANT USAGE ON SHARE grants access to a share for a consumer account (though ALTER SHARE ADD ACCOUNTS is more common).
- **A is incorrect**: CREATE SHARE creates shares, not GRANT USAGE.
- **C is incorrect**: GRANT USAGE ON SHARE is for share access, not object privileges.
- **D is incorrect**: REVOKE or ALTER SHARE REMOVE ACCOUNTS revokes access.

---

## Summary

This document contains 36 questions covering **Domain 6.0: Data Protection and Data Sharing**. Focus on:
- Encryption mechanisms (at rest and in transit)
- Data masking and RLS implementation
- Data Sharing setup and management
- Time Travel and Fail-safe
- Security best practices
- Network policies and compliance

**Key Concepts to Master:**
- Encryption (AES-256 at rest, TLS in transit)
- Dynamic Data Masking policies
- Row-Level Security (RLS) policies
- Data Sharing (provider/consumer model)
- Share management (CREATE, ALTER, GRANT)
- Time Travel and Fail-safe
- Object tagging for governance
- Network policies for access control

Good luck with your SnowPro Core Certification exam preparation!

