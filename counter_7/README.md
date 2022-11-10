# Tugas 7: Elemen Dasar Flutter

### Apa yang dimaksud dengan stateless widget dan stateful widget? Jelaskan perbedaan dari keduanya
- Stateless widget:
    Widget yang tidak memiliki state atau dengan kata lain widget ini tidak akan berubah walaupun ada interaksi pengguna kepadanya. Akan tetapi, widget ini dapat berubah jika ada external event pada parentnya.
- Stateful widget:
    Widget yang dinamis karena dapat berubah penampilannya ketika ada event yang di trigger oleh user atau ketika adanya load data. Stateful Widget immutable tetapi memiliki class yang dapat merepresentasikan statenya. <br>

Perbedaan yang paling mencolok di antara keduanya adalah stateless widget benar-benar tidak akan berubah ketika ada aksi internal atau behaviour tertentu sedangkan stateful widget sebaliknya.    

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
- title: memberikan judul/nama program yang mendeskripsikan program
- theme: memberikan penuansaan pada program
- homepage: menampilkan halaman depan program
- appbar: semacam navbar, pada program ini digunakan untuk menampilkan nama program
- body: merupakan tubuh dari aplikasi untuk menampilkan widget-widget
- text: berfungsi untuk menampilkan deskripsi atau suatu tulisan yang diperlukan pada program
- button : berfungsi untuk mentrigger event sehingga akan terjadi perubahan pada widget yang dipengaruhinya

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut
Fungsi dari setState adalah untuk memberitahu framework untuk mengubah tampilan widget karena adanya event yang ditrigger pengguna.<br>
Variabel yang terdampak adalah variabel-variabel yang merupakan stateful widget.<br>

### Jelaskan perbedaan antara const dengan final
- const digunakan untuk menginisialisasi sebuah variabel jika sudah diketahui nilainya ketika program di-compile. Hal ini menjadikan const tidak dapat digunakan untuk variabel yang valuenya baru diketahui ketika program di-run. Const pun menjadikan semua variabel yang ada di dalamnya menjadi const.
- final digunakan untuk menginisialisasi sebuah variabel yang belum diketahui nilainya ketika program dicompile dan nilainya akan didapat ketika program sudah berjalan. Contohnya adalah ketika kita ingin mengambil data dari database, data tersebut belum akan ada ketika program dicompile. Selain itu, semua yang di dalam final belum tentu final juga.<br>

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
1. Membuat fungsi untuk mengubah text dan stylenya jika angka pada counter ganjil/genap
2. Membuat action button menjadi stack dan positioned agar dapat memiliki dua button dan dapat diletakkan di pojok-pojok bawah layar
3. Mengubah title homepage