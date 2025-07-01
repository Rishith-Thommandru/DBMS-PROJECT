
INSERT INTO Village VALUES
(1, 'Sugepalli', 'Kalyandurgam', 'Ananthapur', 2500, '2024-12-31'),
(2, 'Kothapally', 'Huzurabad', 'Karimnagar', 2200, '2024-12-31');

select * from Village;


INSERT INTO Family (FamilyID, HouseNo, VillageID, HouseType, ToiletFacility) VALUES
(1, 'HNO-101', 1, 'Pucca', TRUE),
(2, 'HNO-102', 1, 'Kutcha', FALSE),
(3, 'HNO-103', 1, 'Mixed', TRUE),
(4, 'HNO-104', 1, 'Pucca', TRUE),
(5, 'HNO-105', 1, 'Kutcha', FALSE),
(6, 'HNO-201', 2, 'Pucca', TRUE),
(7, 'HNO-202', 2, 'Kutcha', TRUE),
(8, 'HNO-203', 2, 'Mixed', TRUE),
(9, 'HNO-204', 2, 'Pucca', FALSE),
(10, 'HNO-205', 2, 'Kutcha', TRUE);

SELECT * FROM Family;

INSERT INTO Person (PersonID, FirstName, LastName, DateOfBirth, Gender, 
FamilyID, PhoneNo, FatherID, MotherID, IsDeceased) VALUES 
(1, 'Ramesh', 'Kumar', '1985-02-15', 'M', 1, '9000000001', NULL, NULL, FALSE), 
(2, 'Sita', 'Kumar', '1988-07-22', 'F', 1, '9000000002', NULL, NULL, FALSE), 
(3, 'Anil', 'Kumar', '2012-05-10', 'M', 1, '9000000003', 1, 2, FALSE), 
(4, 'Mahesh', 'Yadav', '1982-03-10', 'M', 2, '9000000004', NULL, NULL, FALSE), 
(5, 'Radha', 'Yadav', '1986-11-19', 'F', 2, '9000000005', NULL, NULL, FALSE), 
(6, 'Kiran', 'Yadav', '2014-09-08', 'M', 2, '9000000006', 4, 5, FALSE), 
(7, 'Suresh', 'Patil', '1984-06-01', 'M', 3, '9000000007', NULL, NULL, FALSE), 
(8, 'Geeta', 'Patil', '1987-12-05', 'F', 3, '9000000008', NULL, NULL, FALSE), 
(9, 'Nikki', 'Patil', '2013-08-14', 'F', 3, '9000000009', 7, 8, FALSE), 
(10, 'Ravi', 'Naik', '1983-10-21', 'M', 4, '9000000010', NULL, NULL, FALSE), 
(11, 'Lakshmi', 'Naik', '1986-09-15', 'F', 4, '9000000011', NULL, NULL, FALSE), 
(12, 'Ajay', 'Naik', '2011-04-02', 'M', 4, '9000000012', 10, 11, FALSE), 
(13, 'Kishore', 'Das', '1980-01-30', 'M', 5, '9000000013', NULL, NULL, FALSE), 
(14, 'Sunita', 'Das', '1985-08-27', 'F', 5, '9000000014', NULL, NULL, FALSE), 
(15, 'Deepa', 'Das', '2010-03-20', 'F', 5, '9000000015', 13, 14, FALSE), 
(16, 'Harish', 'Rao', '1982-05-18', 'M', 6, '9000000016', NULL, NULL, FALSE), 
(17, 'Kavita', 'Rao', '1986-10-10', 'F', 6, '9000000017', NULL, NULL, FALSE), 
(18, 'Neha', 'Rao', '2015-07-25', 'F', 6, '9000000018', 16, 17, FALSE), 
(19, 'Vinod', 'Goud', '1981-12-11', 'M', 7, '9000000019', NULL, NULL, FALSE), 
(20, 'Rekha', 'Goud', '1984-09-09', 'F', 7, '9000000020', NULL, NULL, FALSE), 
(21, 'Ravi', 'Goud', '2013-02-17', 'M', 7, '9000000021', 19, 20, FALSE), 
(22, 'Arun', 'Rathi', '1983-08-05', 'M', 8, '9000000022', NULL, NULL, FALSE), 
(23, 'Meena', 'Rathi', '1987-06-28', 'F', 8, '9000000023', NULL, NULL, FALSE), 
(24, 'Isha', 'Rathi', '2011-12-12', 'F', 8, '9000000024', 22, 23, FALSE), 
(25, 'Naveen', 'Verma', '1980-04-17', 'M', 9, '9000000025', NULL, NULL, FALSE), 
(26, 'Anita', 'Verma', '1985-01-23', 'F', 9, '9000000026', NULL, NULL, FALSE), 
(27, 'Om', 'Verma', '2014-06-06', 'M', 9, '9000000027', 25, 26, FALSE), 
(28, 'Shyam', 'Joshi', '1982-11-30', 'M', 10, '9000000028', NULL, NULL, FALSE), 
(29, 'Nirmala', 'Joshi', '1988-03-11', 'F', 10, '9000000029', NULL, NULL, FALSE), 
(30, 'Sara', 'Joshi', '2010-10-01', 'F', 10, '9000000030', 28, 29, FALSE);

