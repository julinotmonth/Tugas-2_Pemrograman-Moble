import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilMahasiswaApp());
}

class ProfilMahasiswaApp extends StatelessWidget {
  const ProfilMahasiswaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Mahasiswa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfilMahasiswaPage(),
    );
  }
}

class ProfilMahasiswaPage extends StatelessWidget {
  const ProfilMahasiswaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F0FF), // warna lembut seperti di gambar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Profil Mahasiswa",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            // Avatar profil
            const CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFF4A8B9E),
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 60,
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              "Mohammad Krisna Rifkiansyah",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              "221080200046",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton.icon(
              onPressed: () {
                // aksi ketika tombol ditekan
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Detail Profil belum tersedia")),
                );
              },
              icon: const Icon(Icons.info_outline, color: Colors.deepPurple),
              label: const Text(
                "Lihat Detail",
                style: TextStyle(color: Colors.deepPurple),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
