let templateFile = await fetch('./component/ProfileModifForm/template.html');
let template = await templateFile.text();


let ProfileModifForm = {};

ProfileModifForm.format = function (profiles, handler) {
  let html = template;
  let options = "";
  for (let i = 0; i < profiles.length; i++) {
      const p = profiles[i];
      options += `<option value="${p.id_profil}" data-name="${p.name}" data-image="${p.image}" data-age="${p.min_age}">${p.name}</option>`;
  }

  html = html.replace("{{options}}", options);
  html = html.replace("{{handler}}", handler);
  return html;
};

// Initialise les champs et les événements du formulaire
ProfileModifForm.init = function () {
  const select = document.getElementById("profile-select");
  const idField = document.getElementById("profile-id");
  const nameField = document.getElementById("profile-name");
  const imageField = document.getElementById("profile-image");
  const minAgeField = document.getElementById("profile-min-age");
  console.log(select, idField, nameField, imageField, minAgeField);

  // Remplit les champs en fonction du profil sélectionné
  select.addEventListener("change", (event) => {
      const selectedOption = event.target.selectedOptions[0];
      if (selectedOption) {
          idField.value = selectedOption.value || "";
          nameField.value = selectedOption.dataset.name || "";
          imageField.value = selectedOption.dataset.image || "";
          minAgeField.value = selectedOption.dataset.age ? selectedOption.dataset.age : "";
      }
  });
};

export {ProfileModifForm};