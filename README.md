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
Menambahkan widget `Padding`, yang berisikan spesifikasi padding dan 2 tombol. 2 tombol mencakup widget `FloatingActionBotton`, khusus untuk yang button `-`, tambahkan `Visibility` pada parentnya. Jangan lupa sesuaikan onPressed dan Icon yang dipilih untuk botton tsb."# pbp-flutter-lab" 
"# pbp-flutter-lab" 
