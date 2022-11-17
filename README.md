## Stateless Widget dan Stateful Widget
Stateless widget merupakan widget yang tidak mempunyai state. Stateless widget bersifat statis alias tidak dapat diubah. Contoh dari stateless widget adalah `Text` dan `Icon`.

Stateful widget merupakan widge yang mempunyai state dan bersifat dinamis (dapat berubah-ubah). Contoh dari stateful widget adalah `CheckBox`, `Radio`.
## Widget pada proyek
- `Scaffold`: menyimpan seluruh widget yang akan ditampilkan dan berlaku sebagai widget utama
- `AppBar`: menampilkan app bar yang pada umumnya terdapat pada baris atas aplikasi dan dapat berisi widget lain (biasanya selalu ada judul)
- `Center`: menempatkan child padanya di posisi tengah
- `Column`: menempatkan children padanya secara vertikal
- `Row`: menempatkan children padanya secara horizontal
- `Padding`: memberikan padding pada childnya
- `EdgeInsets`: memberikan padding secara detail
- `Text` : berguna untuk menampilkan tulisan.
- `Visibility`: untuk menyembunyikan/menampilkan widget
- `FloatingActionButton`: button yang dapat ditekan
- `Icon`: jenis-jenis icon pada tombol

## setState()
setState() adalah tanda pemberitahuan ke framework bahwa ada perubahan state lalu framework akan mengupdate dan merender ulang widget tsb, variable yang terdampak adalah yang terdapat di dalam setState(). Dalam tugas 7 ini berarti `_counter`.

## const dan final
const dan final sama-sama variable yang bersifat konstan dan tidak bisa diganti lagi. Namun perbedaannya kalau const nilainya ditentukan saat compile-time, sedangkan final pada saat runtime.

## Penjelasan Implementasi

### Step 1
`flutter create counter_7` dan mengubah title jadi `Program Counter`.

### Step 2
Membuat fungsi `_decrementCounter`, tapi ingat hanya bisa dilakukan ketika `_counter > 0`

### Step 3
Mengupdate body pada Scaffold untuk memberikan GANJIL/GENAP dan warna.

### Step 4
Menambahkan widget `Padding`, yang berisikan spesifikasi padding dan 2 tombol. 2 tombol mencakup widget `FloatingActionBotton`, khusus untuk yang button `-`, tambahkan `Visibility` pada parentnya. Jangan lupa sesuaikan onPressed dan Icon yang dipilih untuk botton tsb.

# Tugas 8

## Navigator push dan Navigator pushReplacement
Baik `Navigator.push` maupun `Navigator.pushReplacement` sama-sama mem-push sebuah route baru ke Navigator. Namun kalau, `Navigator.pushReplacement` akan menghapus route sebelumnya setelah route yang baru telah selesai loading dan sudah digunakan.
## Widget pada proyek
- `Scaffold`: menyimpan seluruh widget yang akan ditampilkan dan berlaku sebagai widget utama
- `AppBar`: menampilkan app bar yang pada umumnya terdapat pada baris atas aplikasi dan dapat berisi widget lain (biasanya selalu ada judul)
- `Center`: menempatkan child padanya di posisi tengah
- `Column`: menempatkan children padanya secara vertikal
- `Row`: menempatkan children padanya secara horizontal
- `Padding`: memberikan padding pada childnya
- `EdgeInsets`: memberikan padding secara detail
- `Text` : berguna untuk menampilkan tulisan.
- `Visibility`: untuk menyembunyikan/menampilkan widget
- `FloatingActionButton`: button yang dapat ditekan
- `Icon`: jenis-jenis icon pada tombol
- `TextFormField`: widget TextField yang terhubung dengan Form, berfungsi untuk menyediakan field bagi pengguna untuk memasukkan teks
- `SizedBox`: widget berupa box yang bisa ditentukan ukurannya dan berfungsi memberi jarak
- `DropdownButton`: widget tombol yang ketika ditekan oleh pengguna akan menampilkan dropdown yang dapat dipilih
- `MaterialApp`: widget yang dijalankan pertama kali ketika eksekusi fungsi pada main() dan berfungsi untuk wrapping widget lain yang diimplementasikan dengan Material Design pada halaman aplikasi
- `Form`: widget yang bermanfaat dalam membungkus beberapa form field widget agar menjadi satu kesatuan

## Event
- onHover
- onEnter
- onExit
- onPressed
- onChanged

## Cara kerja Navigator
Navigator pada flutter pada intinya cara kerjanya sama kayak struktur data Stack. Jadi kalau ada operasi `Navigator.push`  route yang hendak di-push akan masuk ke atas stack Navigator dan akan tampilkan itu. Kalau ada operasi `Novigator.pop` maka, akan membuang/mengeluarkan yang sedang ada di top (yang sedang ditayangkan), dan sekarang top nya adalah route sebelumnya dan tayangkan itu.

## Penjelasan Implementasi

### Step 1
Membuat file baru `drawer.dart` yang berisi kumpulan widget Drawer yang akan digunakan pada aplikasi. Untuk tugas ini ada 3 drawer, dan akan memakai widget `ListTile`

### Step 2
OnProgress...
