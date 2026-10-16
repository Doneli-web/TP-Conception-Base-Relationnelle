CREATE TABLE commande (
    id SERIAL PRIMARY KEY,
    date DATE
);

CREATE TABLE ligne_commande (
    id SERIAL PRIMARY KEY,
    id_plat INTEGER NOT NULL CONSTRAINT fk_plat REFERENCES plat(id),
    id_commande INTEGER NOT NULL CONSTRAINT fk_commande REFERENCES commande(id),
    quantite INTEGER NOT NULL,

    UNIQUE(id_plat, id_commande)
);

INSERT INTO commande (date) VALUES 
('2026-10-10'),
('2026-10-12'),
('2026-10-14'),
('2026-10-15'),
('2026-10-16');


INSERT INTO ligne_commande (id_plat, id_commande, quantite) VALUES 
(1, 1, 2),
(3, 1, 1),
(2, 2, 1),
(1, 3, 4),
(4, 3, 2),
(5, 3, 1),
(2, 4, 3),
(3, 4, 3),
(5, 5, 2);

SELECT commande.date, SUM(ligne_commande.quantite * plat.prix) AS montant FROM commande LEFT JOIN ligne_commande ON commande.id = ligne_commande.id_commande LEFT JOIN plat ON ligne_commande.id_plat = plat.id GROUP BY commande.date ORDER BY commande.date; 


