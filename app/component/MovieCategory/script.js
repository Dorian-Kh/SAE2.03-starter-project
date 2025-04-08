import { MovieCard } from '../Movie/script.js';

let templateFile = await fetch("./component/MovieCategory/template.html");
let template = await templateFile.text();

let MovieCategory = {};

MovieCategory.format = function (category) {
  let html = template;
  html=html.replace("{{category}}", category.name);

  let cardHtml = MovieCard.format(category.movies || []);
  html=html.replace("{{movies}}", cardHtml);
  return html;
};

export { MovieCategory };
