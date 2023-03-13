/* ************************************************************************************* */
/* This logic checks to determine if database exists                                     */
/* Database is dropped if it exists                                                      */
/* Database is not droppped if it does not exist                                         */
/* ************************************************************************************* */

IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'CityHockeyAssociation')
BEGIN
DROP DATABASE [CityHockeyAssociation];
SELECT 'Database CityHockeyAssociation present and dropped';
END
ELSE
BEGIN
SELECT 'Database CityHockeyAssociation not present and not dropped';
END;
GO

/* ************************************************************************************* */
/* This logic checks to determine if database does not exist                             */
/* Database is created if it does not exist                                              */
/* Database is not created again if it does exist                                        */
/* ************************************************************************************* */

IF NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = 'CityHockeyAssociation')
BEGIN
CREATE DATABASE [CityHockeyAssociation];
SELECT 'Database CityHockeyAssociation not present and created';
END
ELSE
BEGIN
SELECT 'Database CityHockeyAssociation present and not created again';
END;
GO

/* ************************************************************************************* */
