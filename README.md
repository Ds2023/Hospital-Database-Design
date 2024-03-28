# Hospital-Database-Design

Hospitals are the most ubiquitous institutions in our 21st century life. It becomes inefficient to try to manage these records manually and hence the need for a well designed database. 

**The task is to design a database following the information as given;**

A hospital's key personnel are the physicians, nurses and technicians, who operate in departments, OPD, Radiology, Laboratory, Pharmacy, Theatre, Oncology, 
ER. 

A physician has an employment number, position and their procedure designation, a record of their certification date and expiry is also kept, this is also done 
for the pharmacy and lab technicians as required by the relevant governing boards e.g. PPB. The departments they operate in are headed by senior physicians. 
Pricing for services in the hospital are determined by the relevant committee and these are coded per procedure to avoid duplicity or different price for the same service. 

When a patient makes a visit to the hospital, their National ID number is recorded, alongside their phone number for tracking across different service points in the hospital and it is the combination of these numbers for which their financial data is linked. Other demographics and contact information is also kept, that is their email address, phone number, location of stay, next of kin contact, date of birth and gender. (come up with creative ways to enable data validation/accuracy of these records)
A MRN-Medical records number is system-generated for every patient upon their visit and registration and this serves as their primary identifier. 
Patients are of different categories, the hospital has its inhouse scheme, that is for staff and their dependents, credit patients ie insurance, their insurance 
numbers must be collected by the medical records personnel handling the patients' registration, and cash payers. 
A record of the Physician who handles the patient must be kept for reference and contesting an invoice rejection by the payer-insurance company. 
This record is an appointment with the start and end time and date.

When a doctor prescribes a medication the patient is sent to the Pharmacy, these can be branded or generic drugs, a record of their expiry dates are kept and the Pharmacy-in-charge is notified (100 days- hypothetically) prior to the drug expiry. All medication must have a description to reduce errors resulting from 
sound-alikes and look-alikes. 

All patients sent to the lab have their data recorded by the lab technician, these include, the prescribed test, test description, lab-scientist performing the test
date and time of the test, test fee, and result. 

In-patients are admitted by the in-patient nurse, who locates a room within the system; this tracking is enabled in the HMIS-Health Management Information System. 
Upon their discharge a finalized bill is prepared detailing the length of stay, ward charges, bed charges, doctors charges, nursing charges, lab test charges
cost of operation for theatre if any,  

**Key Deliverables:** 

1. Conceptual data model - identifying the high level relationships between the key entities
2. Logical Data model - highlighting all attributes and the constraints, use the 3NF approach. 
3. Physical data model - specifying all the table structures

**Objectives of your database design**

1. Automate the hospital operation 
2. To form a foundation and encourage the practice of data governance within the hospital
3. To improve the quality of record-keeping in the hospital
4. Timely access to patient and personnel records
5. To increase compliance with Data Protection regulation in healthcare
