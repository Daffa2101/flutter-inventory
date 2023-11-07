# django-inventory

# ==== Tugas 6 ====

### 1. Jelaskan perbedaan antara asynchronous programming dengan synchronous programming.

-> Perbedaan dari asynchronous programming dengan synchronous programming adalah pada proses eksekusi dijalankan , synchronus programming menjalankan program secara berurutan sesuai baris kode dan dilakukan satu persatu, sedangkan pada asynchronous programming kode dieksekusi secara tidak berurutan , program tetap dapat melanjutkan eksekusi tugas lainnya sambil menunggu operasi yang membutuhkan waktu.

### 2. Dalam penerapan JavaScript dan AJAX, terdapat penerapan paradigma event-driven programming. Jelaskan maksud dari paradigma tersebut dan sebutkan salah satu contoh penerapannya pada tugas ini.

-> contoh dari penerapan event-driven-programming pada tugas ini adalah pada saat user menekan tombol add item by ajax / delete fungsi addItem / deleteItem baru dijalankan. Selain itu untuk melakukan refresh product diperlukan trigger event seperti pemanggilan refreshProduct setelah melakukan addItem/deleteItem

### 3. Jelaskan penerapan asynchronous programming pada AJAX.

-> penerapan asynchronous programming pada ajax dapat dilihat pada penggunaaan await, fetch(), then(), pada tiap keyword tersebut diterapkan asynchronus programing , seperti pada await maka program akan menunggu rangkaian kode yang di await selesai untuk melanjutkan programnya, dan untuk pada fetch() yang membuat permintaan ke server kita dapat menggunakan then() untuk menentukan function yang akan dipanggil setelah proses fetch selesai

### 4. Pada PBP kali ini, penerapan AJAX dilakukan dengan menggunakan Fetch API daripada library jQuery. Bandingkanlah kedua teknologi tersebut dan tuliskan pendapat kamu teknologi manakah yang lebih baik untuk digunakan.

-> Fetch API tidak memerlukan developer untuk melakukan import library eksternal, sehingga membuat membuat Fetch API menjadi lebih ringan. Selain itu Fetch API menggunakan konsep Promises, dimana konsep tersebut memberikan kemudahan terahdap developer untuk menuliskan clean asynchronous code.

-> jQuery memerlukan developer untuk melakukan import library agar bisa digunakan, ini membuat jQuery lebih berat dibandingkan Fetch API. Kelebihan dari jQuery adalah library ini menyediakan syntax syntax singkat untuk mempercepat proses pengembangan.

Menurut saya teknologi yang lebih baik digunakan tergantung dengan kebutuhan developer. Dalam kasus PBP ini saya rasa lebih baik menggunakan Fetch API untuk melatih pemahaman dasar terlebih dahulu.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).

    1. menambahkan fungsi add_item_ajax pada views dan menambahkannya kedalam urls.py
    2. menambahkan fungsi delete_item_ajax pada view dan menambahkannya kedalam urls.py
    3. pada main.html menambahkan scripts, yang berisi fungsi fungsi asynchronus seperti refresh_item, fungsi untuk menjalankan fungsi add_item_ajax dan delete_item_ajax pada views.py
    4. melakukan perubahan innerHTML pada refresh itemtiap add/delete item, sehingga tidak perlu melakukan refresh page lagi
    


# ==== Tugas 5 ====

### 1. Jelaskan manfaat dari setiap element selector dan kapan waktu yang tepat untuk menggunakannya.

-> Element selector 
Berguna untuk menambahkan properti css kepada seluruh elemen dengan tag HTML yang sama. Tepat digunakan pada kasus sebuah tag membutuhkan design yang sama pada 1 halaman.
-> ID Selector
Berguna ketika ingin memberikan properti css secara spesifik kesalah satu elemen karena ID bersifat unik. Tepat digunakan untuk memberi desain secara spesifik kesalah satu elemen.
-> Class Selector
Berguna untuk menambahkan properti css kepada seluruh elemen dengan class yang sama. Tepat digunakan untuk memberikan desain ke suatu kelompok elemen yang ingin memiliki desain sama.

### 2. Jelaskan HTML5 Tag yang kamu ketahui.

