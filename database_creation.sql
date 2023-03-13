/* ************************************************************************************* */
/* This makes this database the default for future queries                               */
/* ************************************************************************************* */
USE MASTER; 
/* ************************************************************************************* */
GO

/* ************************************************************************************* */
/* This drops database if it exists                                                      */
/* ************************************************************************************* */
DROP DATABASE IF EXISTS CityHockeyAssociation; 
GO

/* ************************************************************************************* */

/* ************************************************************************************* */
/* This creates database                                                                 */
/* ************************************************************************************* */
CREATE DATABASE [CityHockeyAssociation];
GO
/* ************************************************************************************* */

/* ************************************************************************************* */
/* This makes this database the default for future queries                               */
/* ************************************************************************************* */
USE CityHockeyAssociation;
GO
/* ************************************************************************************* */

/* ************************************************************************************* */
/* This drops tables if they exist                                                       */
/* NOTE: - tblCity, tblCoaches, tblProducts, tblOrder must be dropped in this order      */
/* due to Foreign Key references from other tables that need to be dropped first         */
/* - tables that are referenced with Foreign Keys must be created first                  */
/* since they are required to create the tables that reference them                      */
/* ************************************************************************************* */

DROP TABLE IF EXISTS tblRecPlayers;
GO
DROP TABLE IF EXISTS tblCompPlayers;
GO
DROP TABLE IF EXISTS tblTeams;
GO
DROP TABLE IF EXISTS tblTeamRoster;
GO
DROP TABLE IF EXISTS tblOrderedItems;
GO

DROP TABLE IF EXISTS tblCity;
GO
DROP TABLE IF EXISTS tblCoaches;
GO
DROP TABLE IF EXISTS tblProducts;
GO
DROP TABLE IF EXISTS tblOrder;
GO

/* ************************************************************************************* */


/* ************************************************************************************* */
/* This creates this table                                                               */
/* ************************************************************************************* */
 
CREATE TABLE tblCity (
	CityID NCHAR(10) PRIMARY KEY,
	CityName NVARCHAR(50));
GO

/* ************************************************************************************* */
/* This inserts initial data into this table                                             */
/* ************************************************************************************* */
 
INSERT INTO tblCity VALUES ('0000000001','Whitby');
GO
INSERT INTO tblCity VALUES ('0000000002','Oshawa');
GO
INSERT INTO tblCity VALUES ('0000000003','Bowmanville');
GO
INSERT INTO tblCity VALUES ('0000000004','Courtice');
GO
INSERT INTO tblCity VALUES ('0000000005','Ajax');
GO
INSERT INTO tblCity VALUES ('0000000006','Pickering');
GO
INSERT INTO tblCity VALUES ('0000000007','Uxbridge');
GO
INSERT INTO tblCity VALUES ('0000000008','Port Perry');

/* ************************************************************************************* */
/* This creates this table                                                               */
/* ************************************************************************************* */
 
CREATE TABLE tblRecPlayers (
	PlayerID NCHAR(5) NOT NULL UNIQUE,
	PlayerFirst NVARCHAR(30),
	PlayerLast NVARCHAR (30),
	PlayerBirthDate DATE,
	PlayerIsResident BIT,
	FeesPaid NUMERIC(15,2),
	PRIMARY KEY (PlayerID));
GO

/* ************************************************************************************* */
/* This inserts initial data into this table                                             */
/* ************************************************************************************* */
 
