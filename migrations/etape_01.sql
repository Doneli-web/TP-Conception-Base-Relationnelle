CREATE DATABASE gargote;
\c gargote;

CREATE TABLE plat (
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(100) NOT NULL,
    prix INTEGER DEFAULT(0)
);

INSERT INTO plat(libelle, prix) VALUES
('Romazava', 7000),
('Ravitoto sy henakisoa', 8000),
('Akoho sy voanio', 8500),
('Mi sao', 6000),
('Soupe chinoise', 5000),
('Mofo gasy (les 4)', 1000),
($$Ranon'ampango$$, 500);

SELECT libelle, prix FROM plat ORDER BY prix DESC;


