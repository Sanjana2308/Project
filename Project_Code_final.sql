CREATE DATABASE Project_final;
USE Project_final;

CREATE TABLE Victims(
	VictimID INT,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	DateOfBirth DATE,
	Gender VARCHAR(20),
	ContactInformation VARCHAR(200),
	PRIMARY KEY(VictimID)
);

-- Dummy data for Victims table
INSERT INTO Victims (VictimID, FirstName, LastName, DateOfBirth, Gender, ContactInformation)
VALUES
(1, 'John', 'Doe', '1990-05-15', 'Male', '123 Main St, Anytown, USA'),
(2, 'Jane', 'Smith', '1985-09-20', 'Female', '456 Elm St, Othertown, USA'),
(3, 'Michael', 'Johnson', '1978-12-10', 'Male', '789 Oak St, Anothertown, USA'),
(4, 'Emily', 'Brown', '1995-03-25', 'Female', '321 Pine St, Somewhere, USA'),
(5, 'David', 'Martinez', '1982-07-08', 'Male', '654 Maple St, Nowhere, USA'),
(6, 'Sarah', 'Garcia', '1998-11-30', 'Female', '987 Cedar St, Anywhere, USA'),
(7, 'Christopher', 'Rodriguez', '1993-02-18', 'Male', '741 Birch St, Elsewhere, USA'),
(8, 'Amanda', 'Lopez', '1980-06-12', 'Female', '852 Walnut St, Noway, USA'),
(9, 'Daniel', 'Lee', '1987-09-03', 'Male', '369 Oak St, Anyplace, USA'),
(10, 'Jessica', 'Jackson', '1991-04-27', 'Female', '159 Pine St, Anyplace, USA');

CREATE TABLE Suspects(
	SuspectID INT,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	DateOfBirth DATE,
	Gender VARCHAR(20),
	ContactInformation VARCHAR(200)
	PRIMARY KEY(SuspectID)
);

-- Dummy data for Suspects table
INSERT INTO Suspects (SuspectID, FirstName, LastName, DateOfBirth, Gender, ContactInformation)
VALUES
(1, 'Robert', 'Wilson', '1982-08-25', 'Male', '111 First St, Cityville, USA'),
(2, 'Lisa', 'Johnson', '1990-06-17', 'Female', '222 Second St, Townsville, USA'),
(3, 'Mark', 'Anderson', '1975-03-12', 'Male', '333 Third St, Villagetown, USA'),
(4, 'Jennifer', 'Thomas', '1988-11-05', 'Female', '444 Fourth St, Countrytown, USA'),
(5, 'William', 'Martinez', '1980-09-30', 'Male', '555 Fifth St, Hamletville, USA'),
(6, 'Michelle', 'Garcia', '1995-07-20', 'Female', '666 Sixth St, Burgville, USA'),
(7, 'James', 'Brown', '1984-02-15', 'Male', '777 Seventh St, Landtown, USA'),
(8, 'Stephanie', 'Davis', '1993-10-10', 'Female', '888 Eighth St, Seatown, USA'),
(9, 'John', 'Miller', '1979-04-22', 'Male', '999 Ninth St, Coasttown, USA'),
(10, 'Emily', 'Wilson', '1992-12-18', 'Female', '000 Tenth St, Shoretown, USA');

CREATE TABLE Incidents(
	IncidentID INT,
	IncidentType VARCHAR(50),
	IncidentDate DATE,
	Location_Longitude DECIMAL(10, 8),
	Location_Latitude DECIMAL(10, 8),
	Description VARCHAR(200),
	Status VARCHAR(50),
	VictimID INT,
	SuspectID INT
	PRIMARY KEY (IncidentID),
	FOREIGN KEY (VictimID) References Victims(VictimID),
	FOREIGN KEY (SuspectID) References Suspects(SuspectID)
);

