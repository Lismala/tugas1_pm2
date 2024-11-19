import 'package:flutter/material.dart';
import 'package:tugas1_pm2/my_drawer.dart';

class KrsPage extends StatelessWidget {
  const KrsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kartu Rencana Studi'),
        centerTitle: true,
        backgroundColor: Colors.green[400],
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Scrollbar(
          child: Column(
            children: [
              const SizedBox(height: 16),
              _buildSemesterSection('Semester 1', const [
                'Agama',
                'Pancasila',
                'Matematika Dasar',
                'Fisika Dasar',
                'Algoritma & Pemrograman I',
                'Pengantar Teknologi Informasi',
                'Struktur Data',
                'Bahasa Inggris I',
              ]),
              const SizedBox(height: 16),
              _buildSemesterSection('Semester 2', const [
                'Algoritma & Pemrograman II',
                'Sistem Basis Data',
                'Bahasa Inggris II',
                'Matematika Informatika',
                'Organisasi & Arsitektur Komputer',
                'Literasi Digital',
                'Kewarganegaraan',
                'Metode Numerik',
              ]),
              const SizedBox(height: 16),
              _buildSemesterSection('Semester 3', const [
                'Statistika',
                'Teori Bahasa Otomata',
                'Sistem Operasi',
                'Rekayasa Perangkat Lunak',
                'Object Oriented Programming I',
                'Basis Data Terdistribusi',
                'Jaringan Komputer I',
              ]),
              const SizedBox(height: 16),
              _buildSemesterSection('Semester 4', const [
                'Object Oriented Programming II',
                'Object Oriented Analysis and Design',
                'Jaringan Komputer II',
                'Digital Preneurship',
                'Teknik Kompilasi',
                'Mobile Programming I',
                'Keamanan Komputer',
              ]),
              const SizedBox(height: 16),
              _buildSemesterSection('Semester 5', const [
                'Mobile Programming II',
                'Web Programming I',
                'Bahasa Indonesia',
                'Sistem Mikroprosessor',
                'Sistem Informasi Enterprise',
                'MK Pilihan I',
                'MK Pilihan II',
              ]),
              const SizedBox(height: 16),
              _buildSemesterSection('Semester 6', const [
                'Teknik Penulisan Literatur Ilmiah',
                'Web Programming II',
                'Metodologi Penelitian Informatika',
                'Sistem Mikrokontroler',
                'Data Mining',
                'MK Pilihan I',
                'MK Pilihan II',
              ]),
              const SizedBox(height: 16),
              _buildSemesterSection('Semester 7', const [
                'Artificial Intelligence',
                'PRIME',
                'Pra Skripsi',
                'Personal Development',
              ]),
              const SizedBox(height: 16),
              _buildSemesterSection('Semester 8', const [
                'Sistem Pakar',
                'Kerja Praktik',
                'Skripsi',
                'Profesional Development',
              ]),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSemesterSection(String semesterTitle, List<String> subjects) {
    return Container(
        color: Colors.green[50], // Warna latar belakang untuk setiap semester
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.green[400],
              child: Text(
                semesterTitle,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 200,
              child: Scrollbar(
                // Menambahkan scrollbar
                child: ListView.separated(
                  itemCount: subjects.length,
                  separatorBuilder: (context, index) =>
                      const Divider(color: Colors.black),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(subjects[index]),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
