# Domain 2.0: Account Access and Security
## 54 Practice Questions for SnowPro Core Certification

## Overview

This document contains 54 multiple-choice questions covering **Domain 2.0: Account Access and Security (18% of exam)**. Topics include:
- Authentication methods (username/password, SSO, key pair, MFA)
- Role-Based Access Control (RBAC)
- System-defined roles (ACCOUNTADMIN, SYSADMIN, SECURITYADMIN, USERADMIN, PUBLIC)
- Custom roles and role hierarchy
- User management
- Privileges and grants
- Network policies
- Session management
- Password policies

## How to Use

1. Attempt each question before reading the explanation
2. Review explanations to understand concepts deeply
3. Focus on areas where you get questions wrong
4. Use for self-assessment and exam preparation

---

### Question 1

What is the highest-level role in Snowflake?

A. SYSADMIN  
B. SECURITYADMIN  
C. ACCOUNTADMIN  
D. USERADMIN  

**Correct Answer: C**

**Explanation:**
- **C is correct**: ACCOUNTADMIN is the highest-level role with full account management privileges.
- **A is incorrect**: SYSADMIN is below ACCOUNTADMIN.
- **B is incorrect**: SECURITYADMIN manages security but is below ACCOUNTADMIN.
- **D is incorrect**: USERADMIN manages users but is below ACCOUNTADMIN.

---

### Question 2

Which authentication method is recommended for programmatic access?

A. Username/Password  
B. SSO  
C. Key Pair Authentication  
D. MFA  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Key Pair Authentication (RSA keys) is recommended for programmatic access as it's more secure than passwords.
- **A is incorrect**: Username/password is less secure for programmatic access.
- **B is incorrect**: SSO is for user access, not typically used for programmatic access.
- **D is incorrect**: MFA adds security but key pairs are preferred for automation.

---

### Question 3

What does RBAC stand for in Snowflake?

A. Role-Based Access Control  
B. Row-Based Access Control  
C. Resource-Based Access Control  
D. Region-Based Access Control  

**Correct Answer: A**

**Explanation:**
- **A is correct**: RBAC stands for Role-Based Access Control, the security model used in Snowflake.
- **B is incorrect**: Row-Based Access Control is RLS (Row-Level Security), not RBAC.
- **C is incorrect**: Resource-Based is not the correct term.
- **D is incorrect**: Region-Based is not the correct term.

---

### Question 4

What is the default role assigned to all users?

A. ACCOUNTADMIN  
B. SYSADMIN  
C. PUBLIC  
D. USERADMIN  

**Correct Answer: C**

**Explanation:**
- **C is correct**: PUBLIC is the default role assigned to all users with minimal privileges.
- **A is incorrect**: ACCOUNTADMIN is the highest role, not default.
- **B is incorrect**: SYSADMIN is not the default role.
- **D is incorrect**: USERADMIN is for user management, not default.

---

### Question 5

What is a Network Policy used for?

A. Encrypting network traffic  
B. Restricting access by IP address  
C. Speeding up network connections  
D. Monitoring network usage  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Network Policies restrict which IP addresses can access Snowflake.
- **A is incorrect**: Network Policies don't encrypt; they filter by IP.
- **C is incorrect**: Network Policies don't speed up connections.
- **D is incorrect**: Network Policies restrict access, not monitor usage.

---

### Question 6

How do you enable MFA for a user?

A. ALTER USER ... ENABLE MFA  
B. ALTER USER ... MFA_ENABLED = TRUE  
C. CREATE USER ... WITH MFA  
D. GRANT MFA TO USER  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Use `ALTER USER ... MFA_ENABLED = TRUE` to enable MFA.
- **A is incorrect**: ENABLE MFA is not valid syntax.
- **C is incorrect**: MFA is enabled after user creation, not during.
- **D is incorrect**: GRANT MFA is not valid syntax.

---

### Question 7

What is the purpose of the SECURITYADMIN role?

