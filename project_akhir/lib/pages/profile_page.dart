import 'package:flutter/material.dart';
import 'package:project_akhir/pages/waktu_page.dart';

import '../config/colors.dart';
import 'konversi_page.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: secondary,
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/foto.jpg'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Abid Bilal',
              style: TextStyle(
                  fontSize: 30.0, fontWeight: FontWeight.bold, color: text),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Tempat, Tanggal Lahir : Yogyakarta 7 Desember 2001',
              style: TextStyle(fontSize: 16.0, color: text),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'NIM: 123200069',
              style: TextStyle(fontSize: 16.0, color: text),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: text),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, KonversiPage.routeName);
                },
                child: const Text(
                  'Konversi Mata Uang',
                  style: TextStyle(color: primary),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: text),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, WaktuPage.routeName);
                },
                child: const Text(
                  'Konversi Waktu',
                  style: TextStyle(color: primary),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: text),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Kesan dan Pesan:\n\n'
                  'Kesan: Mata kuliah TPM sangat membuat saya bersemangat untuk mempelajari hal baru \n'
                  'Pesan: Semoga mata kuliah ini dapat terus dikembangkan dan bermanfaat untuk mahasiswa lainnya',
                  style: TextStyle(fontSize: 14, color: text),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
