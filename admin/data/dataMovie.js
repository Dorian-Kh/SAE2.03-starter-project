
// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~khireddine3/SAE2.03-starter-project/";//"http://mmi.unilim.fr/~????"; // CHANGE THIS TO MATCH YOUR CONFIG

let DataMovies = {};

/**
* @param {*} fdata La semaine pour laquelle le menu est mis à jour.
* @returns $d Le jour pour lequel le menu est mis à jour.
**/

DataMovies.addMovies = async function(fdata){
    let config = {
        method: "POST",
        body: fdata
    };

    let answer = await fetch(HOST_URL + "/server/script.php?todo=addMovies", config);
    let data = await answer.json();
    return data;
}

export {DataMovies};