import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:tugas1_pm2/my_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: const Text("Beranda"),
        centerTitle: true,
      ),
      drawer: const MyDrawer(),
      backgroundColor: Colors.green[50], // Warna latar belakang body halaman
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Card untuk ucapan selamat datang
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  width: 300,
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: FadeInUp(
                      duration: const Duration(milliseconds: 1000),
                      child: const Text(
                        "Selamat Datang Kembali!",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  width: 300, 
                  height: 300,
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: const CircleAvatar(
                          radius: 50, // Mengatur radius untuk membuat gambar lebih kecil
                          backgroundImage:
                              AssetImage('lib/Asset/Foto Profile Lismala.png'),
                        ),
                      ),
                      const SizedBox(height: 20),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: const Text(
                          "Lismala",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 10),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: const Text(
                          "NIM: 21552011354",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ),
                      const SizedBox(height: 10),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1000),
                        child: const Text(
                          "TIF RM 22 CID",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}