-- Dummy data for Incidents table
INSERT INTO Incidents (IncidentID, IncidentType, IncidentDate, Location_Longitude, Location_Latitude, Description, Status, VictimID, SuspectID)
VALUES
(1, 'Robbery', '2024-04-01', 40.7128, -74.0060, 'Armed robbery at convenience store', 'Open', 1, 1),
(2, 'Homicide', '2024-04-05', 34.0522, -18.2437, 'Murder in downtown alley', 'Under Investigation', 2, 2),
(3, 'Theft', '2024-04-10', 41.8781, -87.6298, 'Shoplifting at department store', 'Closed', 3, 3),
(4, 'Assault', '2024-04-15', 29.7604, -95.3698, 'Bar fight resulting in injuries', 'Open', 4, 4),
(5, 'Burglary', '2024-04-20', 33.4484, -12.0740, 'Break-in at residential home', 'Open', 5, 5),
(6, 'Kidnapping', '2024-04-25', 39.9526, -75.1652, 'Child abduction from park', 'Closed', 6, 6),
(7, 'Arson', '2024-04-30', 34.0522, -18.2437, 'Fire set to abandoned building', 'Open', 7, 7),
(8, 'Fraud', '2024-05-05', 40.7128, -74.0060, 'Identity theft and credit card fraud', 'Under Investigation', 8, 8),
(9, 'Vandalism', '2024-05-10', 34.0522, -18.2437, 'Graffiti on public property', 'Open', 9, 9),
(10, 'Drug Trafficking', '2024-05-15', 34.0522, -18.2437, 'Illegal drug operation bust', 'Closed', 10, 10);


CREATE TABLE LawEnforcementAgency(
	AgencyID INT,
	AgencyName VARCHAR(50),
	Jurisdiction VARCHAR(50),
	ContactInformation VARCHAR(200),
	Officer VARCHAR(30),
	PRIMARY KEY(AgencyID)
);

-- Dummy data for LawEnforcementAgency table
INSERT INTO LawEnforcementAgency (AgencyID, AgencyName, Jurisdiction, ContactInformation, Officer)
VALUES
(1, 'City Police Department', 'Citywide', '123 Police Ave, Cityville, USA', 'Officer Smith'),
(2, 'County Sheriff Office', 'Countywide', '456 Sheriff St, Countytown, USA', 'Sheriff Johnson'),
(3, 'State Bureau of Investigation', 'Statewide', '789 SBI Blvd, Capital City, USA', 'Agent Anderson'),
(4, 'Federal Bureau of Investigation', 'National', '321 FBI Lane, Washington DC, USA', 'Agent Brown'),
(5, 'Drug Enforcement Administration', 'National', '654 DEA Road, Washington DC, USA', 'Agent Davis'),
(6, 'Immigration and Customs Enforcement', 'National', '987 ICE Drive, Washington DC, USA', 'Agent Miller'),
(7, 'Transportation Security Administration', 'National', '741 TSA Parkway, Washington DC, USA', 'Agent Wilson'),
(8, 'Secret Service', 'National', '852 Secret Way, Washington DC, USA', 'Agent Taylor'),
(9, 'Bureau of Firearms and Explosives', 'National', '369 ATF Street, Washington DC, USA', 'Agent Martinez'),
(10, 'United States Marshals Service', 'National', '159 Marshals Lane, Washington DC, USA', 'Marshal Garcia');

CREATE TABLE Officers(
	OfficerID INT,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	BadgeNumber INT,
	Rank VARCHAR(20),
	ContactInformation VARCHAR(200),
	AgencyID INT
	PRIMARY KEY (OfficerID),
	FOREIGN KEY (AgencyID) References LawEnforcementAgency(AgencyID) 
);

