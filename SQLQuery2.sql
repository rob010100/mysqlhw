--Robert Hedrick
USE ComputerInventory
--Table Creation Question 1-3

CREATE TABLE EMPLOYEE (
EmployeeNumber				Int				NOT NULL IDENTITY (10,1),
FirstName					Varchar(25)		NOT NULL,
LastName					Varchar(25)		NOT NULL,
Department					Varchar(35)		NULL DEFAULT 'Human Resources',
Position					Varchar(35)		NULL,
OfficePhone					Char(12)		NULL,
EmailAddress				Varchar(100)	NULL,
CONSTRAINT				EmployeePK			PRIMARY KEY(EmployeeNumber),
);

CREATE TABLE COMPUTER (
SerialNumber				Int				NOT NULL,
Make						Char(12)		NOT NULL,
Model						Char(24)		NOT NULL,
ProcessorType				Char(24)		NOT NULL,
MainMemory					Char(15)		NOT NULL,
DiskSize					Char(15)		NOT NULL,
EmployeeNumber				Int				NOT NULL,
CONSTRAINT				ComputerPK			PRIMARY KEY(SerialNumber),
CONSTRAINT				EmployeeFK			FOREIGN KEY(EmployeeNumber)
							REFERENCES EMPLOYEE(EmployeeNumber)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION,
CONSTRAINT				MakeValues			CHECK
						(Make IN 
						('Dell', 'HP')),
);

--Data Insertion Question 4-7

--Employee Data

INSERT INTO EMPLOYEE VALUES
		('Mary', 'Jacobs', 'Administration', 'CEO', '360-285-8110', 'Mary_Jacobs@WP.com');
INSERT INTO EMPLOYEE VALUES
		('Rosalie', 'Jackson', 'Administration', 'Admin Assistant', '360-285-8120', 'Rosalie.Jackson@WP.com');
INSERT INTO EMPLOYEE VALUES
		('Richard', 'Bandalone', 'Legal', 'Attorney', '360-285-8210', 'Richard.Bandalone@WP.com');
INSERT INTO EMPLOYEE VALUES
		('George', 'Smith', 'Human Resources', 'HR3', '360-285-8310', 'George.Smith@WP.com');


--Computer Data

INSERT INTO COMPUTER VALUES
		('6541001', 'Dell', 'OptiPlex 7060', 'Intel', '32.0 GBytes', '2.0 TBytes', '10');
INSERT INTO COMPUTER VALUES
		('6541002', 'Dell', 'OptiPlex 7060', 'AMD', '32.0 GBytes', '2.0 TBytes', '10');
INSERT INTO COMPUTER VALUES
		('6541003', 'Dell', 'OptiPlex 7060', 'AMD', '32.0 GBytes', '2.0 TBytes', '13');
INSERT INTO COMPUTER VALUES
		('9871234', 'HP', 'ProDesk 600 G5', 'Intel', '16.0 GBytes', '1.0 TBytes', '10');
INSERT INTO COMPUTER VALUES
		('9871235', 'HP', 'ProDesk 600 G5', 'Intel', '16.0 GBytes', '1.0 TBytes', '11');
INSERT INTO COMPUTER VALUES
		('9871236', 'HP', 'ProDesk 600 G5', 'Intel', '16.0 GBytes', '1.0 TBytes', '12');
INSERT INTO COMPUTER VALUES
		('1000', 'Dell', 'Pro', 'Intel', '16 GBytes', '2.0 TBytes', '12');




UPDATE COMPUTER
	SET EmployeeNumber = '13'
	WHERE SerialNumber = '9871234';

DELETE FROM COMPUTER
	WHERE SerialNumber = 1000

	


SELECT * FROM EMPLOYEE;

SELECT * FROM COMPUTER;



