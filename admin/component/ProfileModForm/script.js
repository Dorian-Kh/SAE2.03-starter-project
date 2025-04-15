
let templateFile = await fetch('./component/ProfileModForm/template.html');
let template = await templateFile.text();


let ProfileModForm = {};

ProfileModForm.format = function (profile, handlerMod) {
  let html = template;
  let options = "";
  for (let i = 0; i < profile.length; i++) {
      const p = profile[i];
      options += `<option value="${p.id_profil}" data-name="${p.name}" data-image="${p.image}" data-date_naissance="${p.date_naissance}">${p.name}</option>`;
  }
  html = html.replace("{{options}}", options);
  html = html.replace('{{hProfile}}', profile);
  html = html.replace("{{handlerMod}}", handlerMod);
  return html;
};




export { ProfileModForm };