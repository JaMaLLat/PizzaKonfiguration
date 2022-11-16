
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/02/2022 00:09:27
-- Generated from EDMX file: C:\Schule\Klassen Projekt1\PizzaKonfApp\PizzaKonfApp\PizzaKonfApp\DbPizzaKonf.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DbPizzaconf];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__Fisch__ZutatenID__33DFA290]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Fisch] DROP CONSTRAINT [FK__Fisch__ZutatenID__33DFA290];
GO
IF OBJECT_ID(N'[dbo].[FK__Fleisch__Zutaten__2E26C93A]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Fleisch] DROP CONSTRAINT [FK__Fleisch__Zutaten__2E26C93A];
GO
IF OBJECT_ID(N'[dbo].[FK__Pizza__RechnungI__3C69FB99]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pizza] DROP CONSTRAINT [FK__Pizza__RechnungI__3C69FB99];
GO
IF OBJECT_ID(N'[DbPizzaconfModelStoreContainer].[FK__Pizza_Zut__Pizza__249D5F00]', 'F') IS NOT NULL
    ALTER TABLE [DbPizzaconfModelStoreContainer].[Pizza_Zutaten] DROP CONSTRAINT [FK__Pizza_Zut__Pizza__249D5F00];
GO
IF OBJECT_ID(N'[DbPizzaconfModelStoreContainer].[FK__Pizza_Zut__Zutat__23A93AC7]', 'F') IS NOT NULL
    ALTER TABLE [DbPizzaconfModelStoreContainer].[Pizza_Zutaten] DROP CONSTRAINT [FK__Pizza_Zut__Zutat__23A93AC7];
GO
IF OBJECT_ID(N'[dbo].[FK__Pizzasoße__Zutat__2B4A5C8F]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pizzasoße] DROP CONSTRAINT [FK__Pizzasoße__Zutat__2B4A5C8F];
GO
IF OBJECT_ID(N'[dbo].[FK__Teig__ZutatenID__286DEFE4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Teig] DROP CONSTRAINT [FK__Teig__ZutatenID__286DEFE4];
GO
IF OBJECT_ID(N'[dbo].[FK__Vegetaris__Zutat__310335E5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Vegetarische] DROP CONSTRAINT [FK__Vegetaris__Zutat__310335E5];
GO
IF OBJECT_ID(N'[dbo].[FK__Zutaten__PizzaID__3F466844]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Zutaten] DROP CONSTRAINT [FK__Zutaten__PizzaID__3F466844];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Fisch]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Fisch];
GO
IF OBJECT_ID(N'[dbo].[Fleisch]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Fleisch];
GO
IF OBJECT_ID(N'[dbo].[Pizza]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pizza];
GO
IF OBJECT_ID(N'[dbo].[Pizzasoße]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pizzasoße];
GO
IF OBJECT_ID(N'[dbo].[Rechnung]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Rechnung];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Teig]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Teig];
GO
IF OBJECT_ID(N'[dbo].[Vegetarische]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Vegetarische];
GO
IF OBJECT_ID(N'[dbo].[Zutaten]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Zutaten];
GO
IF OBJECT_ID(N'[DbPizzaconfModelStoreContainer].[Pizza_Zutaten]', 'U') IS NOT NULL
    DROP TABLE [DbPizzaconfModelStoreContainer].[Pizza_Zutaten];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Fisches'
CREATE TABLE [dbo].[Fisches] (
    [Sort] varchar(50)  NOT NULL,
    [ZutatenArtID] int  NULL,
    [Preis] decimal(19,4)  NULL,
    [ZutatenID] int  NULL
);
GO

-- Creating table 'Fleisches'
CREATE TABLE [dbo].[Fleisches] (
    [Sort] varchar(50)  NOT NULL,
    [ZutatenArtID] int  NULL,
    [Preis] decimal(19,4)  NULL,
    [ZutatenID] int  NULL
);
GO

-- Creating table 'Pizzas'
CREATE TABLE [dbo].[Pizzas] (
    [PizzaID] int IDENTITY(1,1) NOT NULL,
    [RechnungID] int  NULL,
    [ZutatenID] int  NULL,
    [Große] float  NOT NULL,
    [Beschreibung] varchar(2000)  NOT NULL,
    [MENGE] int  NOT NULL
);
GO

-- Creating table 'Pizzasoße'
CREATE TABLE [dbo].[Pizzasoße] (
    [Sort] varchar(50)  NOT NULL,
    [ZutatenArtID] int  NULL,
    [Preis] decimal(19,4)  NULL,
    [ZutatenID] int  NULL
);
GO

-- Creating table 'Rechnungs'
CREATE TABLE [dbo].[Rechnungs] (
    [RechnungID] int IDENTITY(1,1) NOT NULL,
    [Preis] decimal(19,4)  NULL,
    [Summe] decimal(19,4)  NULL
);
GO

-- Creating table 'Teigs'
CREATE TABLE [dbo].[Teigs] (
    [Sort] varchar(50)  NOT NULL,
    [ZutatenArtID] int  NULL,
    [Preis] decimal(19,4)  NULL,
    [ZutatenID] int  NULL
);
GO

-- Creating table 'Vegetarisches'
CREATE TABLE [dbo].[Vegetarisches] (
    [Sort] varchar(50)  NOT NULL,
    [ZutatenArtID] int  NULL,
    [Preis] decimal(19,4)  NULL,
    [ZutatenID] int  NULL
);
GO

-- Creating table 'Zutatens'
CREATE TABLE [dbo].[Zutatens] (
    [ZutatenID] int IDENTITY(1,1) NOT NULL,
    [PizzaID] int  NULL,
    [ZutatenArtID] int  NULL,
    [Sort] varchar(50)  NOT NULL,
    [Menge] int  NULL,
    [Preis] decimal(19,4)  NULL
);
GO

-- Creating table 'ZutatenArts'
CREATE TABLE [dbo].[ZutatenArts] (
    [ZutatenArtID] int IDENTITY(1,1) NOT NULL,
    [ART] varchar(50)  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Pizza_Zutaten'
CREATE TABLE [dbo].[Pizza_Zutaten] (
    [Pizzas_PizzaID] int  NOT NULL,
    [Zutatens1_ZutatenID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Sort] in table 'Fisches'
ALTER TABLE [dbo].[Fisches]
ADD CONSTRAINT [PK_Fisches]
    PRIMARY KEY CLUSTERED ([Sort] ASC);
GO

-- Creating primary key on [Sort] in table 'Fleisches'
ALTER TABLE [dbo].[Fleisches]
ADD CONSTRAINT [PK_Fleisches]
    PRIMARY KEY CLUSTERED ([Sort] ASC);
GO

-- Creating primary key on [PizzaID] in table 'Pizzas'
ALTER TABLE [dbo].[Pizzas]
ADD CONSTRAINT [PK_Pizzas]
    PRIMARY KEY CLUSTERED ([PizzaID] ASC);
GO

-- Creating primary key on [Sort] in table 'Pizzasoße'
ALTER TABLE [dbo].[Pizzasoße]
ADD CONSTRAINT [PK_Pizzasoße]
    PRIMARY KEY CLUSTERED ([Sort] ASC);
GO

-- Creating primary key on [RechnungID] in table 'Rechnungs'
ALTER TABLE [dbo].[Rechnungs]
ADD CONSTRAINT [PK_Rechnungs]
    PRIMARY KEY CLUSTERED ([RechnungID] ASC);
GO

-- Creating primary key on [Sort] in table 'Teigs'
ALTER TABLE [dbo].[Teigs]
ADD CONSTRAINT [PK_Teigs]
    PRIMARY KEY CLUSTERED ([Sort] ASC);
GO

-- Creating primary key on [Sort] in table 'Vegetarisches'
ALTER TABLE [dbo].[Vegetarisches]
ADD CONSTRAINT [PK_Vegetarisches]
    PRIMARY KEY CLUSTERED ([Sort] ASC);
GO

-- Creating primary key on [ZutatenID] in table 'Zutatens'
ALTER TABLE [dbo].[Zutatens]
ADD CONSTRAINT [PK_Zutatens]
    PRIMARY KEY CLUSTERED ([ZutatenID] ASC);
GO

-- Creating primary key on [ZutatenArtID] in table 'ZutatenArts'
ALTER TABLE [dbo].[ZutatenArts]
ADD CONSTRAINT [PK_ZutatenArts]
    PRIMARY KEY CLUSTERED ([ZutatenArtID] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [Pizzas_PizzaID], [Zutatens1_ZutatenID] in table 'Pizza_Zutaten'
ALTER TABLE [dbo].[Pizza_Zutaten]
ADD CONSTRAINT [PK_Pizza_Zutaten]
    PRIMARY KEY CLUSTERED ([Pizzas_PizzaID], [Zutatens1_ZutatenID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ZutatenArtID] in table 'Fisches'
ALTER TABLE [dbo].[Fisches]
ADD CONSTRAINT [FK__Fisch__ZutatenAr__3C34F16F]
    FOREIGN KEY ([ZutatenArtID])
    REFERENCES [dbo].[ZutatenArts]
        ([ZutatenArtID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Fisch__ZutatenAr__3C34F16F'
CREATE INDEX [IX_FK__Fisch__ZutatenAr__3C34F16F]
ON [dbo].[Fisches]
    ([ZutatenArtID]);
GO

-- Creating foreign key on [ZutatenArtID] in table 'Fleisches'
ALTER TABLE [dbo].[Fleisches]
ADD CONSTRAINT [FK__Fleisch__Zutaten__367C1819]
    FOREIGN KEY ([ZutatenArtID])
    REFERENCES [dbo].[ZutatenArts]
        ([ZutatenArtID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Fleisch__Zutaten__367C1819'
CREATE INDEX [IX_FK__Fleisch__Zutaten__367C1819]
ON [dbo].[Fleisches]
    ([ZutatenArtID]);
GO

-- Creating foreign key on [RechnungID] in table 'Pizzas'
ALTER TABLE [dbo].[Pizzas]
ADD CONSTRAINT [FK__Pizza__RechnungI__3C69FB99]
    FOREIGN KEY ([RechnungID])
    REFERENCES [dbo].[Rechnungs]
        ([RechnungID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Pizza__RechnungI__3C69FB99'
CREATE INDEX [IX_FK__Pizza__RechnungI__3C69FB99]
ON [dbo].[Pizzas]
    ([RechnungID]);
GO

-- Creating foreign key on [PizzaID] in table 'Zutatens'
ALTER TABLE [dbo].[Zutatens]
ADD CONSTRAINT [FK__Zutaten__PizzaID__5441852A]
    FOREIGN KEY ([PizzaID])
    REFERENCES [dbo].[Pizzas]
        ([PizzaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Zutaten__PizzaID__5441852A'
CREATE INDEX [IX_FK__Zutaten__PizzaID__5441852A]
ON [dbo].[Zutatens]
    ([PizzaID]);
GO

-- Creating foreign key on [ZutatenArtID] in table 'Pizzasoße'
ALTER TABLE [dbo].[Pizzasoße]
ADD CONSTRAINT [FK__Pizzasoße__Zutat__339FAB6E]
    FOREIGN KEY ([ZutatenArtID])
    REFERENCES [dbo].[ZutatenArts]
        ([ZutatenArtID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Pizzasoße__Zutat__339FAB6E'
CREATE INDEX [IX_FK__Pizzasoße__Zutat__339FAB6E]
ON [dbo].[Pizzasoße]
    ([ZutatenArtID]);
GO

-- Creating foreign key on [ZutatenArtID] in table 'Teigs'
ALTER TABLE [dbo].[Teigs]
ADD CONSTRAINT [FK__Teig__ZutatenArt__30C33EC3]
    FOREIGN KEY ([ZutatenArtID])
    REFERENCES [dbo].[ZutatenArts]
        ([ZutatenArtID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Teig__ZutatenArt__30C33EC3'
CREATE INDEX [IX_FK__Teig__ZutatenArt__30C33EC3]
ON [dbo].[Teigs]
    ([ZutatenArtID]);
GO

-- Creating foreign key on [ZutatenArtID] in table 'Vegetarisches'
ALTER TABLE [dbo].[Vegetarisches]
ADD CONSTRAINT [FK__Vegetaris__Zutat__395884C4]
    FOREIGN KEY ([ZutatenArtID])
    REFERENCES [dbo].[ZutatenArts]
        ([ZutatenArtID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Vegetaris__Zutat__395884C4'
CREATE INDEX [IX_FK__Vegetaris__Zutat__395884C4]
ON [dbo].[Vegetarisches]
    ([ZutatenArtID]);
GO

-- Creating foreign key on [ZutatenArtID] in table 'Zutatens'
ALTER TABLE [dbo].[Zutatens]
ADD CONSTRAINT [FK__Zutaten__Zutaten__5535A963]
    FOREIGN KEY ([ZutatenArtID])
    REFERENCES [dbo].[ZutatenArts]
        ([ZutatenArtID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Zutaten__Zutaten__5535A963'
CREATE INDEX [IX_FK__Zutaten__Zutaten__5535A963]
ON [dbo].[Zutatens]
    ([ZutatenArtID]);
GO

-- Creating foreign key on [Pizzas_PizzaID] in table 'Pizza_Zutaten'
ALTER TABLE [dbo].[Pizza_Zutaten]
ADD CONSTRAINT [FK_Pizza_Zutaten_Pizza]
    FOREIGN KEY ([Pizzas_PizzaID])
    REFERENCES [dbo].[Pizzas]
        ([PizzaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Zutatens1_ZutatenID] in table 'Pizza_Zutaten'
ALTER TABLE [dbo].[Pizza_Zutaten]
ADD CONSTRAINT [FK_Pizza_Zutaten_Zutaten]
    FOREIGN KEY ([Zutatens1_ZutatenID])
    REFERENCES [dbo].[Zutatens]
        ([ZutatenID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Pizza_Zutaten_Zutaten'
CREATE INDEX [IX_FK_Pizza_Zutaten_Zutaten]
ON [dbo].[Pizza_Zutaten]
    ([Zutatens1_ZutatenID]);
GO

-- Creating foreign key on [ZutatenID] in table 'Fisches'
ALTER TABLE [dbo].[Fisches]
ADD CONSTRAINT [FK__Fisch__ZutatenID__33DFA290]
    FOREIGN KEY ([ZutatenID])
    REFERENCES [dbo].[Zutatens]
        ([ZutatenID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Fisch__ZutatenID__33DFA290'
CREATE INDEX [IX_FK__Fisch__ZutatenID__33DFA290]
ON [dbo].[Fisches]
    ([ZutatenID]);
GO

-- Creating foreign key on [ZutatenID] in table 'Fleisches'
ALTER TABLE [dbo].[Fleisches]
ADD CONSTRAINT [FK__Fleisch__Zutaten__2E26C93A]
    FOREIGN KEY ([ZutatenID])
    REFERENCES [dbo].[Zutatens]
        ([ZutatenID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Fleisch__Zutaten__2E26C93A'
CREATE INDEX [IX_FK__Fleisch__Zutaten__2E26C93A]
ON [dbo].[Fleisches]
    ([ZutatenID]);
GO

-- Creating foreign key on [ZutatenID] in table 'Pizzasoße'
ALTER TABLE [dbo].[Pizzasoße]
ADD CONSTRAINT [FK__Pizzasoße__Zutat__2B4A5C8F]
    FOREIGN KEY ([ZutatenID])
    REFERENCES [dbo].[Zutatens]
        ([ZutatenID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Pizzasoße__Zutat__2B4A5C8F'
CREATE INDEX [IX_FK__Pizzasoße__Zutat__2B4A5C8F]
ON [dbo].[Pizzasoße]
    ([ZutatenID]);
GO

-- Creating foreign key on [ZutatenID] in table 'Teigs'
ALTER TABLE [dbo].[Teigs]
ADD CONSTRAINT [FK__Teig__ZutatenID__286DEFE4]
    FOREIGN KEY ([ZutatenID])
    REFERENCES [dbo].[Zutatens]
        ([ZutatenID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Teig__ZutatenID__286DEFE4'
CREATE INDEX [IX_FK__Teig__ZutatenID__286DEFE4]
ON [dbo].[Teigs]
    ([ZutatenID]);
GO

-- Creating foreign key on [ZutatenID] in table 'Vegetarisches'
ALTER TABLE [dbo].[Vegetarisches]
ADD CONSTRAINT [FK__Vegetaris__Zutat__310335E5]
    FOREIGN KEY ([ZutatenID])
    REFERENCES [dbo].[Zutatens]
        ([ZutatenID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Vegetaris__Zutat__310335E5'
CREATE INDEX [IX_FK__Vegetaris__Zutat__310335E5]
ON [dbo].[Vegetarisches]
    ([ZutatenID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------