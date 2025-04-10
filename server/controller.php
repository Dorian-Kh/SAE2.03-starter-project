<?php

/** ARCHITECTURE PHP SERVEUR  : Rôle du fichier controller.php
 * 
 *  Dans ce fichier, on va définir les fonctions de contrôle qui vont traiter les requêtes HTTP.
 *  Les requêtes HTTP sont interprétées selon la valeur du paramètre 'todo' de la requête (voir script.php)
 *  Pour chaque valeur différente, on déclarera une fonction de contrôle différente.
 * 
 *  Les fonctions de contrôle vont éventuellement lire les paramètres additionnels de la requête, 
 *  les vérifier, puis appeler les fonctions du modèle (model.php) pour effectuer les opérations
 *  nécessaires sur la base de données.
 *  
 *  Si la fonction échoue à traiter la requête, elle retourne false (mauvais paramètres, erreur de connexion à la BDD, etc.)
 *  Sinon elle retourne le résultat de l'opération (des données ou un message) à includre dans la réponse HTTP.
 */

/** Inclusion du fichier model.php
 *  Pour pouvoir utiliser les fonctions qui y sont déclarées et qui permettent
 *  de faire des opérations sur les données stockées en base de données.
 */
require("model.php");

function readMoviesController(){
 
    $movies = getAllMovies();
    return $movies;
}

function addMoviesController(){
    /* Lecture des données de formulaire
      On ne vérifie pas si les données sont valides, on suppose (faudra pas toujours...) que le client les a déjà
      vérifiées avant de les envoyer 
    */
    $name = $_REQUEST['name'];
    $director = $_REQUEST['director'];
    $year = $_REQUEST['year'];
    $length = $_REQUEST['length'];
    $description = $_REQUEST['description'];
    $id_category = $_REQUEST['id_category'];
    $image = $_REQUEST['image'];
    $trailer = $_REQUEST['trailer'];
    $min_age = $_REQUEST['min_age'];

    if (empty($name) || empty($director) || empty($year) || empty($length) || empty($description) || empty($id_category) || empty($image) || empty($trailer) || empty($min_age)) {
      return 'Tous les champs sont obligatoires.';
    }
    // Mise à jour du menu à l'aide de la fonction updateMenu décrite dans model.php
    $ok = addMovies($name, $director, $year, $length, $description, $id_category, $image, $trailer, $min_age);
    // $ok est le nombre de ligne affecté par l'opération de mise à jour dans la BDD (voir model.php)
    if ($ok!=0){
      return "Le film $name a bien été ajouté.";
    }
    else{
      return "Un erreur s'est produite, réessayer.";
    }
}


function readMovieDetail() {
  $id = $_REQUEST['id'] ?? null;
  

  if (empty($id)) {
    return "L'identifiant du film est requis.";
  }

  $movie = getMovieById($id);

  if ($movie) {
    return $movie;
  } else {
    return "Aucun film trouvé avec cet identifiant.";
  }
}

function getMoviesByCategoryController() {
  // Appelle une fonction pour récupérer toutes les catégories
  $categories = getMoviesByCategory();

  
  if ($categories) {
    return $categories;
  } else {
    return "Aucune catégorie trouvée.";
  }
}

function addProfileController() {
  $name = $_POST['name'];
  $image = $_POST['image'];
  $date_naissance = $_POST['date_naissance'];
  
  if (empty($name) || empty($image) || empty($date_naissance)) {
    return "Tous les champs sont obligatoires.";
  }

  $ok = addProfile($name, $image, $date_naissance);

  if ($ok != 0) {
      return "Le profil $name a bien été ajouté";
  } else {
      return "Le profil n'a pas pu être ajouté ou remplacé";
  }
}

function readControllerProfile(){
  if (!isset($_REQUEST['id_profil'])) {
    $profiles = readProfile(); 
  }
  else{
    $id_profil = $_REQUEST['id_profil'];
    $profiles = readOneProfile($id_profil);
  }
 
  return $profiles;
}