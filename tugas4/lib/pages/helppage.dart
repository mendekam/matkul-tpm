import 'package:flutter/material.dart';


class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Menu Help: \n\n1. Di halaman ini anda dapat melihat informasi mengenai aplikasi ini.\n2. Anda dapat menekan tombol back untuk kembali ke halaman sebelumnya. \n3. Menu pada program ini dapat diakses dengan menekan tombol di bawah layar. \n4. Pada Home Page, anda dapat melihat informasi mengenai aplikasi ini.\n5. Pada Rekomendasi Page, anda dapat melihat rekomendasi warmindo yang ada di Yogyakarta.\n6. Pada Favorite Page, anda dapat melihat warmindo yang anda sukai.\n7. Pada Stopwatch Page, anda dapat melihat stopwatch yang dapat anda gunakan untuk menghitung waktu.\n8. Pada Anggota Page, anda dapat melihat informasi mengenai anggota kelompok kami."),
      ),
    );
  }
}