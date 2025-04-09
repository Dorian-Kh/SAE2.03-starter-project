let templateFile = await fetch("./component/ProfileForm/template.html");
let template = await templateFile.text();

let Profile = {};

Profile.format = function (handler) {
  let html = template;
  html = html.replace("{{handler}}", handler);
  return html;
};

export { Profile };
