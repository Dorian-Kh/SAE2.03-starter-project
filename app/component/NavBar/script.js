let templateFile = await fetch("./component/NavBar/template.html");
let template = await templateFile.text();

let NavBar = {};

NavBar.format = function (hAbout, profiles) {
  let html = template;
  html = html.replace("{{hAbout}}", hAbout);

  let logo = "mmix.png";
  html = html.replace("{{logo}}", logo);
  let options = `<option value="">Choisir un profil</option>`;
  for (let i = 0; i < profiles.length; i++) {
    let p = profiles[i];
    options += `<option value="${p.id_profil}" data-img="${p.image}" data-age="${p.date_naissance}">${p.name}</option>`;
  }

  let avatar = profiles[0]?.image || "";

  html = html.replace("{{options}}", options);
  html = html.replace("{{avatar}}", avatar);
  html = html.replace("{{handler}}", "C.handlerProfileChange(this)");

  return html;
};

export { NavBar };
