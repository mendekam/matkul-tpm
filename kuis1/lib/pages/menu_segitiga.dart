import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                    ),
                    child: const Text('Hitung'),
                    onPressed: luasSegitiga,
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
      hasil = luas.toString();
    });
  }
}
