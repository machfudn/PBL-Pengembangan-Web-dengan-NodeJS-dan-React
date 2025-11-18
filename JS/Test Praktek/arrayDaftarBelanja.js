let daftarBelanja = [];
daftarBelanja.push("Beras", "Minyak", "Gula");
daftarBelanja.indexOf("Minyak");
daftarBelanja.splice(1, 1);
daftarBelanja.push("Telur", "Sayur", "Buah");

daftarBelanja.sort();
console.log("Daftar Belanja Ibu Lily");
daftarBelanja.forEach((item, index) => {
  console.log(`${index + 1}. ${item}`);
});
