let templateFile = await fetch("./component/MovieDetails/template.html");
let template = await templateFile.text();

let MovieDetails = {};

MovieDetails.format = function (obj) {
  let html = template;
    html = html.replace("{{name}}", obj.name);
    html = html.replace("{{year}}", obj.year);
    html = html.replace("{{length}}", obj.length);
    html = html.replace("{{description}}", obj.description);
    html = html.replace("{{director}}", obj.director);
    html = html.replace("{{id_category}}", obj.id_category);
    html = html.replace("{{image}}", obj.image);
    html = html.replace("{{trailer}}", obj.trailer);
    html = html.replace("{{min_age}}", obj.min_age);
  return html;
};

export { MovieDetails };
