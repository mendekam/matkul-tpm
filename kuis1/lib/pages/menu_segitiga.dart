import 'package:flutter/material.dart';
import 'package:kuis1/const/color.dart';
import 'dart:math';

class MenuSegitiga extends StatefulWidget {
  const MenuSegitiga({super.key});

  @override
  State<MenuSegitiga> createState() => _MenuSegitigaState();
}

class _MenuSegitigaState extends State<MenuSegitiga> {
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  String hasil = "";
  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 70),
                child: Image.asset('assets/segitiga.jpg', height: 200, width: 200,),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(hasil),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  controller: widthController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'Panjang Alas',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  controller: heightController,
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
                      minimumSize: const Size.fromHeight(20),
                    ),
                    onPressed: luasSegitiga,
                    child: const Text('Hitung Luas'),
                  )),
                  Container(
                  height: 80,
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primary,
                      minimumSize: const Size.fromHeight(20),
                    ),
                    onPressed: kelilingSegitiga,
                    child: const Text('Hitung Keliling'),
                  )),
            ]),

      ),
    );
  }

  void luasSegitiga() {
    double luas;
    width = double.parse(widthController.text);
    height = double.parse(heightController.text);

    luas = height * width / 2;

    setState(() {
      hasil = "Luas : $luas";
    });
  }

  void kelilingSegitiga() {
    double keliling;
    width = double.parse(widthController.text);
    height = double.parse(heightController.text);

    keliling = sqrt(pow(width, 2) + pow(height, 2)) + (height + width);

    setState(() {
      hasil = "Keliling : $keliling";
    });
  }
}