-> Berikut adalah beberapa HTML5 Tag yang saya ketahui dan pernah gunakan selama pengerjaan tugas PBP : 

    - <Form> = digunakan untuk membuat formulir yang membutuhkan pengiriman data ke server.
    
    - <input> = digunakan untuk meminta input dari user
    
    - <table>, <tr>, <td>, <th> = digunakan untuk membuat table , tr(baris), td(kolom), th(header)
    
    - <div> = digunakan untuk mengelompokkan beberapa elemen/tag lainnnya
    
    - <a> = digunakan untuk membuat hyperlink
    
    - <button>= digunakan untuk membuat button yang dapat ditekan user

    - <header> = digunakan untuk mendefinisikan bagian head dari suatu halaman web (judul, logo, dll)
    
Selain tag-tag diatas, masih sangat banyak tag-tag HTML5 lainnya,

### 3. Jelaskan perbedaan antara margin dan padding.

-> Margin merupakan jarak yang dibuat pada luar elemen , Sedangkan Padding merupakan jarak yang dibuat didalam elemen, Margin berfungsi untuk menjaga jarak antar elemen sedangkan Padding berfungsi untuk mengatur jarak antara element parent dan childnya.

### 4. Jelaskan perbedaan antara framework CSS Tailwind dan Bootstrap. Kapan sebaiknya kita menggunakan Bootstrap daripada Tailwind, dan sebaliknya?

-> Tailwind memiliki pendekatan utilit-first yang berarti memberikan utilitas yang dapat diterapkan kepada elemen HTML, sedangkan Bootstrap menggunakan pendekatan "siap pakai". 
-> Karena pendekatan diatas , Tailwind memiliki ukuran file yang lebih kecil dibandingkan dengan bootstrap yang memiliki ukuran file yang lebih besar.
-> Tailwind memiliki fleksibilitas yang lebih besar dalam hal memodifikasi kelas-kelasnya, sedangkan bootstrap memiliki fleksibilitas yang lebih rendah karena menyediakan komponen siap pakai.

Dari perbedaan-perbedaan diatas kita dapat menyimpulkan bahwa Bootstrap cocok digunakan ketika membutuhkan pengembangan dalam jangka waktu yang cepat karena memiliki komponen siap pakai, sedangkan untuk Tailwind cocok digunakan dalam pengembangan yang membutuhkan banyak modifikasi desain, Selain itu dalam konteks kesulitan, bootstrap cocok digunakan untuk pemula , sedangkan untuk tailwind membutuhkan pehamaman yang lebih besar tentang bagaimana menggabungkan kelas-kelas yang tersedia untuk mencapai hal yang dinginkan.

### 5.  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).

Karena saya menggunakan framework bootstrap, tidak terlalu banyak hal yang perlu saya lakukan untuk mengimplementasikan checklist diatas, berikut adalah hal yang saya lakukan:
-> Membuat Navbar = Memilih komponen navbar yang tersedia pada bootsstrap dan mengubah elemen -elemennya sesuai keinginan
-> Membuat Card = Menggunakan Card Deck dari Bootstrao untuk mengatur layout card card yang dibuat, dan melakukan looping sebanyak item untuk membuat card ( mengganti table )
-> Menambahkan ebberapa properti css pada form page (login,register,create_item) seperti border, pading, size, color, dll


# ==== Tugas 4 ====

1. Apa itu Django UserCreationForm, dan jelaskan apa kelebihan dan kekurangannya?

-> Django UserCreationForm merupakan "template" formulir yang disediakan oleh Django. formulir ini dirancang khusus untuk memudahkan developer yang sedang mengembangkan aplikasi web, menambahkan fitur register didalam aplikasinya. formulir jenis ini biasanya digunakan bersama dengan modul modul django lainnya seperti Django authentication system untuk melakukan login dan register.

-> Kelebihan dari Django UserCreationForm adalah:

    - dapat mempersingkat waktu developer dalam mengembangkan fitur yang dinginkannnya. 
    
    - jika aplikasi web yang dibuat mengguakan Django, UserCreationForm sudah terintegrasi dengan baik dengan django(Django authentication). 
    
    - UserCreationForm juga memiliki validasi bawaan untuk password seperti memastikan password yang dimasukkan kuat dan aman.

