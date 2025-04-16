// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~khireddine3/SAE2.03-starter-project";


let DataProfile = {};

DataProfile.read = async function () {
  let answer = await fetch(HOST_URL + "/server/script.php?todo=readProfile");
  
  let Profiles = await answer.json();
  return Profiles;
};

DataProfile.readOne = async function (id_profil) {
  let answer = await fetch(HOST_URL + "/server/script.php?todo=readProfile&id_profil=" + id_profil);
  
  let res = await answer.json();
  return res;
};


export { DataProfile };