A. Manage all security settings  
B. Manage users, roles, and privileges  
C. Manage warehouses  
D. Manage databases  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SECURITYADMIN manages users, roles, and privileges but cannot manage warehouses or databases.
- **A is incorrect**: SECURITYADMIN has specific privileges, not all security settings.
- **C is incorrect**: SECURITYADMIN cannot manage warehouses.
- **D is incorrect**: SECURITYADMIN cannot manage databases.

---

### Question 8

What is the SYSADMIN role typically used for?

A. User management  
B. Creating and managing warehouses, databases, and objects  
C. Security management  
D. Account administration  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SYSADMIN is typically used for creating and managing warehouses, databases, and other objects.
- **A is incorrect**: USERADMIN handles user management.
- **C is incorrect**: SECURITYADMIN handles security management.
- **D is incorrect**: ACCOUNTADMIN handles account administration.

---

### Question 9

What is the correct syntax to grant a role to a user?

A. GRANT ROLE role_name TO USER user_name  
B. GRANT USER user_name TO ROLE role_name  
C. ASSIGN ROLE role_name TO USER user_name  
D. ADD ROLE role_name TO USER user_name  

**Correct Answer: A**

**Explanation:**
- **A is correct**: The syntax is `GRANT ROLE role_name TO USER user_name`.
- **B is incorrect**: The syntax is reversed.
- **C is incorrect**: ASSIGN is not valid SQL syntax.
- **D is incorrect**: ADD is not valid SQL syntax for roles.

---

### Question 10

What privilege is required to create a new role?

A. CREATE ROLE privilege  
B. USERADMIN role  
C. SECURITYADMIN role  
D. Any of the above  

**Correct Answer: D**

**Explanation:**
- **D is correct**: USERADMIN and SECURITYADMIN roles can create roles, and the CREATE ROLE privilege can be granted.
- **A is correct**: CREATE ROLE privilege allows role creation.
- **B is correct**: USERADMIN role can create roles.
- **C is correct**: SECURITYADMIN role can create roles.

---

### Question 11

What happens when you revoke a role from a user?

A. User immediately loses access  
B. User keeps access until session ends  
C. User keeps access for 24 hours  
D. User keeps access permanently  

**Correct Answer: A**

**Explanation:**
- **A is correct**: When a role is revoked, the user immediately loses access associated with that role.
- **B is incorrect**: Access is revoked immediately, not at session end.
- **C is incorrect**: There's no 24-hour grace period.
- **D is incorrect**: Access is not permanent after revocation.

---

### Question 12

What is the purpose of the PUBLIC role?

A. Full access to all objects  
B. Default role with minimal privileges for all users  
C. Public data sharing  
D. No purpose, it's deprecated  

**Correct Answer: B**

**Explanation:**
- **B is correct**: PUBLIC is the default role assigned to all users with minimal privileges.
- **A is incorrect**: PUBLIC has minimal privileges, not full access.
- **C is incorrect**: PUBLIC is not for data sharing.
- **D is incorrect**: PUBLIC is actively used as the default role.

---

### Question 13

What authentication methods does Snowflake support?

A. Only username/password  
B. Username/password, SSO, key pair, MFA  
C. Only SSO  
D. Only key pair  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Snowflake supports username/password, SSO (SAML, OAuth), key pair authentication, and MFA.
- **A is incorrect**: Snowflake supports multiple authentication methods.
- **C is incorrect**: SSO is one option, but not the only one.
- **D is incorrect**: Key pair is one option, but not the only one.

---

### Question 14

What is required to set up key pair authentication?

A. Only public key  
B. Public and private key pair  
C. Only private key  
D. Certificate  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Key pair authentication requires both public key (stored in Snowflake) and private key (used by client).
- **A is incorrect**: Both keys are needed.
- **C is incorrect**: Both keys are needed.
- **D is incorrect**: Certificates are not used for key pair authentication.

---

### Question 15

What privilege allows a user to query a table?

A. SELECT  
B. READ  
C. QUERY  
D. ACCESS  

**Correct Answer: A**

**Explanation:**
- **A is correct**: SELECT privilege allows querying (reading) a table.
- **B is incorrect**: READ is not a valid privilege.
- **C is incorrect**: QUERY is not a valid privilege.
- **D is incorrect**: ACCESS is not a valid privilege.

