/* appointmentSQLProject.sql
 * Author: Carlos Sandoval
 * Date Created: 10/26/2021
 * Description: appointment Scheduler
 *
 * Tables:
 *    Patients (PatientsID, firstName, lastName, DOB, phoneNumber, address, gender)
 *    Doctor (DoctorID, firstName, lastName, phoneNumber, Specialty)
 *    Appointment (AppointmentID, schedualTime, schedualDay, doctorID, PatientsID)
 *
 * Indexes:
 *    
 * Stored Procedures
 *    CreatePatient @PatientsID, @firstName, @lastName, @DOB, @phoneNumber, @address, @gender
 *    Read
 *    UpdateAppointment @AppointmentID, @schedualTime, @schedualDay, @doctorID, @PatientsID
 *    DeletePatient @AppointmentID, @schedualTime, @schedualDay, @doctorID, @PatientsID
 *
*/

CREATE DATABASE main;

/*
Importing table
*/

USE main;
SELECT * FROM patients;
SELECT * FROM doctor;
SELECT * FROM appointment;

/*
stored Procedure: CreatePatient
Usage: Creates a column for a new patient
Parameters:
	@patientfirstName - The first name of the new patient
	@lastName - The last name of the new patient
	@DOB - Date Of Birth
	@phoneNumber - Phone number
	@address - Address
	@gender - Gender

Returns:

Error Checks:
	Patient can not already exist
	

*/

/*
stored Procedure: Read
Usage: 
Parameters:
	

Returns:

Error Checks:
	
	

*/

/*
stored Procedure: Update
Usage: Reschedules an Appointment time for an existing patient
Parameters:
	@AppointmentID
    @schedualTime
    @schedualDay
    @doctorID
	@PatientsID

Returns:

Error Checks:
	
	

*/

/*
stored Procedure: Delete
Usage: Deletes an appointment time
Parameters:
	@AppointmentID
    @schedualTime
    @schedualDay
    @doctorID
	@PatientsID
    
	

Returns:

Error Checks:
	
	

*/