INSERT INTO tblRecPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('10001','John','Smith','1991-12-12 00:00:00',0,125.00);
GO
INSERT INTO tblRecPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('10002','Mary','Smith','1990-01-02 00:00:00',0,125.00);
GO
INSERT INTO tblRecPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('10003','Andrew','Smith','1986-08-08 00:00:00',0,125.00);
GO
INSERT INTO tblRecPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('10004','Tim','Brown','1991-12-13 00:00:00',1,125.00);
GO
INSERT INTO tblRecPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('10005','Joanne','Brown','1990-03-01 00:00:00',1,50.00);
GO
INSERT INTO tblRecPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('10006','Angela','Ashton','1990-02-02 00:00:00',0,50.00);
GO
INSERT INTO tblRecPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('10007','John','Boddeveld Jr.','1990-10-10 00:00:00',0,125.00);
GO
INSERT INTO tblRecPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('10008','Chris','Taylor','1987-08-08 00:00:00',0,125.00);
GO
INSERT INTO tblRecPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('10009','Martin','Taylor','1990-09-09 00:00:00',1,0.00);
GO
INSERT INTO tblRecPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('10010','Amber','Taylor','1991-04-04 00:00:00',0,125.00);
GO
INSERT INTO tblRecPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('10011','Annie','White','1991-05-05 00:00:00',1,125.00);
GO
INSERT INTO tblRecPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('10012','Bobby','White','1989-06-30 00:00:00',1,50.00);
GO
INSERT INTO tblRecPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('10013','Jackie','Lerner','1993-07-01 00:00:00',1,50.00);
GO

/* ************************************************************************************* */
/* This creates this table                                                               */
/* ************************************************************************************* */
 	
CREATE TABLE tblCompPlayers (
	PlayerID NCHAR(5) NOT NULL UNIQUE,
	PlayerFirst NVARCHAR(30),
	PlayerLast NVARCHAR (30),
	PlayerBirthDate DATE,
	PlayerIsResident BIT,
	FeesPaid NUMERIC(15,2),
	PRIMARY KEY (PlayerID));
GO

/* ************************************************************************************* */
/* This inserts initial data into this table                                             */
/* ************************************************************************************* */
 
INSERT INTO tblCompPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('20001','Tony','Green','1991-12-12 00:00:00',0,300.00);
GO
INSERT INTO tblCompPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('20002','Mary','Green','1990-10-01 00:00:00',0,300.00);
GO
INSERT INTO tblCompPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('20003','Barry','George','1990-11-11 00:00:00',0,0.00);
GO
INSERT INTO tblCompPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('20004','Mary','George','1998-04-04 00:00:00',0,0.00);
GO
INSERT INTO tblCompPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('20005','Allan','Griff','1990-05-06 00:00:00',1,300.00);
GO
INSERT INTO tblCompPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('20006','Anne','Griff','1992-04-01 00:00:00',1,300.00);
GO
INSERT INTO tblCompPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('20007','Adrianne','Griff','1994-03-03 00:00:00',1,100.00);
GO
INSERT INTO tblCompPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('20008','Andy','Huff','1996-05-09 00:00:00',0,300.00);
GO
INSERT INTO tblCompPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('20009','Barbara','Huff','1994-07-09 00:00:00',0,300.00);
GO
INSERT INTO tblCompPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('20010','Andrew','Jackson','1993-01-09 00:00:00',0,100.00);
GO
INSERT INTO tblCompPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('20011','Kaylie','Jackson','1991-09-01 00:00:00',1,100.00);
GO
INSERT INTO tblCompPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('20012','George','Lerner','1991-03-08 00:00:00',1,300.00);
GO
INSERT INTO tblCompPlayers(PlayerID,PlayerFirst,PlayerLast,PlayerBirthDate,PlayerIsResident,FeesPaid) 
VALUES ('20013','Jackie','Lerner','1993-07-01 00:00:00',1,300.00);
GO

/* ************************************************************************************* */
/* This creates this table                                                               */
/* ************************************************************************************* */
 
CREATE TABLE tblTeams (
	TeamID NCHAR(3) NOT NULL UNIQUE,
	TeamName NVARCHAR(30),
	TeamCoach CHAR(5),
	TeamIsRec BIT,
	PRIMARY KEY (TeamID));
GO

/* ************************************************************************************* */
/* This inserts initial data into this table                                             */
/* ************************************************************************************* */
 
