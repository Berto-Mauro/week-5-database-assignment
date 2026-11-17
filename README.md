# Week 5 Database Assignment
## Database Indexing and Optimization

**SQL dialect:** MySQL

### Learning objectives

This assignment demonstrates how to:
1. Remove an index from a table.
2. Create a database user restricted to a specific host.
3. Grant a user permission to insert records into a database.
4. Change the password of an existing database user.

### Files included

- `answers.sql` — Contains the SQL statements for Questions 1–4, with comments.
- `README.md` — Provides assignment information and instructions.

### Assignment answers

#### Question 1: Drop the `IdxPhone` index

```sql
DROP INDEX IdxPhone ON customers;
```

This removes the index named `IdxPhone` from the `customers` table.

#### Question 2: Create user `bob` on localhost

```sql
CREATE USER 'bob'@'localhost'
IDENTIFIED BY 'S$cu3r3!';
```

This creates the MySQL account `bob` and allows connections only from the local host.

#### Question 3: Grant INSERT privilege

```sql
GRANT INSERT ON salesDB.*
TO 'bob'@'localhost';
```

This gives `bob` permission to insert records into tables in the `salesDB` database. It does not grant other privileges such as SELECT, UPDATE, or DELETE.

#### Question 4: Change the user's password

```sql
ALTER USER 'bob'@'localhost'
IDENTIFIED BY 'P$55!23';
```

This changes the password for the MySQL account `bob` at `localhost`.

### How to run the SQL file

1. Open MySQL Workbench or another MySQL client.
2. Connect to your MySQL server using an account with sufficient administrative privileges.
3. Make sure the `customers` table and its `IdxPhone` index exist before running Question 1.
4. Open `answers.sql`.
5. Execute the statements in order.

### Important notes

- These statements use MySQL syntax. They are not written for PostgreSQL.
- The account is specifically `'bob'@'localhost'`; a user with the same name at another host is a different MySQL account.
- The account-creation and password statements require appropriate account-management privileges.
- The `GRANT` statement requires the administrator to have the authority to grant the specified privilege.
- The password values are included as required by the assignment. For a real production database, use securely managed, unique passwords and avoid sharing credentials in public repositories.

### Conclusion

This assignment covers basic database administration and security in MySQL. It demonstrates how to manage an index, create a restricted user account, assign a specific privilege, and update a user's password.
