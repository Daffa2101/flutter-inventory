# Flutter-inventory

# ==== Tugas 7 ====

## 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

- Perbedaan utama dari stateless widget dan stateful widget adalah dari sifat statis dan dinamisnya. Stateless widget tidak menyimpan state atau data sehingga ketika sebuah stateless widget dibuat properti-properti didalamnya tidak akan berubah, Sedangkan untuk stateful widget dapat menyimpan state atau data sehingga memungkinkan widget untuk berubah selama berjalannya aplikasi

## 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

- Berikut adalah widget yang saya gunakan:

  1. Scaffold() -> sebagai struktur / fondasi aplikasi
  2. SingleChildScrollView -> membuat scrollable view untuk childnya
  3. Column -> mengatur layout dalam bentuk kolom
  4. Row -> mengatur layout dalam bentuk baris
  5. Sizedbox -> sebuah kotak yang biasa digunakan untuk memberi jarak antar widget
  6. Center -> Menengahkan posisi widget
  7. Padding -> Memberikan jarak antara widget dengan item didalamnya
  8. Icon -> menampilkan Icon
  9. Text -> menampilkan text
  10. IconButton -> membuat icon yang memiliki properti onTap
  11. InkWell -> membuat sebuah widget memiliki tombol onTap ditambah dengan adanya animasi splash
  12. AppBar -> Menampilkan Appbar
  13. TextStyle -> mengatur style dari sebuah text
  14. BoxDecaroation -> memberikan decoration apda sebuah container
  15. Container -> Membungkus widget didalamnya

## 3.Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

- Pertama, saya membuat sebuah Widget HomePage yang akan berisi home page,
- didalamnya saya membuat scaffold dengan yang bodynya berisi SingleChildScrollView
- didalam SingleChildScrollView saya membuat sebuah column yang akan diisi widget custom yaitu HomeCard
- kemudian Saya membuat HomeCard yang menerima beberapa parameter seperti warna, icon, teks, dan ukuran
- Didalam Homecard terdapat Container yang dibungkus dengan Inkwell agar memiliki onTap
- Didalam Container terdapat row yang memiliki children text dan sebuah Icon
- Setelah itu saya menambahkan fungsi memanggil snackbar pada inkwell


