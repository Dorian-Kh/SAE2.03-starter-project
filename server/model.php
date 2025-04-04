<?php
/**
 * Ce fichier contient toutes les fonctions qui réalisent des opérations
 * sur la base de données, telles que les requêtes SQL pour insérer, 
 * mettre à jour, supprimer ou récupérer des données.
 */

/**
 * Définition des constantes de connexion à la base de données.
 *
 * HOST : Nom d'hôte du serveur de base de données, ici "localhost".
 * DBNAME : Nom de la base de données
 * DBLOGIN : Nom d'utilisateur pour se connecter à la base de données.
 * DBPWD : Mot de passe pour se connecter à la base de données.
 */
define("HOST", "localhost");
define("DBNAME", "khireddine3");
define("DBLOGIN", "khireddine3");
define("DBPWD", "khireddine3");


function getAllMovies(){
        // Connexion à la base de données
        $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD);
        // Requête SQL pour récupérer le menu avec des paramètres
        $sql = "select id, name, image from Movie";
        // Prépare la requête SQL
        $stmt = $cnx->prepare($sql);
        // Exécute la requête SQL
        $stmt->execute();
        // Récupère les résultats de la requête sous forme d'objets
        $res = $stmt->fetchAll(PDO::FETCH_OBJ);
        return $res; // Retourne les résultats
}



/**
 * Met à jour le menu pour un jour spécifique dans la base de données.
 *
 * @param string $n La semaine pour laquelle le menu est mis à jour.
 * @param int $y La nouvelle entrée pour le menu.
 * @param int $l Le nouveau plat principal pour le menu.
 * @param string $s Le nouveau dessert pour le menu.
 * @param string $d Le jour pour lequel le menu est mis à jour.
 * @param string $c Le nouveau dessert pour le menu.
 * @param string $i Le nouveau dessert pour le menu.
 * @param string $t Le nouveau dessert pour le menu.
 * @param int $a Le nouveau dessert pour le menu.
 * @return int Le nombre de lignes affectées par la requête de mise à jour.
 * 
 * A SAVOIR: une requête SQL de type update retourne le nombre de lignes affectées par la requête.
 * Si la requête a réussi, le nombre de lignes affectées sera 1.
 * Si la requête a échoué, le nombre de lignes affectées sera 0.
 */
function addMovies($n, $d, $y, $l, $s, $c, $i, $t, $a){
        // Connexion à la base de données
        $cnx = new PDO("mysql:host=".HOST.";dbname=".DBNAME, DBLOGIN, DBPWD); 
        // Requête SQL de mise à jour du menu avec des paramètres
        $sql = "INSERT INTO Movie (name, year, length, description, director, id_category, image, trailer, min_age) 
                VALUES (:name, :year, :length, :description, :director, :id_category, :image, :trailer, :min_age)";
        // Prépare la requête SQL
        $stmt = $cnx->prepare($sql);
        // Lie les paramètres aux valeurs
        $stmt->bindParam(':name', $n);
        $stmt->bindParam(':director', $d);
        $stmt->bindParam(':year', $y);
        $stmt->bindParam(':length', $l);
        $stmt->bindParam(':description', $s);
        $stmt->bindParam(':id_category', $c);
        $stmt->bindParam(':image', $i);
        $stmt->bindParam(':trailer', $t);
        $stmt->bindParam(':min_age', $a);
        // Exécute la requête SQL
        $stmt->execute();
        // Récupère le nombre de lignes affectées par la requête
        $res = $stmt->rowCount(); 
        return $res; // Retourne le nombre de lignes affectées
    }