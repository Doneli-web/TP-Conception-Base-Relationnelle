CREATE TABLE categorie (
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(100) NOT NULL
);

INSERT INTO categorie(libelle) VALUES
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson');

ALTER TABLE plat ADD COLUMN id_categorie INTEGER REFERENCES categorie(id);

UPDATE plat SET id_categorie = 1 WHERE id = 1 OR id = 2 OR id = 3;
UPDATE plat SET id_categorie = 2 WHERE id = 4;
UPDATE plat SET id_categorie = 3 WHERE id = 5;
UPDATE plat SET id_categorie = 4 WHERE id = 6;
UPDATE plat SET id_categorie = 5 WHERE id = 7;

ALTER TABLE plat ALTER COLUMN id_categorie SET NOT NULL;

INSERT INTO categorie(libelle) VALUES ('Plat italien');

SELECT categorie.libelle, COUNT(plat.id) AS nombre FROM categorie LEFT JOIN plat ON categorie.id = plat.id_categorie GROUP BY plat.id_categorie, categorie.libelle;