select * from person;


INSERT INTO Asha 
VALUES
(101,2,'Sita','Kumar',9000000002, 1, '2020-06-15', 'Active'),
(102,20, 'Rekha', 'Goud', 9000000020, 2, '2021-04-10', 'Active');

select * from asha;

INSERT INTO VillageVisitRecord
VALUES
(1, 101, 1, '2024-01-10', 'General Health Checkup', 'Visited 10 households, checked BP and sugar levels'),
(2, 101, 1, '2024-02-15', 'Pregnancy Follow-up', 'Monitored 2 ongoing pregnancies'),
(3, 101, 1, '2024-03-20', 'Immunization Drive', 'Gave polio drops to children under 5'),
(4, 102, 2, '2024-01-12', 'Family Survey', 'Collected health and sanitation data from new families'),
(5, 102, 2, '2024-02-18', 'Nutrition Awareness', 'Conducted session on child nutrition and anemia'),
(6, 102, 2, '2024-03-22', 'Medicine Distribution', 'Distributed iron and calcium tablets');

select * from VillageVisitRecord;

INSERT INTO PregnancyRecord (
    PregnancyID, HusbandID, WifeID, LMP, CurrentStatus
)
VALUES
(1, 1, 2, '2024-08-15', 'Completed'), -- Ramesh & Sita
(2, 4, 5, '2024-09-10', 'Completed'), -- Mahesh & Radha
(3, 7, 8, '2024-11-01', 'Ongoing'), -- Suresh & Geeta
(4, 10, 11, '2024-10-20', 'Aborted'), -- Ravi & Lakshmi
(5, 13, 14, '2024-12-05', 'Ongoing'), -- Kishore & Sunita
(6, 16, 17, '2024-07-30', 'Completed'); -- Harish & Kavita

select * from PregnancyRecord;


INSERT INTO NewBornRecord (PersonID,PregnancyID,Gender,BirthWeight,DateOfBirth,TypeofDelivery,Notes)
VALUES
(31, 1, 'M', 3.20, '2025-05-12', 'Normal', 'Healthy boy, no complications'),
(32, 2, 'F', 2.90, '2025-04-28', 'C-Section', 'Delivered via C-section due to breech position'),
(33, 6, 'M', 3.00, '2025-05-05', 'Normal', 'Normal delivery at local PHC');

select * from NewBornRecord;


INSERT INTO DeathRecord (PersonID, DateOfDeath, CauseOfDeath) VALUES
(6, '2022-08-14', 'Fever complications'),
(12, '2023-01-03', 'Accident'),
(15, '2021-05-26', 'Heart failure'),
(21, '2023-11-10', 'Snake bite'),
(27, '2022-03-19', 'Dengue');

