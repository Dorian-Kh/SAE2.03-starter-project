
// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "..";//"http://mmi.unilim.fr/~????"; // CHANGE THIS TO MATCH YOUR CONFIG

let DataMovies = {};

DataMovies.requestMovies = async function(date_naissance = 18){
    let answer = await fetch(HOST_URL + `/server/script.php?todo=readmoviecategory&date_naissance=${date_naissance}`);
    let data = await answer.json();
    return data;
};


DataMovies.requestMovieDetails = async function(id) {
    // Envoie une requête HTTP pour récupérer les détails d'un film spécifique en fonction de son ID.
    let answer = await fetch(HOST_URL + `/server/script.php?todo=readmoviedetails&id=${id}`);
    // Convertit la réponse en format JSON.
    let data = await answer.json();
    // Retourne les données du film.
    return data;
};

DataMovies.requestMovieCategory = async function() {
    // Envoie une requête HTTP pour récupérer les détails d'un film spécifique en fonction de son ID.
    let answer = await fetch(HOST_URL + "/server/script.php?todo=readmoviecategory");
    // Convertit la réponse en format JSON.
    let data = await answer.json();
    // Retourne les données du film.
    return data;
};

export {DataMovies};