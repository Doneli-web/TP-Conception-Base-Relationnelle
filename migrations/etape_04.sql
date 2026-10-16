CREATE TABLE client (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

ALTER TABLE commande ADD COLUMN id_client INTEGER REFERENCES client(id);

INSERT INTO client (nom) VALUES 
('Jean Dupont'),
('Marie Courtois'),
('Lucas Martin');

UPDATE commande SET id_client = 1 WHERE id IN (1, 2);
UPDATE commande SET id_client = 2 WHERE id IN (3, 4);
UPDATE commande SET id_client = 3 WHERE id = 5;


SELECT commande.date, 
    CASE 
        WHEN client.nom IS NULL THEN 'client de passage' 
        ELSE client.nom
    END AS client   
FROM commande LEFT JOIN client ON commande.id_client = client.id;