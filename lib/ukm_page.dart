import 'package:flutter/material.dart';
import 'package:tugas1_pm2/my_drawer.dart';

class UkmPage extends StatelessWidget {
  const UkmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unit Kegiatan Mahasiswa'),
        centerTitle: true,
        backgroundColor: Colors.green[400],
      ),
      drawer: const MyDrawer(),
      backgroundColor: Colors.green[50],
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.5, // Mengatur rasio aspek agar lebih lebar
        padding: const EdgeInsets.all(8.0),
        children: [
          _buildCard(Icons.groups, 'Dewan Perwakilan Mahasiswa'),
          _buildCard(Icons.camera, 'Unit Filmmaker & Photography'),
          _buildCard(Icons.groups, 'Badan Eksekutif Mahasiswa'),
          _buildCard(Icons.sports_soccer, 'Futsal UTB'),
          _buildCard(Icons.groups, 'HIMA Teknik Industri'),
          _buildCard(Icons.sports_basketball, 'Basket UTB'),
          _buildCard(Icons.groups, 'HIMA Teknik Informatika'),
          _buildCard(Icons.music_video, 'Fabulous Dance Crew'),
          _buildCard(Icons.groups, 'HIMA Desain Komunikasi Visual'),
          _buildCard(Icons.music_note_outlined, 'Music Society'),
          _buildCard(Icons.groups, 'HIMA Bisnis Digital'),
          _buildCard(Icons.theater_comedy, 'Teater Saka Daraka'),
          _buildCard(Icons.groups, 'Ikatan Mahasiswa Islam'),
          _buildCard(Icons.music_note_sharp, 'Keluarga Paduan Angklung'),
          _buildCard(Icons.groups, 'Persekutuan Mahasiswa Kristen'),
          _buildCard(Icons.surround_sound, 'Paduan Suara Mahasiswa'),
          _buildCard(Icons.forest, 'Mapala Suraung'),
          _buildCard(Icons.book, 'Literasi Ensiklopedia'),
          _buildCard(Icons.gamepad, 'E-Sport'),
          _buildCard(Icons.group, 'Pramuka'),
          _buildCard(Icons.animation, 'Senmon no Nihon'),
          _buildCard(Icons.corporate_fare_sharp, 'Korps Suka Relawan'),
          _buildCard(Icons.shop, 'Ikatan KWU Mahasiswa'),
        ],
      ),
    );
  }

  Widget _buildCard(IconData icon, String title) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, size: 40, color: Colors.green[400]), // Menambahkan ikon
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
