import 'package:flutter/material.dart';
// Impor kedua file halaman agar main.dart mengenali semuanya
import 'package:pesan_makan/login.dart';
import 'package:pesan_makan/myhomepage.dart';

// Fungsi utama yang pertama kali dijalankan saat aplikasi Flutter dibuka
void main() {
  runApp(const MyApp());
}

// Widget utama yang mengatur tema dan alur (routing) aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Menghilangkan pita "DEBUG" di pojok kanan atas layar
      title: 'Aplikasi Pesan Makan', // Judul nama aplikasi
      theme: ThemeData(
        // Mengatur skema warna dasar aplikasi
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // Mengaktifkan desain Material 3 terbaru
      ),
      // Menentukan halaman pertama yang muncul saat aplikasi dinyalakan
      home: const LoginPage(),
    );
  }
}
