-- Active: 1727728842394@@127.0.0.1@3306@AmusementPark
DROP DATABASE IF EXISTS `AmusementPark`;

/*******************************************************************************
   Create database
********************************************************************************/
CREATE DATABASE `AmusementPark`;


USE `AmusementPark`;

/*******************************************************************************
   Create Tables
********************************************************************************/
CREATE TABLE `Attraction`
(
    `AttractionId` INT NOT NULL,
    `Name` VARCHAR(160) NOT NULL,
    `Type` VARCHAR(60) NOT NULL,
    `MinHeight` INT,
    `MaxCapacity` INT,
    `Status` VARCHAR(20) NOT NULL,
    CONSTRAINT `PK_Attraction` PRIMARY KEY (`AttractionId`)
);

CREATE TABLE `Visitor`
(
    `VisitorId` INT NOT NULL,
    `FirstName` VARCHAR(40) NOT NULL,
    `LastName` VARCHAR(40) NOT NULL,
    `BirthDate` DATETIME NOT NULL,
    `Email` VARCHAR(60),
    `Phone` VARCHAR(24),
    `Address` VARCHAR(70),
    `City` VARCHAR(40),
    `State` VARCHAR(40),
    `Country` VARCHAR(40),
    `PostalCode` VARCHAR(10),
    CONSTRAINT `PK_Visitor` PRIMARY KEY (`VisitorId`)
);

CREATE TABLE `Ticket`
(
    `TicketId` INT NOT NULL,
    `VisitorId` INT NOT NULL,
    `PurchaseDate` DATETIME NOT NULL,
    `TicketType` VARCHAR(40) NOT NULL,
    `Price` DECIMAL(10,2) NOT NULL,
    `ValidFrom` DATETIME NOT NULL,
    `ValidTo` DATETIME NOT NULL,
    CONSTRAINT `PK_Ticket` PRIMARY KEY (`TicketId`),
    CONSTRAINT `FK_Ticket_Visitor` FOREIGN KEY (`VisitorId`) REFERENCES `Visitor`(`VisitorId`)
);

CREATE TABLE `Employee`
(
    `EmployeeId` INT NOT NULL,
    `FirstName` VARCHAR(40) NOT NULL,
    `LastName` VARCHAR(40) NOT NULL,
    `JobTitle` VARCHAR(40),
    `HireDate` DATETIME,
    `Email` VARCHAR(60),
    `Phone` VARCHAR(24),
    `Address` VARCHAR(70),
    `City` VARCHAR(40),
    `State` VARCHAR(40),
    `Country` VARCHAR(40),
    `PostalCode` VARCHAR(10),
    CONSTRAINT `PK_Employee` PRIMARY KEY (`EmployeeId`)
);

CREATE TABLE `Maintenance`
(
    `MaintenanceId` INT NOT NULL,
    `AttractionId` INT NOT NULL,
    `EmployeeId` INT NOT NULL,
    `MaintenanceDate` DATETIME NOT NULL,
    `Details` VARCHAR(500),
    CONSTRAINT `PK_Maintenance` PRIMARY KEY (`MaintenanceId`),
    CONSTRAINT `FK_Maintenance_Attraction` FOREIGN KEY (`AttractionId`) REFERENCES `Attraction`(`AttractionId`),
    CONSTRAINT `FK_Maintenance_Employee` FOREIGN KEY (`EmployeeId`) REFERENCES `Employee`(`EmployeeId`)
);

CREATE TABLE `Visit`
(
    `VisitId` INT NOT NULL,
    `VisitorId` INT NOT NULL,
    `AttractionId` INT NOT NULL,
    `VisitDate` DATETIME NOT NULL,
    `Rating` INT CHECK (`Rating` >= 1 AND `Rating` <= 5),
    `Comment` VARCHAR(500),
    CONSTRAINT `PK_Visit` PRIMARY KEY (`VisitId`),
    CONSTRAINT `FK_Visit_Visitor` FOREIGN KEY (`VisitorId`) REFERENCES `Visitor`(`VisitorId`),
    CONSTRAINT `FK_Visit_Attraction` FOREIGN KEY (`AttractionId`) REFERENCES `Attraction`(`AttractionId`)
);

CREATE TABLE `Event`
(
    `EventId` INT NOT NULL,
    `Name` VARCHAR(120) NOT NULL,
    `Description` VARCHAR(500),
    `EventDate` DATETIME NOT NULL,
    `Price` DECIMAL(10,2),
    CONSTRAINT `PK_Event` PRIMARY KEY (`EventId`)
);

CREATE TABLE `EmployeeEvent`
(
    `EmployeeId` INT NOT NULL,
    `EventId` INT NOT NULL,
    CONSTRAINT `PK_EmployeeEvent` PRIMARY KEY (`EmployeeId`, `EventId`),
    CONSTRAINT `FK_EmployeeEvent_Employee` FOREIGN KEY (`EmployeeId`) REFERENCES `Employee`(`EmployeeId`),
    CONSTRAINT `FK_EmployeeEvent_Event` FOREIGN KEY (`EventId`) REFERENCES `Event`(`EventId`)
);

CREATE TABLE `VisitorEvent`
(
    `VisitorId` INT NOT NULL,
    `EventId` INT NOT NULL,
    `TicketId` INT NOT NULL,
    CONSTRAINT `PK_VisitorEvent` PRIMARY KEY (`VisitorId`, `EventId`, `TicketId`),
    CONSTRAINT `FK_VisitorEvent_Visitor` FOREIGN KEY (`VisitorId`) REFERENCES `Visitor`(`VisitorId`),
    CONSTRAINT `FK_VisitorEvent_Event` FOREIGN KEY (`EventId`) REFERENCES `Event`(`EventId`),
    CONSTRAINT `FK_VisitorEvent_Ticket` FOREIGN KEY (`TicketId`) REFERENCES `Ticket`(`TicketId`)
);

