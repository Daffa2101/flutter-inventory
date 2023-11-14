# Flutter-inventory

# ==== Tugas 8 ====

## 1.Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

- Perbedaan utamanya adalah push() menambahkan halaman baru pada stack , sedangkan pushReplacement mengganti halaman paling atas pada stack dengan halaman baru

## 2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

- Container : biasa digunakan untuk membungkus widget widget kedalam suatu tempat, dan bisa ditambah dekorasi seperti warna ,borderradius, dll
- Row & Column : biasa digunakan untuk mengatur urutan widget ( horizontal = row / vertikal = column)
- SizedBox : mirip seperti container
- Stack : biasa digunakan agar widget dapat memiliki dimensi atau memiliki efek bertumpuk
- Wrap : Sama seperti row tapi jika terjadi overflow akan wrap kebawah
- Listview & GridView : Membuat sebuah kumpulan widget yang bisa discroll baik secara vertikal maupun horizontal

## 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

- Saya hanya menggunakan textFormField , karena lebih flexible dan mempunyai properti validator yang dapat memudahkan untuk memvalidasi input yang dimasukkan

## 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?

- penerapan clean architecture pada flutter biasanya dilakukan dengan membuat tiap feature didalam folder yang berbeda , lalu tiap feature dibagi menjadi 3 bagian yaitu data,domain, dan presentation. bagian data berisi proses fetch api, bagian domain berisi repository (logika bisnis) dari feature tersebut, dan presentation berisi file file UI seperti page dan widget , serta state managemen,

## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

- pertama-tama saya inisiasi proyek dengan mengimplementasikan clean architecture
- kemudian saya membuat widget-widget core aplikasi seperti appbar dan drawer
- kemudia saya membuat 3 page baru untuk add item, list item, dan home
- kemudian saya membuat model untuk inventory item
- pada page list item saya membuat variable global List<InventoryItem>
- pada addItemPage saya menambahkan item yang berhasil ditambahkan kedalam list tersebut
- kemudian menampilkan tiap item dalam list pada listview di ListItemPage

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