-> Kekurangan dari Django UserCreationForm adalah:

    - Sedikit kaku dalam melakukan kostumisasi yang membutuhkan fitur yang kompleks
    
    - Tampilan bawaannya terbatas sehingga perlu melakukan penambahan script untuk design manual

2. Apa perbedaan antara autentikasi dan otorisasi dalam konteks Django, dan mengapa keduanya penting?

-> Autentikasi
Autentikasi madalah proses untuk memvalidasi identitas user dan biasanya dilakukan sebelum proses otorisasi. Autentikasi biasanya dilakukan pada fitur login untuk memvalidasi input, atau memvalidasi token akses user

-> Otorisasi
Otorisasi adalah proses untuk menentukan izin pada suatu user yang telah diautentikasi untuk mengakses beberapa fitur didalam aplikasi. Contoh penggunaannya adalah ketika user berhasil login, tergantung role yang dimiliki user, tampilan yang akan ditampilkan/render juga akan berbeda.

-> Mengapa Keduanya Penting?
Keduanya penting karena keduanya saling bekerja sama dalam meningkatkan kualitas aplikasi, keamanan aplikasi, dan pengalaman user.


3. Apa itu cookies dalam konteks aplikasi web, dan bagaimana Django menggunakan cookies untuk mengelola data sesi pengguna?

Cookies adalah data kecil yang tersimpan pada perangkat user ketika user berinteraksi dengan aplikasi atau situs tersebut. Nantinya, Cookies yang tersimpan dapat diakses kembali oleh server web setelah user kembali mengakses aplikasi. Kegunaan cookies yang paling umum adalah untuk mengelola sesi user.

Cara django menggunakan cookies untuk mengelola data sesi pengguna :

-> Saat pertama kali user mengakses aplikasi, Django akan membuatkan identifier yang unik untuk tiap user yang akan digunakan untuk sesi pengguna dan akan disimpan menjadi Cookies. Dalam aplikasi ini penggunaan cookies dilakukan dengan 
menyimpan cookies pada saat user melakukan login untuk menyimpan data waktu login. dan mengaksesnya menggunakan request.COOKIES[key].

4. Apakah penggunaan cookies aman secara default dalam pengembangan web, atau apakah ada risiko potensial yang harus diwaspadai?

secara defult, penggunaan cookies dalam pengembangan web merupakan pendekatan yang aman, akan tetapi tetap ada resiko potensial dari faktor-faktor eksternal yang perlu diwaspadai seperti serangan hacker yaitu Man in the middle atau Cross-Site Scripting XSS.

untuk mengurangi resiko dan meningkatkan keamanan penggunaan protokol HTTPS dapat menjadi pertimbangan developer. Selain itu, Django memiliki fitur dalam melindungi script dari serangan Cross-Site Scripting atau XSS.

5.Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).

    1. Membuat fungsi register menggunakan modul UserCreationForm
    2. Membuat fungsi login menggunakan modul authentication, dan menyimpan data last login pada cookies ketika user berhasil login
    3. Membuat fungsi logout menggunakan modul authentication, dan menghapus data last login pada cookies ketika user melakukan logout
    4. Membuat template html untuk masing masing fungsi (kecuali logout)
    5. Menampilkan data last login pada main.html dan menambahkan button logout
    6. Menghubungkan Item dengan User menggunakan ForeignKey pada models.py
    7. Melakukan migrasi model dan memasang default value untuk user pertama
    8. Menjalankan aplikasi
    9. Melakukan Register sebanyak 2x dan login dimasing-masing akun untuk menambahkan 3 data dummy melalui model yang baru dibuat 





### Tugas 3 ###

1. Apa perbedaan antara form POST dan form GET dalam django ? 


-> POST pada django biasanya dilakukan untuk mengirim data-data yang bersifat sensitif atau data yang dimasukkan pengguna pada form karena lebih aman dibanding GET. POST tidak memiliki batasan panjang sering yang dapat dikirimkan.

-> GET dikatakan kurang aman daripada POST karena data yang dikirimkan melalui form GET akan terlihat pada URL sebagai paramater, selain itu Form GET memiliki batasan panjang yang terbatas.


2. Apa perbedaan utama antara XML, JSON, dan HTML dalam konteks pengiriman data?

