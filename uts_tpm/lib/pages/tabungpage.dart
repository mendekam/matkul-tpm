import 'dart:math';
import 'package:flutter/material.dart';
import '../config/colors.dart';

class TabungPage extends StatefulWidget {
  const TabungPage({super.key});

  @override
  State<TabungPage> createState() => _TabungPageState();
}

class _TabungPageState extends State<TabungPage> {
  final TextEditingController radiusController = TextEditingController();
  final TextEditingController tinggiController = TextEditingController();
  String hasil = "";
  double pi = 3.14;
  double radius = 0;
  double tinggi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabung'),
        backgroundColor: primary,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 70),
                child: Image.asset(
                  'assets/images/tabung.png',
                  height: 200,
                  width: 200,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(hasil),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  controller: radiusController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'jari-Jari',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  controller: tinggiController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'Tinggi',
                  ),
                ),
              ),
              Container(
                  height: 80,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primary,
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: luasTabung,
                    child: const Text('Hitung Luas Permukaan'),
                  )),
              Container(
                  height: 80,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primary,
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: volumeTabung,
                    child: const Text('Hitung Volume'),
                  )),
            ]),
      ),
    );
  }

  void luasTabung() {
    double luas;
    double radius = double.parse(radiusController.text);
    double tinggi = double.parse(tinggiController.text);

    luas = 2 * pi * radius * (tinggi + radius);

    setState(() {
      hasil = luas.toString();
    });
  }

  void volumeTabung() {
    double volume;
    double radius = double.parse(radiusController.text);
    double tinggi = double.parse(tinggiController.text);

    volume = pi * pow(radius, 2) * tinggi;

    setState(() {
      hasil = "Volume : $volume";
    });
  }
}
