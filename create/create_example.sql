USE northwind;

CREATE TABLE advertisements (
AdId int NOT NULL,
Title varchar(50) NOT NULL,
MagicCode varchar(9),
PercentOff float NOT NULL,
PRIMARY KEY(AdId)
);


CREATE TABLE advertisements (
AdId int NOT NULL AUTO_INCREMENT,
Title varchar(50) NOT NULL,
MagicCode varchar(9),
PercentOff float NOT NULL,
PRIMARY KEY(AdId)
);