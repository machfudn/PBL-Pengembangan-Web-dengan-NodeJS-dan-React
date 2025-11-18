// Assignment
let hargaHeadset = 225000;
let hargaMouse = 150000;
let hargaKeyboard = 350000;

//Hitung Total Harga Belanja
let totalHargaBelanja = hargaHeadset + hargaMouse + hargaKeyboard;

// Pengkondisian
let diskon;
let namaDiskon;
if (totalHargaBelanja < 250000) {
  diskon = 0;
  namaDiskon = "0%";
} else if (totalHargaBelanja >= 250000 && totalHargaBelanja <= 499999) {
  diskon = 0.05;
  namaDiskon = "5%";
} else if (totalHargaBelanja >= 500000 && totalHargaBelanja <= 799999) {
  diskon = 0.1;
  namaDiskon = "10%";
} else if (totalHargaBelanja >= 800000) {
  diskon = 0.15;
  namaDiskon = "15%";
} else {
  diskon = "Diskon tidak valid";
  namaDiskon = "Tidak ada nama diskon";
}

// Hitung niai diskon dan total harga setelah diskon
let nilaiDiskon = totalHargaBelanja * diskon;
let hargaSetelahDiskon = totalHargaBelanja - nilaiDiskon;

// Hitung Kembalian
let uangPembayaran = 800000;
let kembalian = uangPembayaran - hargaSetelahDiskon;

// Tampilkan ke Layar
console.log("===== Rincian Pembelian =====");
console.log("Headset = Rp." + hargaHeadset);
console.log("Mouse = Rp." + hargaMouse);
console.log("Keyboard = Rp." + hargaKeyboard + "\n");
console.log("Total Belanja = Rp." + totalHargaBelanja);
console.log("Diskon = " + namaDiskon);
console.log("Total Setelah Diskon = Rp." + hargaSetelahDiskon);
console.log("Pembayaran = Rp." + uangPembayaran);
console.log("Pembayaran = Rp." + kembalian);
