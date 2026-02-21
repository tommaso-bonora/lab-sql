CREATE TABLE studente (
matricola INT AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
cognome VARCHAR(50) NOT NULL,
data_nascita DATE,
PRIMARY KEY (matricola)
);


CREATE TABLE professore (
cod_fiscale CHAR(16) PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
cognome VARCHAR(50) NOT NULL
);

CREATE TABLE materia (
cod_materia CHAR(5) PRIMARY KEY,
nome_materia VARCHAR(50) NOT NULL
);

CREATE TABLE lezione (
id_lezione INT PRIMARY KEY AUTO_INCREMENT,
cod_materia CHAR(5),
cod_fiscale CHAR(16),
giorno DATE,
orario TIME
);

ALTER TABLE lezione 
ADD FOREIGN KEY (cod_fiscale) REFERENCES professore(cod_fiscale);
ALTER TABLE lezione
ADD FOREIGN KEY (cod_materia) REFERENCES materia(cod_materia);



CREATE TABLE voto (
id_voto INT PRIMARY KEY AUTO_INCREMENT,
matricola INT,
cod_materia CHAR(5),
voto DECIMAL(4,2),
data_voto DATE
);

ALTER TABLE voto
ADD FOREIGN KEY (matricola) REFERENCES studente(matricola);

ALTER TABLE voto
ADD FOREIGN KEY (cod_materia) REFERENCES materia(cod_materia);