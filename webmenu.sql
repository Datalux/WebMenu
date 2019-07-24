# Create schemas

# Create tables
CREATE TABLE IF NOT EXISTS Ristorante
(
    idRistorante INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(30) NOT NULL,
    Indirizzo VARCHAR(30) NOT NULL,
    Città VARCHAR(30) NOT NULL,
    scadenzaAbbonamento DATE NOT NULL,
    PRIMARY KEY(idRistorante),
    INDEX(idRistorante)
);

CREATE TABLE IF NOT EXISTS Menu
(
    idMenu INT NOT NULL AUTO_INCREMENT,
    idRistorante INT NOT NULL,
    Nome VARCHAR(30) NOT NULL,
    Data DATE NOT NULL,
    PRIMARY KEY(idMenu),
    INDEX(idMenu)
);

CREATE TABLE IF NOT EXISTS Piatto
(
    idPiatto INT NOT NULL AUTO_INCREMENT,
    idMenu INT NOT NULL,
    Nome VARCHAR(30) NOT NULL,
    Categoria VARCHAR(30) NOT NULL,
    Prezzo FLOAT(24) NOT NULL,
    Visibile TINYINT(1) NOT NULL,
    PRIMARY KEY(idPiatto),
    INDEX(idPiatto)
);

CREATE TABLE IF NOT EXISTS Ingrediente
(
    idIngrediente INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(30) NOT NULL,
    Allergene TINYINT(1) NOT NULL,
    PRIMARY KEY(idIngrediente),
    INDEX(idIngrediente)
);

CREATE TABLE IF NOT EXISTS Ingredienti
(
    idIngrediente INT NOT NULL,
    idPiatto INT NOT NULL,
    PRIMARY KEY(idIngrediente, idPiatto)
);


# Create FKs
ALTER TABLE Menu
    ADD    FOREIGN KEY (idRistorante)
    REFERENCES Ristorante(idRistorante)
;
    
ALTER TABLE Piatto
    ADD    FOREIGN KEY (idMenu)
    REFERENCES Menu(idMenu)
;
    
ALTER TABLE Ingredienti
    ADD    FOREIGN KEY (idPiatto)
    REFERENCES Piatto(idPiatto)
;

ALTER TABLE Ingredienti
    ADD    FOREIGN KEY (idIngrediente)
    REFERENCES Ingrediente(idIngrediente)
;
    

# Add values on Ristorante
insert into Ristorante (Nome, Indirizzo, Città, scadenzaAbbonamento) values ("Il Paradiso della Pizza", "Via delle Vie 121", "Ragusa", "2019-10-09");
insert into Ristorante (Nome, Indirizzo, Città, scadenzaAbbonamento) values ("Trattoria da Peppe", "Via Cristoforo Colombo 5", "Milano", "2019-10-09");
insert into Ristorante (Nome, Indirizzo, Città, scadenzaAbbonamento) values ("La barchetta", "Viale Andrea Doria 12", "Marina di Ragusa", "2019-12-11");
insert into Ristorante (Nome, Indirizzo, Città, scadenzaAbbonamento) values ("Pizza in piazza", "Piazzale Michelangelo 1", "Roma", "2020-07-21");
insert into Ristorante (Nome, Indirizzo, Città, scadenzaAbbonamento) values ("Pesce e Carne", "Via Risorgimento 3", "Pisa", "2019-01-11");
insert into Ristorante (Nome, Indirizzo, Città, scadenzaAbbonamento) values ("Ristocarne", "Corso Verdi", "Catania", "2020-05-07");
insert into Ristorante (Nome, Indirizzo, Città, scadenzaAbbonamento) values ("Trattoria da Gino", "Via Giulio Cesare 301", "Milano", "2020-01-30");
insert into Ristorante (Nome, Indirizzo, Città, scadenzaAbbonamento) values ("Pesce e kebab", "Vicolo Corto 12", "Monopoli", "2019-11-06");
insert into Ristorante (Nome, Indirizzo, Città, scadenzaAbbonamento) values ("La lasagna", "Vicolo Stretto 2", "Monopoli", "2019-09-20");
insert into Ristorante (Nome, Indirizzo, Città, scadenzaAbbonamento) values ("La pizza veloce", "Via Roma 30", "Marina di Ragusa", "2019-12-18");


