let namaBuah = [];
namaBuah.push("Apel", "Mangga", "Jeruk", "Semangka", "Pisang", "Anggur", "Nanas");
namaBuah.sort();
namaBuah.forEach((item, index) => {
  console.log(`${index + 1}. ${item}`);
});
