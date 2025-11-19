class Laptop {
  constructor(nama) {
    this.nama = nama;
  }
}
class Asus extends Laptop {
  constructor(nama, qty, harga) {
    super(nama);
    this.qty = qty;
    this.harga = harga;
  }
  cekDiskon() {
    let totalHarga = this.qty * this.harga;
    let nama = this.nama;
    let diskon;
    if (totalHarga >= 20000000 && totalHarga >= 11) {
      diskon = `${nama}, mendapat Diskon: 10% dengan Total Harga : Rp.${totalHarga}.`;
    } else if (totalHarga >= 10000001) {
      diskon = `${nama}, mendapat Diskon: 8% dengan Total Harga : Rp.${totalHarga}.`;
    } else if (totalHarga >= 8000001) {
      diskon = `${nama},mendapat Diskon: 5% dengan Total Harga : Rp.${totalHarga}.`;
    } else if (totalHarga >= 5000001) {
      diskon = `${nama}, mendapat Diskon: 3% dengan Total Harga : Rp.${totalHarga}.`;
    } else if (totalHarga >= 0) {
      diskon = `${nama}, mendapat Diskon: Tidak dapat diskon Total Harga : Rp.${totalHarga}.`;
    } else {
      diskon = `diskon tidak valid Rp.${totalHarga}.`;
    }
    console.log(`${diskon}`);
  }
}
class HP extends Laptop {
  constructor(nama, qty, harga) {
    super(nama);
    this.qty = qty;
    this.harga = harga;
  }
  cekDiskon() {
    let totalHarga = this.qty * this.harga;
    let nama = this.nama;
    let diskon;
    if (totalHarga >= 20000000 && totalHarga >= 11) {
      diskon = `${nama}, mendapat Diskon: 10% dengan Total Harga : Rp.${totalHarga}.`;
    } else if (totalHarga >= 10000001) {
      diskon = `${nama}, mendapat Diskon: 8% dengan Total Harga : Rp.${totalHarga}.`;
    } else if (totalHarga >= 8000001) {
      diskon = `${nama},mendapat Diskon: 5% dengan Total Harga : Rp.${totalHarga}.`;
    } else if (totalHarga >= 5000001) {
      diskon = `${nama}, mendapat Diskon: 3% dengan Total Harga : Rp.${totalHarga}.`;
    } else if (totalHarga >= 0) {
      diskon = `${nama}, mendapat Diskon: Tidak dapat diskon Total Harga : Rp.${totalHarga}.`;
    } else {
      diskon = `diskon tidak valid Rp.${totalHarga}.`;
    }
    console.log(`${diskon}`);
  }
}
class Lenovo extends Laptop {
  constructor(nama, qty, harga) {
    super(nama);
    this.qty = qty;
    this.harga = harga;
  }
  cekDiskon() {
    let totalHarga = this.qty * this.harga;
    let nama = this.nama;
    let diskon;
    if (totalHarga >= 20000000 && totalHarga >= 11) {
      diskon = `${nama}, mendapat Diskon: 10% dengan Total Harga : Rp.${totalHarga}.`;
    } else if (totalHarga >= 10000001) {
      diskon = `${nama}, mendapat Diskon: 8% dengan Total Harga : Rp.${totalHarga}.`;
    } else if (totalHarga >= 8000001) {
      diskon = `${nama},mendapat Diskon: 5% dengan Total Harga : Rp.${totalHarga}.`;
    } else if (totalHarga >= 5000001) {
      diskon = `${nama}, mendapat Diskon: 3% dengan Total Harga : Rp.${totalHarga}.`;
    } else if (totalHarga >= 0) {
      diskon = `${nama}, mendapat Diskon: Tidak dapat diskon Total Harga : Rp.${totalHarga}.`;
    } else {
      diskon = `diskon tidak valid Rp.${totalHarga}.`;
    }
    console.log(`${diskon}`);
  }
}
const asus1 = new Asus("Asus Gaming", 20, 1000000);
const hp1 = new HP("HP Gaming", 3, 2000000);
const lenovo1 = new Lenovo("Lenovo Gaming", 2, 5000000);
asus1.cekDiskon();
hp1.cekDiskon();
lenovo1.cekDiskon();
