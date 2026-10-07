import 'package:flutter/material.dart';
import 'myhomepage.dart'; // Mengimpor file halaman utama agar bisa berpindah halaman

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Variabel controller untuk menyimpan dan mengambil teks yang diketik pengguna
  TextEditingController inputUsername = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("pesan_makan"), // Judul di bagian atas aplikasi
      ),
      backgroundColor: const Color.fromARGB(
        169,
        215,
        141,
        187,
      ), // Warna latar belakang layar
      body: Column(
        children: [
          const SizedBox(height: 20), // Memberi jarak kosong dari atas layar
          // Input Field 1: Username
          Center(
            child: SizedBox(
              width: 300, // Mengatur lebar kolom input
              child: TextFormField(
                controller:
                    inputUsername, // Menghubungkan kolom dengan variabel inputUsername
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(
                    255,
                    70,
                    198,
                    207,
                  ), // Warna dalam kolom input
                  hintText: 'Masukan Username', // Teks petunjuk sebelum diisi
                  filled: true, // Mengaktifkan warna background pada kolom
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ), // Membuat sudut kolom melengkung
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 16,
          ), // Jarak antara input username dan password
          // Input Field 2: Password
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller:
                    inputPassword, // Menghubungkan kolom dengan variabel inputPassword
                obscureText:
                    true, // Menyembunyikan ketikan teks menjadi titik-titik (khusus password)
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 70, 198, 207),
                  hintText: 'Masukan Password',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 16), // Jarak antara input password dan tombol
          // Tombol Login
          ElevatedButton(
            child: const Text("Login"),
            onPressed: () {
              // Menampilkan isi teks username dan password ke terminal (console)
              print(inputUsername.text);
              print(inputPassword.text);

              // Fungsi untuk berpindah dari layar Login ke layar MyHomePage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