---

### Question 16

What is the hierarchy of system-defined roles?

A. ACCOUNTADMIN > SYSADMIN > SECURITYADMIN > USERADMIN > PUBLIC  
B. ACCOUNTADMIN > SECURITYADMIN > SYSADMIN > USERADMIN > PUBLIC  
C. All roles are equal  
D. PUBLIC > USERADMIN > SYSADMIN > SECURITYADMIN > ACCOUNTADMIN  

**Correct Answer: A**

**Explanation:**
- **A is correct**: The hierarchy is ACCOUNTADMIN (highest) > SYSADMIN > SECURITYADMIN > USERADMIN > PUBLIC (lowest).
- **B is incorrect**: SYSADMIN is above SECURITYADMIN in the hierarchy.
- **C is incorrect**: Roles have a clear hierarchy.
- **D is incorrect**: The hierarchy is reversed.

---

### Question 17

What is the purpose of granting USAGE on a warehouse?

A. To create the warehouse  
B. To use the warehouse for queries  
C. To modify the warehouse  
D. To delete the warehouse  

**Correct Answer: B**

**Explanation:**
- **B is correct**: USAGE privilege on a warehouse allows using it for query execution.
- **A is incorrect**: CREATE WAREHOUSE privilege is needed to create.
- **C is incorrect**: MODIFY or OWNERSHIP is needed to modify.
- **D is incorrect**: DROP privilege is needed to delete.

---

### Question 18

What happens when a user's default role is changed?

A. Takes effect immediately  
B. Takes effect on next login  
C. Takes effect after 24 hours  
D. Requires role to be granted first  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Default role changes take effect on the user's next login.
- **A is incorrect**: Changes don't affect current sessions.
- **C is incorrect**: There's no 24-hour delay.
- **D is incorrect**: The role must be granted, but the default change takes effect on next login.

---

### Question 19

What is the purpose of the OWNERSHIP privilege?

A. To read an object  
B. To modify an object  
C. Full control over an object, including granting privileges  
D. To delete an object only  

**Correct Answer: C**

**Explanation:**
- **C is correct**: OWNERSHIP provides full control including the ability to grant privileges to others.
- **A is incorrect**: SELECT is for reading.
- **B is incorrect**: MODIFY is for modifying, but OWNERSHIP is more comprehensive.
- **D is incorrect**: OWNERSHIP includes delete but is more than just delete.

---

### Question 20

What is required to create a Network Policy?

A. ACCOUNTADMIN role  
B. SECURITYADMIN role  
C. SYSADMIN role  
D. Any administrative role  

**Correct Answer: A**

**Explanation:**
- **A is correct**: Only ACCOUNTADMIN can create Network Policies.
- **B is incorrect**: SECURITYADMIN cannot create Network Policies.
- **C is incorrect**: SYSADMIN cannot create Network Policies.
- **D is incorrect**: Only ACCOUNTADMIN can create Network Policies.

---

### Question 21

What is the purpose of session variables in Snowflake?

A. To store user credentials  
B. To store temporary values for the session  
C. To encrypt data  
D. To compress data  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Session variables store temporary values that persist for the duration of the session.
- **A is incorrect**: Session variables don't store credentials.
- **C is incorrect**: Session variables don't encrypt data.
- **D is incorrect**: Session variables don't compress data.

---

### Question 22

What privilege is needed to grant privileges on an object?

A. SELECT  
B. USAGE  
C. OWNERSHIP or the specific privilege with GRANT OPTION  
D. MODIFY  

**Correct Answer: C**

**Explanation:**
- **C is correct**: To grant privileges, you need OWNERSHIP or the privilege with GRANT OPTION.
- **A is incorrect**: SELECT doesn't allow granting privileges.
- **B is incorrect**: USAGE doesn't allow granting privileges.
- **D is incorrect**: MODIFY doesn't allow granting privileges.

---

### Question 23

What is the purpose of the MUST_CHANGE_PASSWORD option when creating a user?

A. To prevent password changes  
B. To force password change on first login  
C. To allow password changes  
D. To encrypt passwords  