INSERT INTO tblTeams(TeamID,TeamName,TeamCoach,TeamIsRec) VALUES ('CB1','Canadiens','90001','0');
GO
INSERT INTO tblTeams(TeamID,TeamName,TeamCoach,TeamIsRec) VALUES ('CG1','Avalanche','90003','0');
GO
INSERT INTO tblTeams(TeamID,TeamName,TeamCoach,TeamIsRec) VALUES ('RB1','Rangers','90001','1');
GO
INSERT INTO tblTeams(TeamID,TeamName,TeamCoach,TeamIsRec) VALUES ('RB2','Leafs','90002','1');
GO

/* ************************************************************************************* */
/* This creates this table                                                               */
/* ************************************************************************************* */
 
CREATE TABLE tblTeamRoster (
	TeamID NCHAR(3) NOT NULL,
	PlayerID NCHAR(5) NOT NULL,
	PRIMARY KEY (TeamID, PlayerID));
GO

/* ************************************************************************************* */
/* This inserts initial data into this table                                             */
/* ************************************************************************************* */
 
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('CB1','20001');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('CB1','20003');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('CB1','20005');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('CB1','20008');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('CB1','20010');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('CB1','20012');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('CG1','10006');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('CG1','20002');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('CG1','20004');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('CG1','20006');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('CG1','20007');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('CG1','20009');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('CG1','20011');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('CG1','20013');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('RB1','10001');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('RB1','10003');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('RB1','10005');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('RB1','10010');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('RB1','10011');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('RB1','20001');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('RB1','20012');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('RB2','10004');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('RB2','10007');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('RB2','10008');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('RB2','10009');
GO
INSERT INTO tblTeamRoster(TeamID,PlayerID) VALUES ('RB2','10012');
GO

/* ************************************************************************************* */
/* This creates this table                                                               */
/* ************************************************************************************* */
 
CREATE TABLE tblCoaches (
	CoachID INT NOT NULL,
	CoachFirst NVARCHAR(30),
	CoachLast NVARCHAR(30),
	CoachAddress1 NVARCHAR(50),
	CoachAddress2 NVARCHAR(50),
	CoachCity NCHAR(10),
	CoachPostal NCHAR(6),
	PRIMARY KEY (CoachID),
	FOREIGN KEY (CoachCity) REFERENCES tblCity(CityID));
GO

/* ************************************************************************************* */
/* This inserts initial data into this table                                             */
/* ************************************************************************************* */
 	
INSERT INTO tblCoaches (CoachID,CoachFirst,CoachLast,CoachAddress1,CoachAddress2,CoachCity,CoachPostal) 
VALUES (90001,'John','Boddeveld Sr.','1000 Simcoe St. N.','','0000000004','L1H2L2');
GO
INSERT INTO tblCoaches (CoachID,CoachFirst,CoachLast,CoachAddress1,CoachAddress2,CoachCity,CoachPostal) 
VALUES (90002,'Mary','Warner','1200 Queen St. E.','Apt. 101','0000000001','L2J2K2');
GO
INSERT INTO tblCoaches (CoachID,CoachFirst,CoachLast,CoachAddress1,CoachAddress2,CoachCity,CoachPostal) 
VALUES (90003,'Joanne','Snider','345 King St. W.','','0000000001','L4J2R2');
GO
INSERT INTO tblCoaches (CoachID,CoachFirst,CoachLast,CoachAddress1,CoachAddress2,CoachCity,CoachPostal) 
VALUES (90004,'Bob','Fletcher','54 Park Rd. N','Apt. 23','0000000002','L7H2B2');
GO

/* ************************************************************************************* */
/* This creates this table                                                               */
/* ************************************************************************************* */
 
CREATE TABLE tblProducts (
	ProductID INT NOT NULL,
	ProductName NVARCHAR(70),
	ProductDescription NVARCHAR(255),
	MSRP MONEY,
	PRIMARY KEY (ProductID));
GO

/* ************************************************************************************* */
/* This inserts initial data into this table                                             */
/* ************************************************************************************* */
 
