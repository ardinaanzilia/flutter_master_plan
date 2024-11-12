<a href="https://flutter.dev/">
  <h1 align="center">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://storage.googleapis.com/cms-storage-bucket/6e19fee6b47b36ca613f.png">
      <img alt="Flutter" src="https://storage.googleapis.com/cms-storage-bucket/c823e53b3a1a7b0d36a9.png">
    </picture>
  </h1>
</a>

[![Flutter CI Status](https://flutter-dashboard.appspot.com/api/public/build-status-badge?repo=flutter)](https://flutter-dashboard.appspot.com/#/build?repo=flutter)
[![codecov](https://codecov.io/gh/flutter/flutter/branch/master/graph/badge.svg?token=11yDrJU2M2)](https://codecov.io/gh/flutter/flutter)
[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/5631/badge)](https://bestpractices.coreinfrastructure.org/projects/5631)
[![SLSA 1](https://slsa.dev/images/gh-badge-level1.svg)](https://slsa.dev)

# NoteApps

A Flutter project Task Note Dev By Nur Ardina Anzilia P.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### To run on Android, be sure you have built the module first:

bash
cd flutter_note_apps

flutter run id chrome

Run atau tekan F5 untuk melihat hasil aplikasi yang Anda telah buat. 

![result build](assets/WhatsApp%20Video%202024-11-12%20at%2010.30.31_b39901d2.gif)

#### Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

" File data_layer.dart berfungsi sebagai pintu masuk tunggal untuk mengakses semua model yang ada di dalam folder models. Hal ini membuat kode kamu menjadi lebih bersih, terorganisir, dan mudah dipelihara. "

#### Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

#### Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

" Apa itu initState()?

    Inisialisasi Awal: Metode ini dipanggil saat pertama kali sebuah widget dimasukkan ke dalam widget tree.
    Satu Kali Eksekusi: Metode ini hanya berjalan sekali selama siklus hidup widget.
    Tujuan:
        Menginisialisasi variabel-variabel yang akan digunakan di dalam state.
        Memulai animasi, timer, atau subscription.
        Melakukan operasi yang hanya perlu dilakukan satu kali saat widget pertama kali ditampilkan.

Contoh Penggunaan dalam Langkah 11:

    Membuat ScrollController: Di sini, scrollController dibuat untuk mengontrol scroll behavior dari suatu ListView atau ScrollView.
    Menambahkan Listener: Dengan addListener, kita menambahkan sebuah listener yang akan dipanggil setiap kali posisi scroll berubah.
    Mengatur Fokus: Ketika scroll berubah, fokus akan dipindahkan ke sebuah FocusNode yang kosong. Ini sering digunakan untuk menyembunyikan keyboard saat pengguna mengscroll.

Ringkasnya, initState digunakan untuk menyiapkan semua hal yang dibutuhkan oleh widget sebelum ditampilkan pertama kali.
dispose()

Apa itu dispose()?

    Pembersihan: Metode ini dipanggil saat widget akan dihapus dari widget tree.
    Satu Kali Eksekusi: Metode ini hanya berjalan sekali sebelum widget benar-benar dihapus.
    Tujuan:
        Membersihkan sumber daya yang sudah tidak digunakan lagi, seperti timer, subscription, atau animasi.
        Menghentikan proses yang sedang berjalan.
        Membatalkan listener yang telah ditambahkan sebelumnya.

Contoh Penggunaan dalam Langkah 13:

    Membuang ScrollController: Dengan memanggil scrollController.dispose(), kita membuang scrollController dan semua listener yang terkait dengannya. Ini penting untuk menghindari memory leak.

Ringkasnya, dispose digunakan untuk membersihkan semua resource yang telah digunakan oleh widget agar tidak menyebabkan masalah pada aplikasi.
Kenapa Penting?

    Mencegah Memory Leak: Jika kita tidak membuang resource yang sudah tidak digunakan, aplikasi kita bisa mengalami memory leak dan lambat laun menjadi tidak responsif.
    Meningkatkan Performa: Dengan membersihkan resource yang tidak diperlukan, kita dapat meningkatkan performa aplikasi.
    Memastikan Keamanan: Membuang resource yang sensitif (seperti subscription ke layanan eksternal) dapat meningkatkan keamanan aplikasi.

Kesimpulan

initState dan dispose adalah dua metode yang sangat penting dalam lifecycle stateful widget di Flutter. Dengan memahami fungsi dari kedua metode ini, kita dapat menulis kode yang lebih efisien, aman, dan terkelola dengan baik. "


![result build](assets/ScreenRecording2024-11-12111402-ezgif.com-video-to-gif-converter.gif)

#### Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?
" InheritedWidget di sini berfungsi sebagai wadah untuk berbagi data di antara widget-widget yang saling terkait. InheritedNotifier dipilih karena cocok untuk situasi di mana data yang dibagikan bisa berubah-ubah seiring waktu. Ketika data berubah, semua widget yang bergantung pada data tersebut akan secara otomatis diperbarui, sehingga tampilan aplikasi menjadi lebih responsif. "

#### Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
" Metode completedCount menghitung jumlah tugas yang memiliki properti complete bernilai true pada daftar tasks dalam objek Plan. Sementara itu, metode completenessMessage menghasilkan sebuah string yang menggambarkan persentase penyelesaian rencana berdasarkan hasil perhitungan dari completedCount. Tujuannya adalah untuk membuat data mengenai progres penyelesaian rencana menjadi lebih mudah diakses dan dimanipulasi. Dengan adanya dua metode ini, kita dapat menampilkan informasi yang relevan dan up-to-date kepada pengguna tanpa perlu menulis ulang logika perhitungan di berbagai tempat dalam kode. "

