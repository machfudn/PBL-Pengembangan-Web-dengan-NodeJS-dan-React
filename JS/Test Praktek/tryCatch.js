let selesai = "Program selesai.";
function bagiAngka(a, b) {
  if (b === 0) {
    throw new Error("Tidak bisa membagi dengan nol!");
    console.log(selesai);
  }
  let hasil = a / b;
  console.log("Hasil pembagian :", hasil);
}
let angka1 = 10;
let angka2 = 0;
try {
  bagiAngka(angka1, angka2);
} catch (e) {
  if (e.message === "Tidak bisa membagi dengan nol!") {
    console.log(`Error: ${e.message}`);
    console.log(selesai);
  } else {
    console.log(`Terjadi kesalahan lain: ${e.message}`);
  }
}
