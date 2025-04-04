let templateFile = await fetch("./component/Form/template.html");
let template = await templateFile.text();

let Form = {};

Form.format = function (obj) {
  let html = template;
  let formHTML="";
  for(let c of obj){
    let card = template;
    card = card.replace("{{form}}", c.image);
    formHTML+=card;
  }
  return html;
};

export { Form };
