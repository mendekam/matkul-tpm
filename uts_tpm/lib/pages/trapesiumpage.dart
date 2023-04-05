import 'dart:math';
import 'package:flutter/material.dart';
import '../config/colors.dart';

class TrapesiumPage extends StatefulWidget {
  const TrapesiumPage({super.key});

  @override
  State<TrapesiumPage> createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  final TextEditingController sisiAtasController = TextEditingController();
  final TextEditingController sisiBawahController = TextEditingController();
  final TextEditingController tinggiController = TextEditingController();
  String hasil = "";
  double sisiAtas = 0;
  double sisiBawah = 0;
  double tinggi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trapesium'),
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
                  'assets/images/trapesium.jpg',
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
                  controller: sisiAtasController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'Sisi Atas',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  controller: sisiBawahController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'Sisi Bawah',
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
                    onPressed: luasTrapesium,
                    child: const Text('Hitung Luas'),
                  )),
              Container(
                  height: 80,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primary,
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: kelilingTrapesium,
                    child: const Text('Hitung Keliling'),
                  )),
            ]),
      ),
    );
  }

  void luasTrapesium() {
    double luas;
    double sisiAtas = double.parse(sisiAtasController.text);
    double sisiBawah = double.parse(sisiBawahController.text);
    double tinggi = double.parse(tinggiController.text);

    luas = 0.5 * (sisiAtas + sisiBawah) * tinggi;

    setState(() {
      hasil = luas.toString();
    });
  }

  void kelilingTrapesium() {
    double keliling;
    double sisiAtas = double.parse(sisiAtasController.text);
    double sisiBawah = double.parse(sisiBawahController.text);
    double tinggi = double.parse(tinggiController.text);
    double sisiMiring =
        sqrt(pow((sisiAtas - sisiBawah).abs(), 2) + pow(tinggi, 2));

    keliling = sisiAtas + sisiBawah + tinggi + sisiMiring;

    setState(() {
      hasil = "Keliling : $keliling";
    });
  }
}