**Correct Answer: B**

**Explanation:**
- **B is correct**: MUST_CHANGE_PASSWORD = TRUE forces the user to change their password on first login.
- **A is incorrect**: It forces change, not prevents it.
- **C is incorrect**: It's about forcing change, not allowing it.
- **D is incorrect**: It doesn't encrypt passwords.

---

### Question 24

What is the difference between a role and a user?

A. No difference  
B. Users authenticate, roles authorize  
C. Roles authenticate, users authorize  
D. They are the same thing  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Users authenticate (log in), while roles authorize (determine what they can do).
- **A is incorrect**: There is a clear difference.
- **C is incorrect**: It's the opposite.
- **D is incorrect**: They serve different purposes.

---

### Question 25

What happens when you grant a role to another role?

A. Creates a role hierarchy  
B. The granted role inherits privileges from the granting role  
C. Both A and B  
D. Nothing, roles cannot be granted to roles  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Granting a role to another role creates a hierarchy where the child role inherits privileges from the parent role.
- **A is correct**: This creates hierarchy.
- **B is correct**: Privileges are inherited.
- **D is incorrect**: Roles can definitely be granted to other roles.

---

### Question 26

What is the purpose of the GRANT OPTION when granting privileges?

A. To revoke the privilege  
B. To allow the grantee to grant the privilege to others  
C. To make the privilege permanent  
D. To encrypt the privilege  

**Correct Answer: B**

**Explanation:**
- **B is correct**: GRANT OPTION allows the grantee to grant the same privilege to other users/roles.
- **A is incorrect**: GRANT OPTION is about granting, not revoking.
- **C is incorrect**: GRANT OPTION doesn't make privileges permanent.
- **D is incorrect**: GRANT OPTION doesn't encrypt.

---

### Question 27

What authentication method uses SAML 2.0?

A. Username/Password  
B. SSO (Single Sign-On)  
C. Key Pair  
D. MFA  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SSO uses SAML 2.0 for authentication with identity providers.
- **A is incorrect**: Username/password doesn't use SAML.
- **C is incorrect**: Key pair doesn't use SAML.
- **D is incorrect**: MFA is a factor, not an authentication method using SAML.

---

### Question 28

What is the purpose of the USERADMIN role?

A. To manage all users and roles  
B. To manage only users  
C. To manage only roles  
D. To manage warehouses  

**Correct Answer: A**

**Explanation:**
- **A is correct**: USERADMIN can create and manage both users and roles.
- **B is incorrect**: USERADMIN manages both users and roles.
- **C is incorrect**: USERADMIN manages both users and roles.
- **D is incorrect**: USERADMIN doesn't manage warehouses.

---

### Question 29

What privilege allows creating objects in a schema?

A. SELECT  
B. USAGE  
C. CREATE  
D. MODIFY  

**Correct Answer: B**

**Explanation:**
- **B is correct**: USAGE on a schema allows creating objects within that schema.
- **A is incorrect**: SELECT is for reading data.
- **C is incorrect**: CREATE is not a schema-level privilege.
- **D is incorrect**: MODIFY is for altering objects.

---

### Question 30

What is the purpose of password policies in Snowflake?

A. To encrypt passwords  
B. To enforce password complexity and expiration rules  
C. To store passwords  
D. To share passwords  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Password policies enforce complexity requirements, expiration, and other security rules.
- **A is incorrect**: Password policies don't encrypt; they enforce rules.
- **C is incorrect**: Password policies don't store passwords.
- **D is incorrect**: Password policies don't share passwords.

---

### Question 31

What happens when you drop a role?

A. Users with that role lose access immediately  
B. Users keep access until next login  
C. Users keep access for 24 hours  
D. Nothing happens to users  

**Correct Answer: A**

**Explanation:**
- **A is correct**: When a role is dropped, users immediately lose access associated with that role.
- **B is incorrect**: Access is lost immediately.
- **C is incorrect**: There's no 24-hour grace period.
- **D is incorrect**: Users definitely lose access.

---

### Question 32

What is the purpose of the CURRENT_ROLE() function?

