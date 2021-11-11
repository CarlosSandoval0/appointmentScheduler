# SQL Project for Code Louisvile

##  Project Description

**Appointment Project**

This is an appointment tracker for a small fictional dental clinic. Its main purpose is to track patient appointment times for the upcoming week. 
There are four tables: “patients”, “specialty”, “doctor”, and “appointments”. The “patients” table stores patients' personal information. The “specialty” table demonstrates the specialty of a doctor. The “doctor” table contains information about our doctors. The “appointments” table is in charge of scheduling appointments for our patients. 
There are four stored procedures: “create patient”, “read appointments”, “update appointment doctor”, and “delete appointments”.The “Create patient” stored procedure creates a new row for a patient on the patient table. “read appointments” will call back appointments only on a specified day. “update appointment doctor” will change doctor ID. “delete appointments” will drop an appointment row. 

##  The Requirements I am meeting are
### Group 1: Reading Data from a Database

- "Write a SELECT query that uses a WHERE clause"
>Line 160, This SELECT query selects all the appointments WHERE the schedule day equals a specific day of the week. 

- "Write a  SELECT query that utilizes a JOIN"
>Line 163 & 164, I am inner joining appointments.doctorID with doctor.doctorID and appointments.patientsID with patients.patientsID 

### Group 2: Updating / Deleting Data from a Database
- "Write a DML statement that UPDATEs a set of rows with a WHERE clause. The values used in the WHERE clause should be a variable"
>Line 160, I am updating a set of rows using a WHERE clause on a specific day. I am calling back this stored procedure on Line 202.

- "Write a DML statement that DELETEs a set of rows with a WHERE clause. The values used in the WHERE clause should be a variable"
>Line 196, I am deleting a specific doctor ID in the appointments table. This deletes the set of rows WHERE that doctor ID is located. 

### Group 3: Optimizing a Database
- "Design a NONCLUSTERED INDEX with ONE KEY COLUMN that improves the performance of one of the above queries"
>Lines 36, 67, and 77 are a primary key. For example, the doctor table has a foreign key in the specialty column (primary key being specialtyID in the specialty table) that makes it possible to assign a doctor’s specialty to a specialty ID.

## To run this project
- This project was created using MySQL 
- Before `USE main;` in line 23 you will have to `CREATE DATABASE main;` or comment out line 23