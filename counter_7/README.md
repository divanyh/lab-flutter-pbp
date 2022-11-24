# [Tugas 7](#tugas-7-elemen-dasar-flutter), [Tugas 8](#tugas-8-flutter-form), dan [Tugas 9](#tugas-9-integrasi-web-service-pada-platform) PBP

# Tugas 9: Integrasi Web Service pada Flutter
### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? 
bisa, karena flutter memiliki serializer json yang dapat digunakan inline

### Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Tidak, karena tidak efisien dan efektif untuk project dalam skala besar

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
- ElevatedButton: untuk membuat button yang berfungsi untuk kembali ke page sebelumnya
- Navigator: untuk menjalankan fungsi ke ataupun kembali ke suatu page
- FutureBuilder: untuk membuat halaman yang isinya baru akan ada setelah didapatkan datanya
- 
### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter
1. Flutter melakukan pemanggilan ke url yang sudah berisi data json
2. Flutter melakukan parsing data tersebut 
3. Flutter melakukan mapping model yang dimilikinya dengan data json, disesuaikan dengan atribut model dari model dan data json

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
1. Menambahkan http dependencies kepada aplikasi flutter
2. Menambahkan code untuk melakukan pemanggilan terhadap url yang berisi data
3. Menambahkan code untuk melakukan parsing dan mapping data dengan model
4. Memberikan ability terhadap card untuk diklik dan menampilkan page detail movie
5. Menambahkan button untuk kembali

# Tugas 8: Flutter Form
### Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
Kedua method tersebut berguna untuk 'pindah' ke page yang lainnya. Perbedaan di antara keduanya adalah:
- Navigator.push: page saat ini di-pop terelbih dahulu lalu baru page yang dituju di-push ke screen
- Navigator.pushReplacement: page yang dituju di-push terlebih dahulu lalu page sebelumnya di-pop ketika page yang dituju selesai masuk <br>

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya
- Form: untuk menyediakan borang isian yang meminta input pengguna
- TextFormFields: untuk menyediakan salah satu elemen form yang berfungsi meminta inputan berupa text
- Card: untuk menampung suatu infromasi. Pada lab ini digunakan untuk menampilkan list budget
- DropDownButton: untuk menyediakan salah satu elemen form yang telah disediakan pilihan inputnya dan berfungsi meminta inputan berupa satu pilihan <br>

### Sebutkan jenis-jenis event yang ada pada Flutter
- AnimationEvent
- AnimationPlaybackEvent
- ApplicationCacheErrorEvent
- BeforeInstallPromptEvent
- BeforeUnloadEvent
- BlobEvent
- ClipboardEvent
- CloseEvent
- CustomEvent
- DeviceMotionEvent
- DeviceOrientationEvent
- ErrorEvent
- ExtendableEvent
- FontFaceSetLoadEvent
- GamepadEvent
- HashChangeEvent
- KeyEvent
- MediaEncryptedEvent
- MediaKeyMessageEvent
- MediaQueryListEvent
- MediaStreamEvent
- MediaStreamTrackEvent
- MessageEvent 
- MidiConnectionEvent 
- MidiMessageEvent 
- MutationEvent 
- PageTransitionEvent 
- PaymentRequestUpdateEvent 
- PopStateEvent 
- PresentationConnectionAvailableEvent 
- PresentationConnectionCloseEvent 
- ProgressEvent 
- PromiseRejectionEvent 
- RtcDataChannelEvent 
- RtcDtmfToneChangeEvent 
- RtcPeerConnectionIceEvent 
- RtcTrackEvent 
- SecurityPolicyViolationEvent 
- SensorErrorEvent 
- SpeechRecognitionError 
- SpeechRecognitionEvent 
- SpeechSynthesisEvent 
- StorageEvent 
- TrackEvent
- TransitionEvent
- UIEvent 
- VRDeviceEvent 
- VRDisplayEvent 
- VRSessionEvent 

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter
Cara kerja navigator dalam "mengganti" page adalah dengan menumpuk page tujuan di atas page semula seperti stack. Page tujuan akan dipush ke stack page yang ditampilkan<br>

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas
1. Membuat drawer untuk menampilkan list berisi navigasi page
2. Membuat class Budget untuk menjadi objek yang dibuat ketika pengisian form dan ditampilkan pada data Budget
3. Membuat form yang meminta input kepada pengguna untuk mengisi atribut-atribut objek Budget baru

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