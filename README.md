# SQL Project for Code Louisvile

##  Project Description

**Appointment Project**

This is an appointment tracker for a small fictional dental clinic. Its main purpose is to track patient appointment times for the upcoming week.

##  The Requirements I am meeting are
### Group 1: Reading Data from a Database

- "Write a SELECT query that uses a WHERE clause"
>Line 155, This SELECT query selects all the appointments WHERE the schedule day equals a specific day of the week. 

### Group 2: Updating / Deleting Data from a Database
- "Write a DML statement that UPDATEs a set of rows with a WHERE clause. The values used in the WHERE clause should be a variable"
>Line 172, I am updating a specific doctor ID in the appointments table. This updates the set of rows WHERE that doctor ID is located. 

- "Write a DML statement that DELETEs a set of rows with a WHERE clause. The values used in the WHERE clause should be a variable"
>Line 188, I am deleting a specific doctor ID in the appointments table. This deletes the set of rows WHERE that doctor ID is located. 

### Group 3: Optimizing a Database
- "Design a NONCLUSTERED INDEX with ONE KEY COLUMN that improves the performance of one of the above queries"
>Line 47, I created an index with one key column that sorts by the last name of my patients by descending order. 

## To run this project
- This project was created using MySQL 
- Before `USE main;` in line 25 you will have to `CREATE DATABASE main;`