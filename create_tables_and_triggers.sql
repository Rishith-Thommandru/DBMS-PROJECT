create database ashaworker;
use ashaworker;

CREATE TABLE Village(
 VillageID INT PRIMARY KEY,
    VillageName VARCHAR(100) NOT NULL,
    Mandal VARCHAR(100) NOT NULL,
    District VARCHAR(100) NOT NULL,
    Population INT,
    LastUpdatedDateofPopulation DATE
);

CREATE TABLE Family(
 FamilyID INT PRIMARY KEY,
    HouseNo VARCHAR(100),
 VillageID INT NOT NULL,
    HouseType VARCHAR(100),
    ToiletFacility BOOLEAN,
    FOREIGN KEY (VillageID) REFERENCES Village (VillageID)
);

CREATE TABLE Person(
    PersonID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100),
    DateOfBirth DATE NOT NULL,
    Gender VARCHAR(1) CHECK (Gender IN ('M', 'F', 'O')),
    FamilyID INT NOT NULL,
    PhoneNo VARCHAR(10) NOT NULL CHECK (LENGTH(PhoneNo)=10),
    FatherID INT, 
    MotherID INT, 
    IsDeceased BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (FamilyID) REFERENCES Family(FamilyID),
    FOREIGN KEY (FatherID) REFERENCES Person(PersonID),
    FOREIGN KEY (MotherID) REFERENCES Person(PersonID)
);

CREATE TABLE Asha(
	 AshaID INT PRIMARY KEY,
      PersonID INT ,
	 FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100),
    PhoneNo VARCHAR(10) UNIQUE NOT NULL CHECK (LENGTH(PhoneNo)=10),
    AssignedVillageID INT NOT NULL UNIQUE,
    DateofJoining DATE NOT NULL,
    CurrentStatus VARCHAR(100) CHECK (CurrentStatus IN ('Active', 'Inactive', 'Transferred', 'Retired')),
    FOREIGN KEY (AssignedVillageID) REFERENCES Village (VillageID),
     FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
);

CREATE TABLE VillageVisitRecord(
 VisitID INT PRIMARY KEY,
    AshaID INT NOT NULL,
    VillageID INT NOT NULL,
    DateOfVisit Date NOT NULL,
    PurposeofVisit TINYTEXT,
    Notes TEXT,
 FOREIGN KEY (AshaID) REFERENCES Asha (AshaID),
 FOREIGN KEY (VillageID) REFERENCES Village (VillageID)
);

CREATE TABLE PregnancyRecord(
 PregnancyID INT PRIMARY KEY,
    HusbandID INT,
    WifeID INT,
    LMP DATE NOT NULL,
    CurrentStatus VARCHAR(100) CHECK (CurrentStatus IN ('Ongoing', 'Completed', 'Aborted')),
	FOREIGN KEY (HusbandID) REFERENCES Person (PersonID),
    FOREIGN KEY (WifeID) REFERENCES Person (PersonID)
);

CREATE TABLE NewBornRecord(
    PersonID INT,
    PregnancyID INT,
    Gender VARCHAR(1) CHECK (Gender IN ('M', 'F', 'O')),
    BirthWeight DECIMAL(5,2) CHECK (BirthWeight >= 0),
    DateOfBirth DATE NOT NULL,
    TypeOfDelivery VARCHAR(100) NOT NULL CHECK (TypeOfDelivery IN ('Normal', 'C-Section')),
    Notes TEXT,
    PRIMARY KEY (PersonID),
    FOREIGN KEY (PregnancyID) REFERENCES PregnancyRecord(PregnancyID),
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);


DELIMITER $$

CREATE TRIGGER insert_person_for_newborn
BEFORE INSERT ON NewBornRecord
FOR EACH ROW
BEGIN
    DECLARE mother_family_id INT;
    DECLARE mother_id INT;
    DECLARE father_id INT;
    DECLARE father_phone VARCHAR(15);
    
    SELECT Mother.FamilyID,Mother.PersonID
    INTO mother_family_id,mother_id
    FROM PregnancyRecord P
    JOIN Person Mother ON P.WifeID = Mother.PersonID
    WHERE P.PregnancyID = NEW.PregnancyID;


    SELECT HusbandID INTO father_id
    FROM PregnancyRecord
    WHERE PregnancyID = NEW.PregnancyID;

    SELECT PhoneNo INTO father_phone
    FROM Person
    WHERE PersonID = father_id;
    
     
    INSERT INTO Person (PersonID,FirstName, Gender, DateOfBirth, PhoneNo, FamilyID,FatherID,MotherID)
    VALUES (New.PersonID,'Baby', NEW.Gender, NEW.DateOfBirth,father_phone, mother_family_id,father_id,mother_id);

END$$

DELIMITER ;

CREATE TABLE DeathRecord(
    PersonID INT PRIMARY KEY,
    DateOfDeath DATE NOT NULL,
    CauseOfDeath TEXT NOT NULL,
    FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
);

DELIMITER $$

CREATE TRIGGER after_insert_death
AFTER INSERT ON DeathRecord
FOR EACH ROW
BEGIN
    UPDATE Person
    SET isDeceased = TRUE
    WHERE PersonID = NEW.PersonID;
END $$

DELIMITER ;

CREATE TABLE Disease(
    DiseaseID INT PRIMARY KEY,
    DiseaseName VARCHAR(100) NOT NULL
);

CREATE TABLE ChronicDiseaseRecord(
 RecordID INT PRIMARY KEY,
    PersonID INT NOT NULL,
    DiseaseID INT NOT NULL,
    Notes TEXT,
    FOREIGN KEY (DiseaseID) REFERENCES Disease (DiseaseID),
    FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
);

CREATE TABLE Vaccine(
    VaccineID INT PRIMARY KEY,
    VaccineName VARCHAR(100) NOT NULL,
    MinimumAge INT NULL,
    MaximumAge INT NULL
);

CREATE TABLE ImmunizationRecord(
 ImmunizationID INT PRIMARY KEY,
    VaccineID INT NOT NULL,
    PersonID INT NOT NULL,
    DateOfVaccination DATE NOT NULL,
    FOREIGN KEY (PersonID) REFERENCES Person (PersonID),
    FOREIGN KEY (VaccineID) REFERENCES Vaccine (VaccineID)
);

CREATE TABLE Tablet(
    TabletID INT PRIMARY KEY,
    TabletName VARCHAR(100) NOT NULL
);


CREATE TABLE MedicineDistributionRecord(
 RecordID INT PRIMARY KEY,
    PersonID INT NOT NULL,
    TabletID INT NOT NULL,
    MedicineDistributedDate DATE NOT NULL,
    FOREIGN KEY (TabletID) REFERENCES Tablet (TabletID),
    FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
);