INSERT INTO Officers (OfficerID, FirstName, LastName, BadgeNumber, Rank, ContactInformation, AgencyID)
VALUES
(1, 'John', 'Smith', 12345, 'Police Officer', '123 Police Ave, Cityville, USA', 1),
(2, 'Lisa', 'Johnson', 23456, 'Deputy Sheriff', '456 Sheriff St, Countytown, USA', 2),
(3, 'Mark', 'Anderson', 34567, 'Special Agent', '789 SBI Blvd, Capital City, USA', 3),
(4, 'Jennifer', 'Brown', 45678, 'Special Agent', '321 FBI Lane, Washington DC, USA', 4),
(5, 'William', 'Davis', 56789, 'Special Agent', '654 DEA Road, Washington DC, USA', 5),
(6, 'Michelle', 'Miller', 67890, 'Special Agent', '987 ICE Drive, Washington DC, USA', 6),
(7, 'James', 'Wilson', 78901, 'Special Agent', '741 TSA Parkway, Washington DC, USA', 7),
(8, 'Stephanie', 'Taylor', 89012, 'Special Agent', '852 Secret Way, Washington DC, USA', 8),
(9, 'John', 'Martinez', 90123, 'Special Agent', '369 ATF Street, Washington DC, USA', 9),
(10, 'Emily', 'Garcia', 01234, 'Deputy Marshal', '159 Marshals Lane, Washington DC, USA', 10);


CREATE TABLE Evidence(
	EvidenceID INT,
	Description VARCHAR(200),
	LocationFound VARCHAR(50),
	IncidentID INT
	PRIMARY KEY (EvidenceID),
	FOREIGN KEY (IncidentID) References Incidents (IncidentID)
);

-- Dummy data for Evidence table
INSERT INTO Evidence (EvidenceID, Description, LocationFound, IncidentID)
VALUES
(1, 'Weapon - handgun', 'Near store counter', 1),
(2, 'Blood samples', 'Alley floor', 2),
(3, 'Surveillance footage', 'Department store cameras', 3),
(4, 'Security camera footage', 'Bar security system', 4),
(5, 'Fingerprints', 'Window sill', 5),
(6, 'Witness testimony', 'Park visitors', 6),
(7, 'Gasoline canister', 'Abandoned building', 7),
(8, 'Financial records', 'Bank statements', 8),
(9, 'Spray paint cans', 'Near vandalized property', 9),
(10, 'Drugs - cocaine', 'Underground hideout', 10);

CREATE TABLE Reports(
	ReportID INT,
	IncidentID INT,
	ReportingOfficer INT,
	ReportDate DATE,
	ReportDetails VARCHAR(500),
	Status VARCHAR(20),
	PRIMARY KEY (ReportID),
	FOREIGN KEY (IncidentID) References Incidents (IncidentID),
	FOREIGN KEY (ReportingOfficer) References Officers (OfficerID)
);

INSERT INTO Reports (ReportID, IncidentID, ReportingOfficer, ReportDate, ReportDetails, Status)
VALUES
(1, 1, 1, '2024-04-02', 'Initial incident report filed', 'Draft'),
(2, 2, 2, '2024-04-06', 'Crime scene investigation report', 'Finalized'),
(3, 3, 3, '2024-04-11', 'Suspect apprehension report', 'Finalized'),
(4, 4, 4, '2024-04-16', 'Witness interviews report', 'Draft'),
(5, 5, 5, '2024-04-21', 'Evidence collection report', 'Finalized'),
(6, 6, 6, '2024-04-26', 'Child recovery report', 'Finalized'),
(7, 7, 7, '2024-05-01', 'Arson investigation report', 'Draft'),
(8, 8, 8, '2024-05-06', 'Financial fraud report', 'Finalized'),
(9, 9, 9, '2024-05-11', 'Vandalism incident report', 'Draft'),
(10, 10, 10, '2024-05-16', 'Drug trafficking bust report', 'Finalized');

select * from Incidents;
select * from Victims;
select * from Suspects;
select * from LawEnforcementAgency;
select * from Officers;
select * from Evidence;
select * from Reports;












