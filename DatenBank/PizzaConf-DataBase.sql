if DB_ID('DbPizzaconfig') is NOT null 
DROP DATABASE DbPizzaconfig
CREATE DATABASE DbPizzaconfig
GO


USE DbPizzaconfig
GO

IF OBJECT_ID('Rechnung') IS NOT NULL
DROP TABLE Rechnung 
CREATE TABLE Rechnung
(
 RechnungID INT NOT NULL IDENTITY(1,1),
 Summe MONEY ,
 PRIMARY KEY (RechnungID)

)
GO

IF OBJECT_ID('Pizza') IS not NULL 
DROP TABLE Pizza 
CREATE TABLE Pizza 
(
PizzaID INT NOT NULL IDENTITY(1,1) ,
RechnungID INT ,
Groﬂe FLOAT NOT NULL ,
Beschreibung VARCHAR(2000) NOT NULL ,
MENGE INT NOT NULL ,
PRIMARY KEY (PizzaID),
FOREIGN KEY (RechnungID) REFERENCES Rechnung(RechnungID),
)

GO
IF OBJECT_ID('Zutaten') IS NOT NULL
DROP TABLE Zutaten 
CREATE TABLE Zutaten
(
 ZutatenID INT NOT NULL IDENTITY(1,1),
 PizzaID INT ,
 Sort VARCHAR(50) NOT NULL ,
 Menge INT ,
 PRIMARY KEY (ZutatenID),

)
INSERT INTO Zutaten ( Sort ) VALUES
('Dunkel'),
('Weis'),
('Tomatensoﬂe' ) ,
('Barbecuesoﬂe' ) ,
('CrÈme Fraiche' ) 
GO


IF OBJECT_ID('Pizza_Zutaten') IS NOT NULL
DROP TABLE Pizza_Zutaten 
CREATE TABLE Pizza_Zutaten
(
 ZutatenID INT NOT NULL ,
 PizzaID INT NOT NULL ,
 FOREIGN KEY (ZutatenID) REFERENCES Zutaten(ZutatenID),
 FOREIGN KEY (PizzaID) REFERENCES Pizza(PizzaID) 
)
GO





IF OBJECT_ID('Teig') IS NOT NULL
DROP TABLE Teig 
CREATE TABLE Teig
(
 Sort VARCHAR(50) NOT NULL , 
 ZutatenID INT IDENTITY(1 , 1)  ,
 Preis MONEY ,
 PRIMARY KEY (ZutatenID),
 FOREIGN KEY (ZutatenID) REFERENCES Zutaten(ZutatenID) 

)

INSERT INTO Teig ( Sort , ZutatenID  , Preis) VALUES
('Weis' , 0.30),
('Dunkel', 0.40)
GO

IF OBJECT_ID('Pizzasoﬂe') IS NOT NULL
DROP TABLE Pizzasoﬂe 
CREATE TABLE Pizzasoﬂe
(
 Sort VARCHAR(50) NOT NULL ,
 ZutatenID INT ,
 Preis MONEY ,
 PRIMARY KEY (Sort),
 FOREIGN KEY (ZutatenID) REFERENCES zutaten(ZutatenID)

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
 ZutatenID INT,
 Preis MONEY ,
 PRIMARY KEY (Sort),
 FOREIGN KEY (ZutatenID) REFERENCES Zutaten(ZutatenID)

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
 ZutatenID INT,
 Preis MONEY ,
 PRIMARY KEY (Sort),
 FOREIGN KEY (ZutatenID) REFERENCES Zutaten(ZutatenID)

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
 ZutatenID INT,
 Preis MONEY ,
 PRIMARY KEY (Sort),
 FOREIGN KEY (ZutatenID) REFERENCES Zutaten(ZutatenID) 

)
go
INSERT INTO Fisch (Sort, ZutatenID	, Preis) VALUES
('Thunfisch', 0.40) ,
('Sardellen', 0.20) 
GO

select * from Zutaten


