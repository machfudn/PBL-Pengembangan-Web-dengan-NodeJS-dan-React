// Assignment
const hargaNasiGoreng = 25000;
const hargaMieGoreng = 22000;
const hargaCapcay = 32000;
const diskon = 0.1;
let pembayaran = 100000;

// Perhitungan
let totalHarga = hargaNasiGoreng + hargaMieGoreng + hargaCapcay; // 79000
let hargaDiskon = totalHarga * diskon; // 7900
let hargaSetelahDiskon = totalHarga - hargaDiskon; // 71100
let kembalian = pembayaran - hargaSetelahDiskon; // 28900

//Tampilkan Layar
console.log("Harga Nasi Goreng = Rp.", hargaNasiGoreng);
console.log("Harga Mie Goreng = Rp.", hargaMieGoreng);
console.log("Harga Capcay = Rp.", hargaCapcay);
console.log("Harga Total = Rp.", totalHarga);
console.log("Diskon = 10%");
console.log("Harga Setelah Diskon = Rp.", hargaSetelahDiskon);
console.log("Pembayaran = Rp.", pembayaran);
console.log("Kembalian = Rp.", kembalian);
