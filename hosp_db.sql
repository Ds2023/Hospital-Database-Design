
create database hospital_db;

use hospital_db;



create table Personnel (
employeeId int primary key identity not null,
firstName varchar(50) not null,
lastName varchar(50) not null,
position varchar(50) not null,
procedureDesignation varchar(100) not null,
certificationDate date not null,
certificationExpiry date not null,
check (certificationExpiry > certificationDate),
departmentId int
);

create table Department (
departmentId int primary key not null,
departmentName varchar(50) unique,
headOfDepartment int
);

alter table Personnel
add foreign key (departmentId) references Department(departmentId);

alter table Department
add foreign key (headOfDepartment) references Personnel(employeeId);


create table Service (
serviceId int primary key identity not null,
serviceName varchar(100) not null,
serviceDescription varchar(255),
price int not null,
departmentId int,
foreign key (departmentId) references Department(departmentId)
);


create table Patients (
patientId int primary key identity not null,
nationalId int,
phoneNo int,
email varchar(100),
residence varchar(100),
nextOfKinContact int,
dateOfBirth date,
gender varchar (10),
medicalRecordsNo int,
category varchar(50)
);

create table Pharmacy (
pharmacyId int primary key identity not null,
operatingHours varchar(50)
);

create table Medications (
medicationId int primary key identity not null, 
medicationName varchar(100) not null, 
quantity int not null,
description varchar(255), 
expiryDate date not null, 
pharmacyId int, 
foreign key (pharmacyId) references Pharmacy(pharmacyId)
);


create table Prescriptions (
prescriptionId int primary key identity not null,
patientId int not null,
physicianId int not null,
medicationId int not null,
prescriptionDate date not null,
dosage varchar(50),
quantity int not null,
instructions varchar(255),
foreign key (patientId) references Patients(patientId), 
foreign key (physicianId) references Personnel(employeeId), 
foreign key (medicationId) references Medications(medicationId)
);

create table Physician (
physicianId int primary key identity not null, 
empName varchar(100) not null, 
specialization varchar(50) 
);

create table Lab_Tests (
testId int primary key identity not null, 
testName varchar(100) not null,
description varchar(255),
price decimal(10,2),
datePerformed date
);

create table Test_Ordered (
testOrderedId int primary key identity not null, 
physicianId int not null, 
patientId int not null,
testId int not null, 
dateOrdered date not null, 
foreign key (physicianId) references Physician(physicianId), 
foreign key (patientId) references Patients(patientId), 
foreign key (testId) references Lab_Tests(testId) 
);


create table Nurses (
  nurseId int primary key identity not null,
  nurseName varchar(100) not null, 
  departmentName varchar(50),
  departmentId int,
  foreign key (departmentId) references Department(departmentId) 
);

create table Appointments (
  appointmentId int primary key identity not null, 
  patientId int not null,
  physicianId int not null, 
  appointmentDate date not null,
  appointmentTime time not null,
  appointmentType varchar(50),
  appointmentDetails varchar(255), 
  foreign key (patientId) references Patients(patientId), 
  foreign key (physicianId) references Physician(physicianId) 
);

create table Rooms (
  roomId int primary key identity not null,
  capacity int not null 
);

create table Inpatients (
  inpatientId int primary key identity not null, 
  roomId int not null, 
  nurseId int not null,
  patientId int not null, 
  foreign key (roomId) references Rooms(roomId), 
  foreign key (nurseId) references Nurses(nurseId), 
  foreign key (patientId) references Patients(patientId) 
);

create table HMIS (
  hmisId int primary key identity not null,
  admissionDate date not null, 
  dischargeDate date, 
  diagnosis text,
  treatmentDetails text,
  medicalHistory text,
  inpatientId int not null,
  foreign key (inpatientId) references Inpatients(inpatientId)
);

create table Bill (
  billID int primary key identity not null, 
  totalAmount int not null, 
  billingDate date not null, 
  paymentStatus varchar(50),
  inpatientId int not null unique, 
  foreign key (inpatientId) references Inpatients(inpatientId) 
);


