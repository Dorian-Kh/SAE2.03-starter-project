let templateFile = await fetch("./component/MoviePage/template.html");
let template = await templateFile.text();

let MoviePage = {};

MoviePage.format = function (obj) {
  let html = template;
  let pageHTML="";
  for(let c of obj){
    let page = template;
    page = page.replace("{{url}}", c.url);
    page = page.replace("{{titre}}", c.titre);
    page = page.replace("{{image}}", c.image);
    page = page.replace("{{director}}", c.director);
    page = page.replace("{{year}}", c.year);
    page = page.replace("{{id_director}}", c.id_director);
    page = page.replace("{{min_age}}", c.min_age);
    pageHTML+=page;
  }
  html=html.replace("{{page}}", pageHTML);
  return html;
};

export { MoviePage };
