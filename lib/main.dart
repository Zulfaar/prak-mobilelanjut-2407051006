import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan pita 'DEBUG' di pojok kanan atas
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Praktikum Mobile Lanjut - Pertemuan 2'),
          backgroundColor: Colors.deepPurple, // Mengubah warna AppBar
          foregroundColor: Colors.white, // Mengubah warna teks AppBar
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Halo, Nama Saya Zulfa Riana',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8), // Jarak antar teks
              Text(
                'NPM: 2407051006',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}