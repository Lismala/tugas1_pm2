import 'package:flutter/material.dart';
import 'package:tugas1_pm2/home_page.dart';
import 'package:tugas1_pm2/krs_page.dart';
import 'package:tugas1_pm2/main.dart';
import 'package:tugas1_pm2/ukm_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green[400],
            ),
            child: const Row(
              children: [
                CircleAvatar(
                    radius: 30, // Ukuran lingkaran
                    backgroundImage:
                        AssetImage('lib/Asset/Foto Profile Lismala.png')),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Lismala',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Beranda'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.list),
            title: const Text('Kartu Rencana Studi'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const KrsPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text('Unit Kegiatan Mahasiswa'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UkmPage()),
              );
            },
          ),
          const Spacer(), // Mengisi ruang yang tersisa
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Keluar'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}