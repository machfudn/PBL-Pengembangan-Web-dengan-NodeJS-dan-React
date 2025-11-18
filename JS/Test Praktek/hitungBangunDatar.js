// Perhitungan Luas dan Keliling Persegi
function hitungLuasPersegi(sisi) {
  //masukan nilai sisi saat dipanggil
  return sisi * sisi;
}
function hitungKelilingPersegi(sisi) {
  //masukan nilai sisi saat dipanggil
  return 4 * sisi;
}
// Perhitungan Luas dan Keliling Persegi Panjang
function hitungLuasPersegiPanjang(panjang, lebar) {
  //masukan nilai panjang dan lebar saat dipanggil
  return panjang * lebar;
}
function hitungKelilingPersegiPanjang(panjang, lebar) {
  //masukan nilai panjang dan lebar saat dipanggil
  return 2 * panjang + 2 * lebar;
}
// Perhitungan Luas dan Keliling Lingkaran
function hitungLuasLingkaran(jari_jari) {
  //masukan nilai jari - jari saat dipanggil
  return 3.142857 * jari_jari ** 2;
}
function hitungKelilingLingakaran(jari_jari) {
  //masukan nilai jari - jari saat dipanggil
  return 2 * 3.142857 * jari_jari;
}
// Perhitungan Luas dan Keliling Segitiga Sama Sisi
function hitungLuasSegitigaSamaSisi(alas, tinggi) {
  //masukan nilai alas dan tinggi saat dipanggil
  return (1 / 2) * alas * tinggi;
}
function hitungKelilingSegitigasSamaSisi(sisi) {
  //masukan nilai sisi saat dipanggil
  return 3 * sisi;
}
// Tampilkan ke Layar
console.log("===== MENGHITUNG LUAS DAN KELILING BANGUN DATAR =====\n");
//Menampilkan Luas Bangun Datar
console.log(">> Luas Bangun Datar <<");
console.log("Luas Persegi Dengan Sisi 8 Adalah", hitungLuasPersegi(8));
console.log("Luas Persegi Panjang Dengan Panjang 9 Dan Lebar 3 Adalah", hitungLuasPersegiPanjang(9, 3));
console.log("Luas Lingkaran Dengan Jari - jari 6 Adalah", hitungLuasLingkaran(6).toFixed(2));
console.log("Luas Segitiga Dengan Alas 6 Dan Tinggi 4 Adalah", hitungLuasSegitigaSamaSisi(6, 4), "\n");
//Menampilkan Keliling Bangun Datar
console.log(">> Keliling Bangun Datar <<");
console.log("Keliling Persegi Dengan Sisi 8 Adalah", hitungKelilingPersegi(8));
console.log("Keliling Persegi Panjang Dengan Panjang 9 Dan Lebar 3 Adalah", hitungKelilingPersegiPanjang(9, 3));
console.log("Keliling Lingkaran Dengan Jari Jari 6 Adalah", hitungKelilingLingakaran(6).toFixed(2));
console.log("Keliling Segitiga Dengan Sisi 6 Adalah", hitungKelilingSegitigasSamaSisi(6));