#Add values on Menu
INSERT INTO Menu ( idRistorante , Nome , Data ) VALUES (1, "Pizze", "2019-07-21");
INSERT INTO Menu ( idRistorante , Nome , Data ) VALUES (2, "Menù del giorno", "2019-07-21");
INSERT INTO Menu ( idRistorante , Nome , Data ) VALUES (3, "I nostri piatti", "2019-07-21");
INSERT INTO Menu ( idRistorante , Nome , Data ) VALUES (4, "Le nostre pizze", "2019-07-21");
INSERT INTO Menu ( idRistorante , Nome , Data ) VALUES (5, "Menu", "2019-07-21");
INSERT INTO Menu ( idRistorante , Nome , Data ) VALUES (6, "Piatti", "2019-07-21");
INSERT INTO Menu ( idRistorante , Nome , Data ) VALUES (7, "Menu turistico", "2019-07-21");
INSERT INTO Menu ( idRistorante , Nome , Data ) VALUES (8, "Offerte", "2019-07-21");
INSERT INTO Menu ( idRistorante , Nome , Data ) VALUES (9, "Il nostro menu", "2019-07-21");
INSERT INTO Menu ( idRistorante , Nome , Data ) VALUES (10, "Speedpizza", "2019-07-21");

#Add values on Piatto
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (1, "Margerita", "Pizza", 4.50, 1);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (1, "Capricciosa", "Pizza", 6.50, 1);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (1, "Rucola", "Pizza", 6.50, 1);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (1, "Norma", "Pizza", 6.00, 1);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (1, "Al crudo", "Pizza", 6.50, 1);

INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (2, "Pasta al sugo di pomodoro", "Primo", 8.00, 1);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (2, "Pasta alla norma", "Primo", 9.50, 1);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (2, "Vitello alla piasta", "Secondo", 13.00, 1);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (2, "Polpetta di cavallo", "Secondo", 4.50, 1);

INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (3, "Pasta alle vongole", "Primo", 15.00, 1);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (3, "Filetto di tonno", "Secondo", 18.00, 0);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (3, "Filetto di pesce spada", "Secondo", 21.00, 1);

INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (4, "Margherita", "Pizza", 4.00, 1);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (4, "007", "Pizza", 6.50, 1);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (4, "Ai funghi", "Pizza", 5.00, 1);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (4, "Al cavallo", "Pizza", 6.50, 0);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (4, "Norma", "Pizza", 5.00, 1);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (4, "Specialità", "Pizza", 7.50, 1);
INSERT INTO Piatto ( idMenu , Nome , Categoria , Prezzo , Visibile ) VALUES (4, "Patapizza", "Pizza", 5.50, 1);


#Add values on Ingrediente
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Farina", 1);					
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Pomodoro", 0);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Mozzarella", 1);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Prosciutto cotto", 1);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Prosciutto crudo", 1);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Pane", 1);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Pasta", 1);		
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Melanzana", 0);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Cetriolo", 0);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Maionese", 1);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Noci", 1);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Rucola", 0);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Funghi", 1);		
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Salsiccia", 1);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Formaggio", 1);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Piselli", 1);		
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Pesto", 0);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Nero di seppia", 0);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Pesce spada", 0);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Vongole", 1);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Tonno", 0);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Orata", 0);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Gamberetti", 1);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Carne di vitello", 0);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Carne di cavallo", 0);		
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Carne di tacchino", 0);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Carne di pollo", 0);	
INSERT INTO Ingrediente ( Nome , Allergene ) VALUES ("Patatine fritte", 0);	


#Add values on Ingredienti
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (1, 1);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (2, 1);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (3, 1);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (1, 2);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (2, 2);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (3, 2);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (4, 2);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (16, 2);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (1, 3);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (2, 3);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (5, 3);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (12, 3);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (3, 3);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (1, 4);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (2, 4);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (3, 4);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (8, 4);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (1, 5);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (2, 5);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (3, 5);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (5, 5);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (7, 6);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (2, 6);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (7, 7);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (2, 7);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (8, 7);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (24, 8);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (25, 9);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (7, 10);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (20, 10);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (21, 11);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (19, 12);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (1, 13);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (2, 13);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (3, 13);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (1, 14);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (2, 14);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (3, 14);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (4, 14);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (13, 14);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (1, 15);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (2, 15);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (3, 15);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (13, 15);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (1, 16);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (2, 16);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (3, 16);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (25, 16);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (1, 17);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (2, 17);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (3, 17);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (8, 17);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (1, 18);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (2, 18);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (3, 18);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (12, 18);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (5, 18);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (13, 18);

INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (1, 19);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (2, 19);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (3, 19);
INSERT INTO Ingredienti (idIngrediente, idPiatto) VALUES (28, 19);























