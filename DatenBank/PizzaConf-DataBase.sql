if DB_ID('DbPizzaconf') is NOT null 
DROP DATABASE DbPizzaconf
CREATE DATABASE DbPizzaconf
GO


USE DbPizzaconf
GO


IF OBJECT_ID('Pizza') IS NULL 
CREATE TABLE Pizza 
(
PizzaID INT NOT NULL IDENTITY(1,1) ,
Groﬂe FLOAT NOT NULL ,
Beschreibung VARCHAR(2000) NOT NULL ,
MENGE INT NOT NULL ,
PRIMARY KEY (PizzaID),
)
GO
IF OBJECT_ID('Zutaten') IS NOT NULL
DROP TABLE Zutaten 
CREATE TABLE Zutaten
(
 ZutatenID INT NOT NULL IDENTITY(1,1),
 Sort VARCHAR(50) NOT NULL ,
 Menge INT ,
 Preis MONEY ,
 PRIMARY KEY (ZutatenID),
)
GO


IF OBJECT_ID('ZutatenArt') IS NOT NULL
DROP TABLE ZutatenArt 
CREATE TABLE ZutatenArt
(
 ZutatenArtID INT NOT NULL IDENTITY(1,1),
 ART VARCHAR(50) NOT NULL ,
 PRIMARY KEY (ZutatenArtID),
)
GO


IF OBJECT_ID('Rechnung') IS NOT NULL
DROP TABLE Rechnung 
CREATE TABLE Rechnung
(
 RechnungID INT NOT NULL IDENTITY(1,1),
 Preis MONEY ,
 PRIMARY KEY (RechnungID)

)
GO

IF OBJECT_ID('Teig') IS NOT NULL
DROP TABLE Teig 
CREATE TABLE Teig
(
 Sort VARCHAR(50) NOT NULL ,
 Preis MONEY ,
 PRIMARY KEY (Sort),
)

INSERT INTO Teig ( Sort , Preis) VALUES
('Dunkel' , 0.50) ,
('Weizen' , 0.40) 
GO

IF OBJECT_ID('Pizzasoﬂe') IS NOT NULL
DROP TABLE Pizzasoﬂe 
CREATE TABLE Pizzasoﬂe
(
 Sort VARCHAR(50) NOT NULL ,
 Preis MONEY ,
 PRIMARY KEY (Sort),
)

INSERT INTO Pizzasoﬂe ( Sort , Preis) VALUES
('Tomatensoﬂe' , 0.30) ,
('Barbecuesoﬂe' , 0.50) ,
('CrÈme Fraiche' , 0.60) 
GO

IF OBJECT_ID('Fleisch') IS NOT NULL
DROP TABLE Fleisch 
CREATE TABLE Fleisch
(
 Sort VARCHAR(50) NOT NULL ,
 Preis MONEY ,
 PRIMARY KEY (Sort),
)

INSERT INTO Fleisch ( Sort , Preis) VALUES
('Salami' , 0.45) ,
('Schinken' , 0.45) ,
('Hackfleisch' , 0.60) 
GO


IF OBJECT_ID('Vegetarische') IS NOT NULL
DROP TABLE Vegetarische 
CREATE TABLE Vegetarische
(
 Sort VARCHAR(50) NOT NULL ,
 Preis MONEY ,
 PRIMARY KEY (Sort),
)
INSERT INTO Vegetarische ( Sort , Preis) VALUES
('Ananas' , 0.15) ,
('Brokkoli' , 0.20) ,
('Paprika' , 0.30) ,
('Knoblauch' , 0.20) ,
('Oliven' , 0.20) 

GO


IF OBJECT_ID('Fisch ') IS NOT NULL
DROP TABLE Fisch  
CREATE TABLE Fisch 
(
 Sort VARCHAR(50) NOT NULL ,
 Preis MONEY ,
 PRIMARY KEY (Sort)
)
go
INSERT INTO Fisch (Sort, Preis) VALUES
('Thunfisch', 0.40) ,
('Sardellen', 0.20) 
GO
select * from Fisch

