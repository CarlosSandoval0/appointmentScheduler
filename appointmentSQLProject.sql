/* appointmentSQLProject.sql
 * Author: Carlos Sandoval
 * Date Created: 10/26/2021
 * Description: appointment Scheduler
 *
 * Tables:
 *    Patients (PatientsID, firstName, lastName, DOB, phoneNumber, address, gender)
 *    Doctor (DoctorID, firstName, lastName, phoneNumber, Specialty)
 *    Appointments (AppointmentID, schedualTime, schedualDay, doctorID, PatientsID)
 *
 * Stored Procedures
 *    CreatePatient 
 *    ReadAppointments 
 *    UpdateAppointment 
 *    DeletePatient
*/

/********************

DROP & CREATE  

*********************/
/* CREATE DATABASE main; */
USE main;

DROP TABLE IF EXISTS appointments;
DROP TABLE IF EXISTS patients;
DROP TABLE IF EXISTS doctor;
DROP TABLE IF EXISTS specialty;

DROP PROCEDURE IF EXISTS CreatePatient;
DROP PROCEDURE IF EXISTS readAppointments;
DROP PROCEDURE IF EXISTS updateappointmentsdoctor;
DROP PROCEDURE IF EXISTS deleteappointments;

CREATE TABLE patients(PatientsID INT PRIMARY KEY, 
					  firstName VARCHAR(20),
                      lastName VARCHAR(20),
                      DOB DATETIME,
                      phoneNumber VARCHAR(20),
                      address VARCHAR(100),
                      gender VARCHAR(5)
                      );
INSERT INTO patients
VALUES
('1', 'Elijah', 'Williams', '1971-07-09', '708-301-9156', '1405 Shady Pines Drive Louisville, KY 40201', 'm'),
('2', 'William', 'Brown', '2000-03-28', '702-232-5596', '172 Peck Street Louisville, KY 40201', 'm'),
('3', 'James', 'Jones', '1977-05-27', '516-635-1447', '3806 Queens Lane Louisville, KY 40201', 'm'),
('4', 'Mary', 'Miller', '1995-06-10', '414-447-6420', '4161 May Street Louisville, KY 40201', 'f'),
('5', 'Molly', 'Davis', '1956-06-12', '228-696-9611', '3343 Spadafore Drive Louisville, KY 40201', 'f'),
('6', 'Skylar', 'Garcia', '1950-09-10', '315-291-7722', '4282 Marion Drive Louisville, KY 40201', 'f'),
('7', 'Irma', 'Rodriguez', '1962-01-04', '530-546-4060', '4885 Victoria Court Louisville, KY 40201', 'f'),
('8', 'Mason', 'Wilson', '1969-07-30', '913-682-3523', '3705 Hall Valley Drive Louisville, KY 40201', 'm'),
('9', 'Tina', 'Martinez', '1952-12-03', '719-892-1009', '4824 Millbrook Road Louisville, KY 40201', 'f'),
('10', 'Ethan', 'Anderson', '1939-06-26', '405-830-4304', '2045 Oak Drive Louisville, KY 40201', 'm'),
('11', 'Daniel', 'Andy', '1984-09-05', '412-466-9067', '216 Kidd Avenue Louisville, KY 40201', 'm'),
('12', 'Jacob', 'Thomas', '1964-11-05', '616-261-8193', '2460 Windy Ridge Road Louisville, KY 40201', 'm'),
('13', 'Emily', 'Hernandez', '1953-05-26', '828-724-3693', '297 Bee Street Louisville, KY 40201', 'f'),
('14', 'Jackson', 'Moore', '1998-05-29', '732-724-6931', '791 Ferrell Street Louisville, KY 40201', 'm'),
('15', 'Levi', 'Martin', '1999-05-10', '305-921-4554', '2881 Mount Olive Road Louisville, KY 40201', 'm'),
('16', 'Viola', 'Jackson', '1974-09-09', '817-803-1708', '2247 Chapel Street Louisville, KY 40201', 'f'),
('17', 'Mateo', 'Thompson', '1948-01-11', '937-523-6874', '507 Breezewood Court Louisville, KY 40201', 'm'),
('18', 'Jack', 'White', '1951-12-03', '863-467-5194', '1666 Paradise Lane Louisville, KY 40201', 'm'),
('19', 'Teresa', 'Lopez', '1956-02-27', '803-826-0480', '3826 Neville Street Louisville, KY 40201', 'f'),
('20', 'Ana', 'Lee', '1987-11-20', '585-352-3170', '4658 Oak Drive Louisville, KY 40201', 'f');

CREATE TABLE specialty (specialtyID INT PRIMARY KEY,
						specialtyName VARCHAR(20)
					    );
INSERT INTO specialty
VALUES
('1', 'Orthodontics'),
('2', 'Oral medicine'),
('3', 'Orofacial pain'),
('4', 'Prosthodontics');

