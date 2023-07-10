CREATE DATABASE HospitalAppointmentFinal;
USE HospitalAppointmentFinal;

CREATE TABLE patient (
  PatientId INT PRIMARY KEY IDENTITY(1,1),
  PatientName VARCHAR(50) NOT NULL,
  DOB DATE NOT NULL,
  Address VARCHAR(100) NOT NULL,
  phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE doctor (
  DoctorId INT PRIMARY KEY IDENTITY(1,1),
  DoctorName VARCHAR(50) NOT NULL,
  specialty VARCHAR(50) NOT NULL,
  Email VARCHAR(50) NOT NULL
);

CREATE TABLE appointment (
  appointment_id INT PRIMARY KEY IDENTITY(1,1),
  PatientId INT NOT NULL,
  DoctorId INT NOT NULL,
  appointment_date DATETIME NOT NULL,
  appointment_reason VARCHAR(100) NOT NULL,
  CONSTRAINT FK_patient FOREIGN KEY (PatientId) REFERENCES patient(PatientId),
  CONSTRAINT FK_doctor FOREIGN KEY (DoctorId) REFERENCES doctor(DoctorId)
);

CREATE TABLE signup_page (
   username VARCHAR(50) PRIMARY KEY,
  password VARCHAR(50) NOT NULL,
  confirm_password VARCHAR(50) NOT NULL
);

CREATE TABLE login_page (
  username VARCHAR(50) PRIMARY KEY,
  password VARCHAR(50) NOT NULL,
  user_type VARCHAR(10) NOT NULL
);

INSERT INTO Patient ( PatientName, DOB,Address,phone_number)
VALUES ( 'JOHN DOE', '1980-01-01',  '1234 Main St','987456321');

INSERT INTO doctor( DoctorName, specialty,Email)
VALUES ( 'Akshay', 'Mbbs','akshay@gmail.com');

INSERT INTO appointment( PatientId,DoctorId,appointment_date,appointment_reason)
VALUES ( 1,1,'2023-03-21','fever');

INSERT INTO signup_page(username,password,confirm_password)
VALUES ('Akshay','123456789','123456789');

INSERT INTO login_page(username,password,user_type)
VALUES ('Akshay','123456789','patient');

select *from signup_page