A. To change the current role  
B. To return the name of the currently active role  
C. To list all roles  
D. To grant roles  

**Correct Answer: B**

**Explanation:**
- **B is correct**: CURRENT_ROLE() returns the name of the currently active role in the session.
- **A is incorrect**: USE ROLE changes the role, not CURRENT_ROLE().
- **C is incorrect**: SHOW ROLES lists roles, not CURRENT_ROLE().
- **D is incorrect**: GRANT grants roles, not CURRENT_ROLE().

---

### Question 33

What is required to modify a user's properties?

A. USERADMIN role  
B. SECURITYADMIN role  
C. OWNERSHIP on the user  
D. Any of the above  

**Correct Answer: D**

**Explanation:**
- **D is correct**: USERADMIN, SECURITYADMIN, or OWNERSHIP on the user allows modification.
- **A is correct**: USERADMIN can modify users.
- **B is correct**: SECURITYADMIN can modify users.
- **C is correct**: OWNERSHIP allows modification.

---

### Question 34

What is the purpose of the SHOW GRANTS command?

A. To grant privileges  
B. To view granted privileges  
C. To revoke privileges  
D. To encrypt privileges  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SHOW GRANTS displays privileges granted to users, roles, or objects.
- **A is incorrect**: GRANT grants privileges, not SHOW GRANTS.
- **C is incorrect**: REVOKE revokes privileges, not SHOW GRANTS.
- **D is incorrect**: SHOW GRANTS doesn't encrypt.

---

### Question 35

What authentication factor does MFA add?

A. Something you know (password)  
B. Something you have (device/token)  
C. Something you are (biometric)  
D. All of the above  

**Correct Answer: B**

**Explanation:**
- **B is correct**: MFA in Snowflake adds "something you have" (TOTP device/token) to "something you know" (password).
- **A is incorrect**: Password is the first factor, not what MFA adds.
- **C is incorrect**: Biometrics are not currently supported in Snowflake MFA.
- **D is incorrect**: MFA adds the second factor, not all factors.

---

### Question 36

What is the purpose of the REVOKE command?

A. To grant privileges  
B. To remove privileges  
C. To view privileges  
D. To encrypt privileges  

**Correct Answer: B**

**Explanation:**
- **B is correct**: REVOKE removes privileges from users or roles.
- **A is incorrect**: GRANT grants privileges, not REVOKE.
- **C is incorrect**: SHOW GRANTS views privileges, not REVOKE.
- **D is incorrect**: REVOKE doesn't encrypt.

---

### Question 37

What is the relationship between a user's default role and session roles?

A. Default role is always active  
B. Default role is active unless another role is used  
C. Default role cannot be changed  
D. Default role doesn't exist  

**Correct Answer: B**

**Explanation:**
- **B is correct**: The default role is active at login, but users can switch to other roles using USE ROLE.
- **A is incorrect**: Users can switch to other roles.
- **C is incorrect**: Default role can be changed.
- **D is incorrect**: Default role definitely exists.

---

### Question 38

What privilege allows dropping a table?

A. SELECT  
B. MODIFY  
C. OWNERSHIP  
D. USAGE  

**Correct Answer: C**

**Explanation:**
- **C is correct**: OWNERSHIP privilege allows dropping objects.
- **A is incorrect**: SELECT only allows reading.
- **B is incorrect**: MODIFY allows altering, not dropping.
- **D is incorrect**: USAGE doesn't allow dropping.

---

### Question 39

What is the purpose of the SHOW USERS command?

A. To create users  
B. To list users in the account  
C. To modify users  
D. To delete users  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SHOW USERS lists all users in the account.
- **A is incorrect**: CREATE USER creates users, not SHOW USERS.
- **C is incorrect**: ALTER USER modifies users, not SHOW USERS.
- **D is incorrect**: DROP USER deletes users, not SHOW USERS.

---

### Question 40

What is required to enable SSO for an account?