-> XLM (Extensible Markup Languange) biasa digunakan untuk  pertukaran data antara aplikasi dan server atau representasi data dalam database. XLM mempunyai struktur data Tree, dan memiliki tanda penghubung seperti <xxx> </xxx> yang mengelilingi elemen-elemen pada datanya

-> JSON (Javascript Object Notation) memiliki kegunaan yang mirip dengan XLM yaitu untuk pertukaran data antara aplikasi dan server atau representasi data didalam database. JSON mempunyai mempunyai struktur {"key" : "value"} untuk objek atau ["item1","item2"] untuk array. Karena struktur yang mudah dibaca dan digunakan JSON lebih sering digunakan dibanding XML.

-> HTML (Hypertext Markup Language) memiliki kegunaan untuk membuat struktur  dan tampilan konten konten yang dapat dirender oleh web.

dapat disimpulkan dalam konteks pengiriman data, XLM dan JSON digunakan sebagai format pertukaran data antara server dan aplikasi, sedangkan HTML untuk mengatur tampilan dan struktur yang akan dirender oleh web. 
 
3. Mengapa JSON sering digunakan dalam pertukaran data antara aplikasi web modern?

-> Seperti yang disebutkan pada pertanyaan no 2, alasan JSON lebih banyak diminati disebabkan oleh struktur data JSON yang lebih ringkas sehingga mudah untuk dibaca dan , selain itu JSON juga memiliki ukuran yang lebih ringan dibandingkan format lain seperti XML.


4. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).

Pertama-tama saya membuat template html untuk seluruh html pada aplikasi pada folder templates di root project, dan kemudian mendaftarkannya pada settings.py

Selanjutnya saya membuat file forms.py pada folder main untuk menerima input form item baru. 

Setelah membuat form saya membuat sebuah method pada views.py yang berfungsi untuk membuat Itemform baru , memvalidasi input, dan merender hasil tampilan form yang baru dibuat.

Setelah itu saya mengubah fungsi show_main (menambahkan list of item pada context halaman) agar dapat menerima data-data yang ada tersimpan apda model di database

Setelah itu saya membuat template html baru untuk form yang baru dibuat.

Setelah itu saya menambahkan tabel pada main.html untuk menampilkan item-item yang tersimpan dalam database

Setelah itu saya membuat fungsi fungsi untuk menampilkan response dalam bentuk XML dan JSON serta memfilter response tersebut berdasarkan idnya. Hal ini didapat menggunakan bantuan dari package serializers yang memungkinkan untuk mengubah objek model menjadi JSON dan XML. Dan untuk filter response berdasarkan ID didapat menggunakan function filter().

Selanjutnya, saya mendaftarkan path-path dari fungsi-fungsi tersebut kedalam urls.py pada main. Karena fungsi untuk memfilter berdasarkan id membutuhkan parameter, path yang didaftarkan dibuat untuk dapat menerima input integer


5. Akses kelima URL (HTML,XML,JSON,XML by ID, JSON by ID)












































#### TUGAS 2 #####

Link aplikasi adaptable : [Link Aplikasi Adaptable](https://django-inventory.adaptable.app/main/)


1. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).

    pertama-tama saya membuat proyek django baru dengan menginstall requirement yang dibutuhkan untuk project ini, kemudian menambahkan repositori lokal ini ke repositaru github saya (sudah ada .gitignore). 
    
    Setelah itu saya membuat app main melalui terminal dan menambahkannya ke settings.py pada direktori proyek.

    Setelah itu saya membuat file template HTML yang berisi judul aplikasi, nama dan kelas saya ( untuk nama dan kelas mengambil data dari context pada views.py). 

    Setelah membuat template, saya membuat model baru bernama Item yang memiliki atribut name, amount, description, dan category. 
    
    setelah model dibuat saya melalkukan migrasi model melalui terminal. 

    setelah migrasi berhasil, saya membuat sebuah function pada views.py untuk menampilkan template html yang telah dibuat.
    
    Kemudian setelah itu, saya melakukan routing melalui urls.py pada app main untuk mengarahkan ke fungsi yang telah saya buat pada views.py

    setelah itu, saya memasukkan routing kedalam urls.py pada direktori proyek.

    setelah semua selesai, saya memelakukan git add, commit, dan push untuk selanjutnya melakukan deploy ke adaptable.


