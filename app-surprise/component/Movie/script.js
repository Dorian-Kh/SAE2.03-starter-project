let templateFile = await fetch("./component/Movie/template.html");
let template = await templateFile.text();

let templateFile2 = await fetch("./component/Movie/templateCard.html");
let templateCards = await templateFile2.text();

let MovieCard = {};

MovieCard.format = function (obj) {
  let html = template;
  let cardsHTML = "";
  for (let c of obj) {
    let card = templateCards;
    card = card.replaceAll("{{movie_name}}", c.movie_name);
    card = card.replaceAll("{{category_name}}", c.category_name);
    card = card.replaceAll("{{description}}", c.description);
    card = card.replaceAll("{{image}}", c.image);
    card = card.replaceAll("{{onclick}}", `C.handlerDetail(${c.id})`);
    cardsHTML += card;
  }
  html = html.replaceAll("{{cards}}", cardsHTML);
  return html;
};
export { MovieCard };
