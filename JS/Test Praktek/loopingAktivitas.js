for (let i = 1; i <= 20; i++) {
  let tampil;
  if (i % 3 === 0 && i % 2 === 0) {
    // Angka Kelipatan 3 dan Genap
    tampil = "Mendapat Sertifikat";
  } else if (i % 3 === 0 && i % 2 !== 0) {
    // Angka Kelipatan 3 dan Ganjil
    tampil = "Mengikuti Uji Kompetensi";
  } else if (i % 2 === 0) {
    // Angka Genap
    tampil = "Mengikuti Pelatihan";
  } else if (i % 2 !== 0) {
    // Angka Ganjil
    tampil = "Apel Pagi";
  } else {
    tampil = "tidak mengikuti apapun / tidak valid";
  }
  console.log(i + " - " + tampil);
}