A. Only ACCOUNTADMIN role  
B. ACCOUNTADMIN role and SAML configuration  
C. Any administrative role  
D. No special requirements  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Enabling SSO requires ACCOUNTADMIN role and proper SAML configuration with an identity provider.
- **A is incorrect**: SAML configuration is also required.
- **C is incorrect**: Only ACCOUNTADMIN can configure SSO.
- **D is incorrect**: Special requirements exist.

---

### Question 41

What is the purpose of the SHOW ROLES command?

A. To create roles  
B. To list roles in the account  
C. To grant roles  
D. To revoke roles  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SHOW ROLES lists all roles in the account.
- **A is incorrect**: CREATE ROLE creates roles, not SHOW ROLES.
- **C is incorrect**: GRANT grants roles, not SHOW ROLES.
- **D is incorrect**: REVOKE revokes roles, not SHOW ROLES.

---

### Question 42

What happens when a user's password expires?

A. User is automatically deleted  
B. User must change password on next login  
C. User can continue using old password  
D. User account is locked  

**Correct Answer: B**

**Explanation:**
- **B is correct**: When a password expires, the user must change it on next login.
- **A is incorrect**: User is not deleted.
- **C is incorrect**: User cannot continue with expired password.
- **D is incorrect**: Account is not locked; password change is required.

---

### Question 43

What is the purpose of the USE ROLE command?

A. To create a role  
B. To switch the active role in the session  
C. To grant a role  
D. To revoke a role  

**Correct Answer: B**

**Explanation:**
- **B is correct**: USE ROLE switches the active role for the current session.
- **A is incorrect**: CREATE ROLE creates roles, not USE ROLE.
- **C is incorrect**: GRANT grants roles, not USE ROLE.
- **D is incorrect**: REVOKE revokes roles, not USE ROLE.

---

### Question 44

What privilege allows inserting data into a table?

A. SELECT  
B. INSERT  
C. MODIFY  
D. USAGE  

**Correct Answer: B**

**Explanation:**
- **B is correct**: INSERT privilege allows inserting rows into a table.
- **A is incorrect**: SELECT is for reading, not inserting.
- **C is incorrect**: MODIFY is for altering structure, not inserting data.
- **D is incorrect**: USAGE doesn't allow inserting.

---

### Question 45

What is the purpose of the SHOW GRANTS TO ROLE command?

A. To grant privileges to a role  
B. To view privileges granted to a role  
C. To revoke privileges from a role  
D. To create a role  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SHOW GRANTS TO ROLE displays privileges granted to a specific role.
- **A is incorrect**: GRANT grants privileges, not SHOW GRANTS.
- **C is incorrect**: REVOKE revokes privileges, not SHOW GRANTS.
- **D is incorrect**: CREATE ROLE creates roles, not SHOW GRANTS.

---

### Question 46

What is required to create a custom role?

A. ACCOUNTADMIN role  
B. USERADMIN or SECURITYADMIN role  
C. SYSADMIN role  
D. Any role  

**Correct Answer: B**

**Explanation:**
- **B is correct**: USERADMIN or SECURITYADMIN can create custom roles.
- **A is incorrect**: ACCOUNTADMIN can create roles, but USERADMIN/SECURITYADMIN can also.
- **C is incorrect**: SYSADMIN cannot create roles.
- **D is incorrect**: Not any role can create roles.

---

### Question 47

What is the purpose of the SHOW GRANTS ON ACCOUNT command?

A. To grant account-level privileges  
B. To view account-level privileges  
C. To revoke account-level privileges  
D. To create accounts  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SHOW GRANTS ON ACCOUNT displays account-level privileges.
- **A is incorrect**: GRANT grants privileges, not SHOW GRANTS.
- **C is incorrect**: REVOKE revokes privileges, not SHOW GRANTS.
- **D is incorrect**: SHOW GRANTS doesn't create accounts.

---

### Question 48

What happens when you grant a privilege with GRANT OPTION?

A. The grantee can only use the privilege  
B. The grantee can use and grant the privilege to others  
C. The privilege is permanent  
D. The privilege is encrypted  

**Correct Answer: B**

