/*
Created		14/05/2019
Modified		14/05/2019
Project		
Model		
Company		
Author		
Version		
Database		mySQL 5 
*/
DROP DATABASE IF EXISTS BD_GUERREROS;
CREATE DATABASE BD_GUERREROS;
USE BD_GUERREROS;

drop table IF EXISTS LOCALIZACION;
drop table IF EXISTS CLAN;
drop table IF EXISTS GUERRERO;


Create table GUERRERO (
	ID_GUERRERO Char(1) NOT NULL,
	ID_CLAN Char(1) NOT NULL,
	NOMBRE_GUERRERO Varchar(20) NOT NULL,
	EDAD Int NOT NULL,
 Primary Key (ID_GUERRERO)) ENGINE = MyISAM;

Create table CLAN (
	ID_CLAN Char(1) NOT NULL,
	NOMBRE_CLAN Varchar(20) NOT NULL,
	PAIS Char(5) NOT NULL,
 Primary Key (ID_CLAN)) ENGINE = MyISAM;

Create table LOCALIZACION (
	PAIS Char(5) NOT NULL,
	CONTINENTE Char(20) NOT NULL,
 Primary Key (PAIS)) ENGINE = MyISAM;


Alter table GUERRERO add Foreign Key (ID_CLAN) references CLAN (ID_CLAN) on delete  CASCADE on update  CASCADE;
Alter table CLAN add Foreign Key (PAIS) references LOCALIZACION (PAIS) on delete  CASCADE on update  CASCADE;


/* Users permissions */


