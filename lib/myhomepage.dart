import 'package:flutter/material.dart'; // Mengimpor pustaka utama UI Material dari Flutter

class MyHomePage extends StatefulWidget { // Deklarasi class MyHomePage berjenis StatefulWidget[cite: 2]
  const MyHomePage({super.key}); // Konstruktor untuk class MyHomePage[cite: 2]

  @override
  State<MyHomePage> createState() => _MyHomePageState(); // Membuat state untuk mengelola keadaan MyHomePage[cite: 2]
}

class _MyHomePageState extends State<MyHomePage> { // Class state untuk mengelola tampilan dan logika halaman utama[cite: 2]
  TextEditingController inputNama = TextEditingController(); // Controller untuk mengambil isi teks dari input nama[cite: 2]

  @override
  void dispose() { // Metode yang dipanggil saat widget dihapus dari pohon widget
    inputNama.dispose(); // Membersihkan controller agar tidak memicu kebocoran memori (memory leak)
    super.dispose(); // Memanggil fungsi dispose bawaan kelas induk
  }

  @override
  Widget build(BuildContext context) { // Metode utama untuk membangun tampilan UI[cite: 2]
    return Scaffold( // Struktur tata letak dasar halaman[cite: 2]
      appBar: AppBar( // Bilah bagian atas halaman[cite: 2]
        title: const Text("pesan_makan"), // Menampilkan judul aplikasi pada AppBar
      ),
      backgroundColor: const Color.fromARGB(169, 215, 141, 187), // Mengatur warna latar belakang halaman
      body: Column( // Menyusun elemen-elemen UI secara vertikal ke bawah[cite: 2]
        children: [
          Center( // Memosisikan bidang input tepat di tengah secara horizontal[cite: 2]
            child: SizedBox( // Pembatas ukuran untuk lebar bidang input
              width: 300, // Menentukan lebar bidang input 300 piksel[cite: 2]
              child: TextFormField( // Komponen untuk bidang isian teks[cite: 2]
                controller: inputNama, // Menghubungkan input teks dengan controller inputNama[cite: 2]
                decoration: const InputDecoration( // Mengatur dekorasi tampilan input[cite: 2]
                  fillColor: Color.fromARGB(255, 70, 198, 207), // Warna latar belakang isi bidang input
                  hintText: 'Masukan Nama', // Teks petunjuk saat bidang input masih kosong[cite: 2]
                  filled: true, // Mengaktifkan warna isian latar belakang[cite: 2]
                  border: OutlineInputBorder( // Garis tepi bidang input berbentuk melengkung[cite: 2]
                    borderRadius: BorderRadius.all(Radius.circular(40)), // Kelengkungan sudut garis tepi 40 piksel[cite: 2]
                  ),
                ),
                onFieldSubmitted: (values) { // Aksi yang berjalan saat tombol 'enter' di papan ketik ditekan[cite: 2]
                  inputNama.text = values; // Memasukkan nilai teks yang diketik ke controller[cite: 2]
                },
              ),
            ),
          ),
          const SizedBox(height: 16), // Memberikan jarak vertikal 16 piksel
          ElevatedButton( // Komponen tombol dengan gaya terangkat/timbul[cite: 2]
            child: const Text("Tampilkan Nama"), // Label teks pada tombol[cite: 2]
            onPressed: () { // Aksi yang dijalankan saat tombol ditekan[cite: 2]
              print(inputNama.text); // Mencetak teks dari controller inputNama ke terminal/konsol[cite: 2]
            },
          ),
        ],
      ),
    );
  }
}