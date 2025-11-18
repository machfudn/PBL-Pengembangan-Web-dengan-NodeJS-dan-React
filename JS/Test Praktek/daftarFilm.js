const fs = require("fs");
let data = [];

if (fs.existsSync("film.json")) {
  const content = fs.readFileSync("film.json", "utf8");
}

let dataFilmBaru = [
  {
    nama: "Agak Laen",
    tahun: 2024,
    genre: ["Horor", "Komedi"],
  },
  {
    nama: "Habibie & Ainun",
    tahun: 2012,
    genre: ["Drama", "Romantis"],
  },
  {
    nama: "Dilan 1990",
    tahun: 2018,
    genre: ["Romantis"],
  },
];

data.push(...dataFilmBaru);

const dataTersimpan = JSON.stringify(data, null, 2);
fs.writeFileSync("film.json", dataTersimpan);

console.log("Daftar Film :");

data.forEach((item, index) => {
  const genreJoin = item.genre.join(", ");
  console.log(`${index + 1}. ${item.nama} (${item.tahun}) - ${genreJoin}`);
});
