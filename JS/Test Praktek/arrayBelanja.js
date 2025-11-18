let dataSepatu = [
  { nama: "New Balance NB530", harga: 390000 },
  { nama: "Nike Vomero 5", harga: 350000 },
  { nama: "Adidas Samba", harga: 180000 },
  { nama: "Onitsuka Tiger Mexico", harga: 420000 },
];
console.log("===== Rincian Belanja Sepatu =====");
dataSepatu.forEach((item, index) => {
  console.log(`${index + 1}. ${item.nama} - Rp. ${item.harga}`);
});
console.log("");

let totalBelanja = dataSepatu[0].harga + dataSepatu[1].harga + dataSepatu[2].harga + dataSepatu[3].harga;
console.log("Total Belanja = Rp." + totalBelanja);

if (totalBelanja < 250000) {
  diskon = 0;
  namaDiskon = "0%";
} else if (totalBelanja >= 250000 && totalBelanja <= 499999) {
  diskon = 0.05;
  namaDiskon = "5%";
} else if (totalBelanja >= 500000 && totalBelanja <= 799999) {
  diskon = 0.1;
  namaDiskon = "10%";
} else if (totalBelanja >= 800000) {
  diskon = 0.15;
  namaDiskon = "15%";
} else {
  diskon = "Diskon tidak valid";
  namaDiskon = "Nama diskon tidak valid";
}
console.log("Diskon =", namaDiskon);
let nilaiDiskon = totalBelanja * diskon;
let totalSetelahDiskon = totalBelanja - nilaiDiskon;
console.log("Total Setelah Diskon = Rp." + totalSetelahDiskon);
let pembayaran = 1200000;
console.log(`Pembayaran = Rp. ${pembayaran}`);
let kembalian = pembayaran - totalSetelahDiskon;
console.log(`Kembalian = Rp. ${kembalian}`);