**Explanation:**
- **B is correct**: GRANT OPTION allows the grantee to grant the same privilege to other users/roles.
- **A is incorrect**: GRANT OPTION allows granting to others, not just using.
- **C is incorrect**: GRANT OPTION doesn't make privileges permanent.
- **D is incorrect**: GRANT OPTION doesn't encrypt.

---

### Question 49

What is the purpose of the DESCRIBE USER command?

A. To create a user  
B. To view user properties  
C. To modify a user  
D. To delete a user  

**Correct Answer: B**

**Explanation:**
- **B is correct**: DESCRIBE USER displays properties of a specific user.
- **A is incorrect**: CREATE USER creates users, not DESCRIBE USER.
- **C is incorrect**: ALTER USER modifies users, not DESCRIBE USER.
- **D is incorrect**: DROP USER deletes users, not DESCRIBE USER.

---

### Question 50

What authentication method is most secure for programmatic access?

A. Username/Password  
B. SSO  
C. Key Pair Authentication  
D. All are equally secure  

**Correct Answer: C**

**Explanation:**
- **C is correct**: Key pair authentication is more secure than passwords for programmatic access as private keys don't need to be stored in code.
- **A is incorrect**: Passwords are less secure than key pairs.
- **B is incorrect**: SSO is for user access, not typically used for programmatic access.
- **D is incorrect**: Key pairs are more secure.

---

### Question 51

What is the purpose of the SHOW GRANTS TO USER command?

A. To grant privileges to a user  
B. To view privileges granted to a user  
C. To revoke privileges from a user  
D. To create a user  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SHOW GRANTS TO USER displays privileges granted to a specific user.
- **A is incorrect**: GRANT grants privileges, not SHOW GRANTS.
- **C is incorrect**: REVOKE revokes privileges, not SHOW GRANTS.
- **D is incorrect**: CREATE USER creates users, not SHOW GRANTS.

---

### Question 52

What is required to modify a role?

A. USERADMIN role  
B. SECURITYADMIN role  
C. OWNERSHIP on the role  
D. Any of the above  

**Correct Answer: D**

**Explanation:**
- **D is correct**: USERADMIN, SECURITYADMIN, or OWNERSHIP on the role allows modification.
- **A is correct**: USERADMIN can modify roles.
- **B is correct**: SECURITYADMIN can modify roles.
- **C is correct**: OWNERSHIP allows modification.

---

### Question 53

What is the purpose of the SHOW GRANTS OF ROLE command?

A. To grant a role  
B. To view which users/roles have been granted a specific role  
C. To revoke a role  
D. To create a role  

**Correct Answer: B**

**Explanation:**
- **B is correct**: SHOW GRANTS OF ROLE shows which users and roles have been granted a specific role.
- **A is incorrect**: GRANT grants roles, not SHOW GRANTS.
- **C is incorrect**: REVOKE revokes roles, not SHOW GRANTS.
- **D is incorrect**: CREATE ROLE creates roles, not SHOW GRANTS.

---

### Question 54

What is the purpose of session parameters in Snowflake?

A. To store user credentials  
B. To configure session behavior (date format, timezone, etc.)  
C. To encrypt sessions  
D. To compress sessions  

**Correct Answer: B**

**Explanation:**
- **B is correct**: Session parameters configure session behavior like date format, timezone, query timeout, etc.
- **A is incorrect**: Session parameters don't store credentials.
- **C is incorrect**: Session parameters don't encrypt sessions.
- **D is incorrect**: Session parameters don't compress sessions.

---

## Summary

This document contains 54 questions covering **Domain 2.0: Account Access and Security**. Focus on:
- Understanding the role hierarchy (ACCOUNTADMIN > SYSADMIN > SECURITYADMIN > USERADMIN > PUBLIC)
- Authentication methods and when to use each
- Granting and revoking privileges
- Network policies and security
- User and role management
- Session management

**Key Concepts to Master:**
- RBAC (Role-Based Access Control) model
- Privilege types (SELECT, INSERT, USAGE, OWNERSHIP, etc.)
- Authentication methods (password, SSO, key pair, MFA)
- Role hierarchy and inheritance
- Grant and revoke operations
- Network security policies

Good luck with your SnowPro Core Certification exam preparation!