2. Buatlah bagan yang berisi request client ke web aplikasi berbasis Django beserta responnya dan jelaskan pada bagan  tersebut kaitan antara urls.py, views.py, models.py, dan berkas HTML.

    ![Client Request Chart](https://raw.githubusercontent.com/Daffa2101/django-inventory/main/images/chart.jpg)

    Kaitan antara urls.py, views.py, models.py, dan berkas HTML:
    
    -> urls.py berfungsi untuk mengarahkan Request client ke View yang dinginkan
   
    -> models.py berfungsi sebagai perantara antara database dan View pada saat mengolah data dari database.
   
    -> views.py melakukan logika bisnis dengan bantuan model dan template (HTML)
   
    -> Berkas HTML menyediakan template sebagai tampilan untuk data yang didapat pada View



4. Jelaskan mengapa kita menggunakan virtual environment? Apakah kita tetap dapat membuat aplikasi web berbasis Django tanpa menggunakan virtual environment?

    Alasan kita menggunakan virtual environment adalah untuk mendapatkan fleksibilitas pada manajemen dependensi yang kita butuhkan. Dengan begitu kita dapat terhindar dari konflik versi dari package global pada pc kita.

    Kita tetap dapat membuat aplikasi web berbasis Django tanpa menggunakan virtual environment, akan tetapi akan memiliki kekurangan serta resiko akan hal hal yang disebutkan sebelumnnya.

5. Jelaskan apakah itu MVC, MVT, MVVM dan perbedaan dari ketiganya.

MVC, MVT, dan MVVM merupakan kerangka / pola arsitektur software dalam pengembangan aplikasi untuk melakukan pemisahan antara logika bisnis, tampilan dan interaksi pengguna. Hal ini bertujuan untuk memudahkan pengembangan software serta mempermudah melakukan testing selama pengembangan software berlangsung.

Perbedaan ketiganya adalah seperti berikut : 

-> MVC (Model-View-Controller)

    flow / cara kerja arsitektur MVC:
    
        1. user berinteraksi dengan view dengan melakukan suatu action.
        
        2. action kemudian diteruskan ke Controller, pada Controller action tersebut diproses sesuai kebutuhan aplikasi.
        
        3. Controller akan berinteraksi dengan Model untuk mengambil atau mengubah data pada Model.
        
        4. Setelah berinteraksi dengan Model, Controller akan  mengupdate data yang akan ditampilkan dan mengirimkan ke View.
        
        5. View menerima data dari Controller kemudian mengupdate tampilan interface.

-> MVT (Model-View-Template)
  
    flow / cara kerja arsitektur MVT:
  
        1. User mengakses salah satu suatu URL
  
        2. Django akan menjadi pola URL yang sesuai pada urls.py dan menentukan View yang akan menerima request

        3. View menerima request dan melakukan logika bisnis yang diperlukan aplikasi
  
        4. Jika View memerlukan dat dari database, View mengakses memlalui perantara Model.
  
        5. Setelah proses pada databse oleh Model selesai, View akan menggunakan template (HTML) untuk melakukan render data tersebut ke tampilan yang dinginkan.
  
        6. Setelah Template selesai mengatur tampilan, View akan akan menghasilkan page HTML yang sudah dirender beserta HTTP response yang sesuai.
  
        7. HTTP Response berisi halaman HTML yang di request oleh user.

-> MVVM (Model-View-ViewModel)
  
    flow / cara kerja arsitektur MVVM:
  
        1. user berinteraksi dengan View dengan melakukan suatu action.
        
        2. Action yang didapat oleh View diteruskan ke ViewModel
        
        3. ViewModel mengelola logika bisnis aplikasi dan menjadi perantara antara View dan Model.
        
        4.Jika butuh menggunakan database, Model akan yang akan berinteraksi dengan database.
        
        5. Setelah data dari database didapatkan, Model meneruskan ke ViewModel.
        
        6. ViewModel kemudian melakukan proses yang dibutuhkan aplikasi pada data yang didapat sebelum diteruskan kepada View.
        
        7. Setelah data yang telah diproses diteruskan ke View, View akan merender tampilan sesuai yang dinginkan.
        
        8. Setelah itu user dapat melihat tampilan yang telah diperbarui dan siap melakukan interaksi lainnya.

