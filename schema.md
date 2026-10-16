### TP Conception de base de donnees :

#### Etape 1 :
- **Reponses :**
    - Pour le prix, j'ai choisi le type INTEGER parce que les montants sont en ariary, sans centimes
    - Pour l'identifiant, j'ai choisi id

- **Schema relationnel :**
    - PLAT(**id**, libelle, prix)

#### Etape 2 :
- **Reponses :**
    - On a pas simplement ajouter une colonne categorie VARCHAR(50) dans la table des plats parce que 2 plats ou meme plus peuvent avoir la meme categorie de plats mais dont l'ecriture differe a cause d'une fautre d'orthographe ou une sensibilite a la casse et elle sera considerer comme un tout autre categorie
    - *Exemple :* on vient ajouter un autre plat appele hen'omby sosy mais durant l'insertion de ce plat, pour la categorie, il ont mi palt malagasy au lieu de Plat malagasy donc palt malagasy sera considerer comme un autre categorie

- **Schema relationnel :**
    - PLAT(**id**, #id_categorie, libelle, prix) (modifié)
    - CATEGORIE(**id**, libelle) (nouveau)

#### Etape 3 :
- **Reponses :**
    - On a place la quantite dans la table ligne_commande

- **Schema relationnel :**
    - PLAT(**id**, #id_categorie, libelle, prix)
    - CATEGORIE(**id**, libelle)'
    - COMMANDE(**id**, date) (nouveau)
    - LIGNE_COMMANDE(**id**, **#id_plat**, **#id_commande**, quantite) (nouveau)