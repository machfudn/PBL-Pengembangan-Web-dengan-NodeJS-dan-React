let bunga = [
  { nama: "Rose", tinggi: "178 cm" },
  { nama: "Magnolia", tinggi: "153 cm" },
  { nama: "Daisy", tinggi: "165 cm" },
  { nama: "Jasmine", tinggi: "161 cm" },
  { nama: "Violet", tinggi: "159 cm" },
];
for (let i in bunga) {
  const item = bunga[i];
  console.log(`${item.nama} memiliki tinggi ${item.tinggi}`);
}