INSERT INTO tblProducts 
VALUES (1, 'Jersey - S', 'Small hockey jersey with supplied logo and number.', $120);
GO
INSERT INTO tblProducts 
VALUES (2, 'Jersey - M', 'Medium hockey jersey with supplied logo and number.', $120);
GO
INSERT INTO tblProducts 
VALUES (3, 'Jersey - L', 'Large hockey jersey with supplied logo and number.', $120);
GO
INSERT INTO tblProducts 
VALUES (4, 'Jersey - XL', 'Extra large hockey jersey with supplied logo and number.', $125);
GO
INSERT INTO tblProducts 
VALUES (5, 'Jersey - XXL', 'Double extra large hockey jersey with supplied logo and number.', $150);
GO
INSERT INTO tblProducts 
VALUES (6, 'Bucket of Pucks', 'Bucket of 50 blank pucks.', $100);
GO
INSERT INTO tblProducts 
VALUES (7, 'Puck Pack with Team Logo - 30', 'Small hockey jersey with supplied logo and number.', $115);
GO

/* ************************************************************************************* */
/* This creates this table                                                               */
/* ************************************************************************************* */
 
CREATE TABLE tblOrder (
	OrderID INT NOT NULL,
	OrderDate DATE NOT NULL,
	CustomerID INT NOT NULL,
	Fulfilled BIT,
	PRIMARY KEY (OrderID),
	FOREIGN KEY (CustomerID) REFERENCES tblCoaches(CoachID));
GO

/* ************************************************************************************* */
/* This inserts initial data into this table                                             */
/* ************************************************************************************* */
 
INSERT INTO tblOrder VALUES (1, '2018-06-18', 90001, 1);
GO
INSERT INTO tblOrder VALUES (2, '2019-06-17', 90001, 1);
GO
INSERT INTO tblOrder VALUES (3, '2020-06-21', 90001, 1);
GO
INSERT INTO tblOrder VALUES (4, '2021-06-20', 90001, 1);
GO
INSERT INTO tblOrder VALUES (5, '2022-06-25', 90001, 0);
GO
INSERT INTO tblOrder VALUES (6, '2018-06-18', 90002, 1);
GO
INSERT INTO tblOrder VALUES (7, '2022-05-17', 90002, 0);
GO
INSERT INTO tblOrder VALUES (8, '2020-06-21', 90003, 1);
GO
INSERT INTO tblOrder VALUES (9, '2022-06-14', 90003, 0);
GO
INSERT INTO tblOrder VALUES (10, '2022-06-25', 90004, 0);
GO

/* ************************************************************************************* */
/* This creates this table                                                               */
/* ************************************************************************************* */
 
CREATE TABLE tblOrderedItems (
	OrderID INT NOT NULL,
	ProductID INT NOT NULL,
	OrderedQuantity SMALLINT NOT NULL,
	PRIMARY KEY (OrderID, ProductID),
	FOREIGN KEY (OrderID) REFERENCES tblOrder(OrderID),
	FOREIGN KEY (ProductID) REFERENCES tblProducts(ProductID));
GO

/* ************************************************************************************* */
/* This inserts initial data into this table                                             */
/* ************************************************************************************* */
 
INSERT INTO tblOrderedItems VALUES (1, 7, 1);
GO
INSERT INTO tblOrderedItems VALUES (2, 6, 1);
GO
INSERT INTO tblOrderedItems VALUES (3, 6, 1);
GO
INSERT INTO tblOrderedItems VALUES (4, 4, 1);
GO
INSERT INTO tblOrderedItems VALUES (5, 3, 7);
GO
INSERT INTO tblOrderedItems VALUES (6, 2, 1);
GO
INSERT INTO tblOrderedItems VALUES (7, 1, 1);
GO
INSERT INTO tblOrderedItems VALUES (8, 6, 1);
GO
INSERT INTO tblOrderedItems VALUES (9, 6, 1);
GO
INSERT INTO tblOrderedItems VALUES (10, 6, 7);
GO