import 'package:flutter/material.dart'; // Mengimpor pustaka utama UI Flutter
import 'myhomepage.dart'; // Mengimpor file halaman utama (myhomepage.dart)

class LoginPage extends StatefulWidget { // Deklarasi widget LoginPage yang bersifat Stateful
  const LoginPage({super.key}); // Konstruktor untuk class LoginPage

  @override
  State<LoginPage> createState() => _LoginPageState(); // Membuat state dari LoginPage
}

class _LoginPageState extends State<LoginPage> { // Class state untuk mengelola UI dan logika Login
  // Controller untuk menangkap input teks username
  TextEditingController inputUsername = TextEditingController(); 
  
  // Controller untuk menangkap input teks password
  TextEditingController inputPassword = TextEditingController(); 

  // Fungsi untuk memproses validasi login
  void _handleLogin() {
    String username = inputUsername.text.trim(); // Mengambil nilai username dan menghapus spasi
    String password = inputPassword.text.trim(); // Mengambil nilai password dan menghapus spasi

    // a. Pengecekan jika username atau password kosong
    if (username.isEmpty || password.isEmpty) {
      // Menampilkan pesan notifikasi error di bagian bawah layar
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Username dan Password tidak boleh kosong!'), // Teks peringatan
          backgroundColor: Colors.red, // Warna latar notifikasi merah
        ),
      );
      return; // Menghentikan eksekusi kode agar tidak bisa berpindah rute[cite: 1]
    }

    // b. Pengecekan jika username bernilai admin dan password bernilai 12345[cite: 1]
    if (username == 'admin' && password == '12345') {
      // Berpindah ke rute '/home' dan menggantikan halaman login (tidak bisa kembali ke login)
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // Menampilkan pesan notifikasi jika username atau password salah
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Username atau Password salah!'), // Teks kesalahan
          backgroundColor: Colors.red, // Warna latar notifikasi merah
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) { // Metode utama untuk membangun tampilan UI
    return Scaffold( // Struktur dasar tata letak layar
      appBar: AppBar( // Bilah bagian atas layar
        title: const Text("pesan_makan"), // Judul aplikasi pada AppBar
      ),

      backgroundColor: const Color.fromARGB( // Mengatur warna latar belakang halaman
        169,
        215,
        141,
        187,
      ),

      body: SingleChildScrollView( // Membungkus body agar layar bisa di-scroll saat papan ketik muncul
        child: Column( // Menyusun widget secara vertikal ke bawah
          children: [
            const SizedBox(height: 20), // Memberikan jarak vertikal 20 piksel

            // d. Menampilkan gambar dari folder asset/images/order.png[cite: 1]
            Center( // Memosisikan gambar di tengah layar
              child: Image(
                image: const AssetImage('asset/images/order.png'), // Mengambil aset gambar[cite: 1]
                width: 200, // Menentukan lebar gambar 200 piksel
                height: 200, // Menentukan tinggi gambar 200 piksel
              ),
            ),

            const SizedBox(height: 20), // Memberikan jarak vertikal 20 piksel

            // Input Username
            Center( // Memosisikan bidang input di tengah
              child: SizedBox( // Mengatur ukuran pembatas bidang input
                width: 300, // Menentukan lebar bidang input 300 piksel
                child: TextFormField( // Komponen input teks
                  controller: inputUsername, // Menghubungkan input dengan controller username
                  decoration: const InputDecoration( // Mengatur dekorasi tampilan input
                    prefixIcon: Icon(Icons.person), // c. Menambahkan ikon pengguna di sisi kiri[cite: 1]
                    fillColor: Color.fromARGB(255, 70, 198, 207), // Warna latar belakang input
                    hintText: 'Masukan Username', // Teks petunjuk saat bidang kosong
                    filled: true, // Mengaktifkan warna isian latar belakang
                    border: OutlineInputBorder( // Menentukan garis tepi bentuk melengkung
                      borderRadius: BorderRadius.all(
                        Radius.circular(40), // Kelengkungan sudut sebesar 40 piksel
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16), // Memberikan jarak vertikal 16 piksel

            // Input Password
            Center( // Memosisikan bidang input di tengah
              child: SizedBox( // Mengatur ukuran pembatas bidang input
                width: 300, // Menentukan lebar bidang input 300 piksel
                child: TextFormField( // Komponen input teks
                  controller: inputPassword, // Menghubungkan input dengan controller password
                  obscureText: true, // Menyembunyikan karakter teks agar berbentuk titik password
                  decoration: const InputDecoration( // Mengatur dekorasi tampilan input
                    prefixIcon: Icon(Icons.lock), // c. Menambahkan ikon gembok di sisi kiri[cite: 1]
                    fillColor: Color.fromARGB(255, 70, 198, 207), // Warna latar belakang input
                    hintText: 'Masukan Password', // Teks petunjuk saat bidang kosong
                    filled: true, // Mengaktifkan warna isian latar belakang
                    border: OutlineInputBorder( // Menentukan garis tepi bentuk melengkung
                      borderRadius: BorderRadius.all(
                        Radius.circular(40), // Kelengkungan sudut sebesar 40 piksel
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16), // Memberikan jarak vertikal 16 piksel

            // Tombol Login
            ElevatedButton( // Komponen tombol dengan gaya terangkat
              child: const Text("Login"), // Label teks pada tombol
              onPressed: () { // Aksi yang dijalankan saat tombol ditekan
                _handleLogin(); // Memanggil fungsi pemroses validasi dan rute login
              },
            ),
          ],
        ),
      ),
    );
  }
}