import { MovieCard } from '../Movie/script.js';

let templateFile = await fetch("./component/MovieCategory/template.html");
let template = await templateFile.text();

let MovieCategory = {};

MovieCategory.format = function (category) {
  let html = template;
  html = html.replaceAll("{{category}}", category.category_name || "Catégorie inconnue");

  let cardHtml = MovieCard.format(category.movies || []);
  html = html.replaceAll("{{movies}}", cardHtml);
  return html;
};

let C = {}; // Assurez-vous que l'objet C existe

C.scrollLeft = function () {
  let content = document.querySelector(".category__content");
  content.scrollBy({ left: -300, behavior: "smooth" }); // Défile vers la gauche
};

C.scrollRight = function () {
  let content = document.querySelector(".category__content");
  content.scrollBy({ left: 300, behavior: "smooth" }); // Défile vers la droite
};

window.C = C;

export { MovieCategory };

