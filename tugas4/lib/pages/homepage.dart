import 'package:flutter/material.dart';
import 'package:tugas4/const/colors.dart';
import 'package:tugas4/data/warmindo.dart';
import 'package:tugas4/pages/favoritepage.dart';
import 'package:tugas4/pages/stopwatchpage.dart';
import 'anggotapage.dart';
import 'rekomendasipage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: primary),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AnggotaPage()));
                  },
                  child: Text("Daftar Anggota")),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: primary),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StopwatchPage()));
                  },
                  child: Text("Stopwatch")),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: primary),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RekomendasiPage()));
                  },
                  child: Text("Rekomendasi Warmindo")),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: primary),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FavoritePage(warmindos: warmindoList,)));
                },
                child: Text("Favorite")),
          ],
        ),
      ),
    );
  }
}
