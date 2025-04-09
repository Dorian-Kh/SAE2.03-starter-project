
// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "..";//"http://mmi.unilim.fr/~????"; // CHANGE THIS TO MATCH YOUR CONFIG

let DataMovies = {};

DataMovies.requestMovies = async function(){
    // fetch permet d'envoyer une requête HTTP à l'URL spécifiée. 
    // L'URL est construite en concaténant HOST_URL à "/server/script.php?direction=" et la valeur de la variable dir. 
    // L'URL finale dépend de la valeur de HOST_URL et de dir.
    let answer = await fetch(HOST_URL + "/server/script.php?todo=readmovies");
    // answer est la réponse du serveur à la requête fetch.
    // On utilise ensuite la méthode json() pour extraire de cette réponse les données au format JSON.
    // Ces données (data) sont automatiquement converties en objet JavaScript.
    let data = await answer.json();
    // Enfin, on retourne ces données.
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