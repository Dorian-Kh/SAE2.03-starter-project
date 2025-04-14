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

// MovieCategory.format = function (category) {
//   let html = template;
//   html = html.replace("{{category}}", category.name);

//   if (category.movies && category.movies.length > 0) {
//     let cardHtml = "";
//     for (let i = 0; i < category.movies.length; i++) {
//       cardHtml += MovieCard.format(category.movies[i]);
//     }
//     html = html.replace("{{movies}}", cardHtml);
//   } else {
//     html = html.replace("{{movies}}", "Aucun film disponible dans cette catégorie");
//   }

//   return html;
// };


export { MovieCategory };