CREATE TABLE doctor(doctorID INT PRIMARY KEY,
				    firstName VARCHAR(20),
                    lastName VARCHAR(20),
                    phoneNumber VARCHAR(20),
                    specialty INT,
					FOREIGN KEY (specialty) REFERENCES specialty(specialtyID)
                    );
INSERT INTO doctor
VALUES
(1, 'sara', 'Riley', '502-936-8924', 2),
(2, 'Debra', 'Patel', '502-838-3363', 3),
(3, 'Sharon', 'Cooper', '502-397-1095', 4),
(4, 'John', 'Kelly', '502-555-2937', 1);

CREATE TABLE appointments(AppointmentID INT,
						  scheduleTime VARCHAR(20),
						  scheduleDay VARCHAR(20),
						  doctorID INT,
						  patientsID INT,
                          FOREIGN KEY (patientsID) REFERENCES patients(PatientsID),
                          FOREIGN KEY (doctorID) REFERENCES doctor(doctorID)
                          );
                          
CREATE INDEX scheduleDay_index
ON appointments (scheduleDay);

INSERT INTO appointments
VALUES 
('1', '9 to 10', 'Monday', '1', '1'), 
('2', '10 to 11', 'Monday', '1', '2'),
('3', '11 to 12', 'Monday', '1', '3'),
('4', '1 to 2', 'Monday', '2', '4'),
('5', '2 to 3', 'Monday', '2', '5'),
('6', '3 to 4', 'Monday', '2', '6'),
('7', '4 to 5', 'Monday', '2', '7'),
('8', '9 to 10', 'Tuesday', '3', '8'),
('9', '10 to 11', 'Tuesday', '3', '9'),
('10', '11 to 12', 'Tuesday', '3', '10'),
('11', '1 to 2', 'Tuesday', '4', '11'),
('12', '2 to 3 ', 'Tuesday', '4', '12'),
('13', '3 to 4', 'Tuesday', '4', '13'),
('14', '4 to 5', 'Tuesday', '4', '14'),
('15', '9 to 10', 'Wednesday', '2', '15'),
('16', '10 to 11', 'Wednesday', '2', '16'),
('17', '11 to 12', 'Wednesday', '2', '17'),
('18', '1 to 2', 'Wednesday', '1', '18'),
('19', '2 to 3', 'Wednesday', '1', '19'),
('20', '3 to 4', 'Wednesday', '1', '20')
;

/*********************************

Stored Procedures

*********************************/

/*
stored Procedure: CreatePatient
Usage: Creates a column for a new patient
Parameters:
	@PatientsID - Identifies the patient
	@firstName - The first name of the new patient
	@lastName - The last name of the new patient
*/

DELIMITER $$
CREATE PROCEDURE CreatePatient(IN patid INT, IN fir VARCHAR(20), IN las VARCHAR(20))
BEGIN
	INSERT INTO patients
    SET PatientsID = patid, firstName = fir, lastName = las;
    END $$
DELIMITER ;
    
/*
stored Procedure: readAppointments
Usage: Finds appointments schedule on a certain day 
Parameters:
		@appointments - The day of the appointment
*/

DELIMITER $$
CREATE PROCEDURE readAppointments(IN dayofweek VARCHAR(255))
BEGIN
	SELECT scheduleTime, scheduleDay, concat(d.firstName, ' ',d.lastName) as "DoctorName",
    concat(p.firstName, ' ', p.lastName) as "PatientName"
 	FROM appointments AS a
    INNER JOIN doctor AS d ON a.doctorID = d.doctorID
	INNER JOIN patients AS p ON a.patientsID = p.patientsID 
	WHERE scheduleDay = dayofweek;
END $$
DELIMITER ;

/*
stored Procedure: Update
Usage: Reschedules an Appointment time for an existing patient
Parameters:
	@AppointmentID
    @doctorID
*/

DELIMITER $$
CREATE PROCEDURE updateappointmentsdoctor(IN olddocid INT, IN newdocid INT)
BEGIN
	UPDATE appointments
    SET  doctorID = newdocid
    WHERE doctorID = olddocid;
END $$
DELIMITER ;

/*
stored Procedure: Delete
Usage: Deletes an appointment time
Parameters:
	@AppointmentID
*/

DELIMITER $$
CREATE PROCEDURE deleteappointments(IN docid INT)
BEGIN
	DELETE FROM appointments WHERE doctorID = docid;
END $$
DELIMITER ;


CALL CreatePatient(21, 'john', 'doe'); /* PatientsID, First Name, Last Name */
CALL readAppointments('Monday'); /* Try 'Thursday' */
CALL updateappointmentsdoctor(2, 1); /* Old doctor ID, New doctor ID */
CALL deleteappointments(2); /* Enter the doctor ID from appointments to drop */

SELECT * FROM doctor;
SELECT * FROM specialty;
SELECT * FROM patients;
SELECT * FROM appointments;