select * from DeathRecord;


INSERT INTO Disease (DiseaseID, DiseaseName) VALUES
(1, 'Fever'),
(2, 'Malaria'),
(3, 'Dengue'),
(4, 'Diabetes'),
(5, 'Hypertension'),
(6, 'Tuberculosis');

select * from Disease;


INSERT INTO ChronicDiseaseRecord (RecordID, PersonID, DiseaseID, Notes) VALUES
(1, 1, 4, 'Diagnosed with Type 2 Diabetes'),
(2, 2, 5, 'Hypertension controlled with medication'),
(3, 4, 6, 'TB treatment ongoing'),
(4, 10, 4, 'Diabetes, regular checkup'),
(5, 15, 5, 'Hypertension, lifestyle modification advised');

select * from ChronicDiseaseRecord;

INSERT INTO Vaccine (VaccineID, VaccineName, MinimumAge, MaximumAge) VALUES
(1, 'BCG', 0, 1),           -- At birth to 1 month
(2, 'Hepatitis B', 0, 24),  -- Birth dose + 6, 10, 14 weeks; max catch-up by 2 years
(3, 'Polio', 0, 60),        -- Multiple doses from birth to 5 years
(4, 'DPT', 6, 84),          -- 6 weeks to 7 years (boosters included)
(5, 'MMR', 9, 72),          -- 9 months to 6 years
(6, 'COVID-19', 144, NULL); -- From 12 years (144 months) onward, no defined upper limit

select * from Vaccine;


INSERT INTO ImmunizationRecord (ImmunizationID, VaccineID, PersonID, DateOfVaccination) VALUES
(1, 1, 3, '2012-08-10'), -- Anil Kumar (alive)
(2, 2, 6, '2014-12-05'), -- Kiran Yadav (alive)
(3, 3, 9, '2013-10-14'), -- Nikki Patil (alive)
(4, 4, 12, '2011-08-02'), -- Ajay Naik (alive)
(5, 5, 15, '2010-06-20'), -- Deepa Das (alive)
(6, 6, 18, '2015-09-25'), -- Neha Rao (alive)
(7, 1, 21, '2013-04-17'), -- Ravi Goud (alive)
(8, 2, 24, '2012-02-12'), -- Isha Rathi (alive)
(9, 3, 27, '2014-08-06'), -- Om Verma (alive)
(10, 4, 30, '2010-12-01'); -- Sara Joshi (alive)

select * from ImmunizationRecord;


INSERT INTO Tablet (TabletID, TabletName) VALUES
(1, 'Paracetamol'),
(2, 'Albendazole'),
(3, 'Iron Folic Acid'),
(4, 'Calcium Carbonate'),
(5, 'Ciprofloxacin'),
(6, 'Metronidazole');

select * from Tablet;


INSERT INTO MedicineDistributionRecord (RecordID, PersonID, TabletID, MedicineDistributedDate) VALUES
(1, 3, 1, '2024-06-10'), -- Anil Kumar (alive)
(2, 6, 2, '2024-06-15'), -- Kiran Yadav (alive)
(3, 9, 3, '2024-07-01'), -- Nikki Patil (alive)
(4, 12, 4, '2024-07-10'), -- Ajay Naik (alive)
(5, 15, 5, '2024-07-20'), -- Deepa Das (alive)
(6, 18, 1, '2024-08-05'), -- Neha Rao (alive)
(7, 21, 2, '2024-08-18'), -- Ravi Goud (alive)
(8, 24, 3, '2024-09-01'), -- Isha Rathi (alive)
(9, 27, 4, '2024-09-14'), -- Om Verma (alive)
(10, 30, 5, '2024-09-30'); -- Sara Joshi (alive)

select * from MedicineDistributionRecord;