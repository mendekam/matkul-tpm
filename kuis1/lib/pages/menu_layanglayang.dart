import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MenuLayangLayang extends StatefulWidget {
  const MenuLayangLayang({super.key});

  @override
  State<MenuLayangLayang> createState() => _MenuLayangLayangState();
}

class _MenuLayangLayangState extends State<MenuLayangLayang> {
  final TextEditingController diagonal1Controller = TextEditingController();
  final TextEditingController diagonal2Controller = TextEditingController();
  String hasil = "";
  double diagonal1 = 0;
  double diagonal2 = 0;

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
                child: Image.asset('assets/layanglayang.jpg', height: 200, width: 200,),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(hasil),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  controller: diagonal1Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'Diagonal 1',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: TextField(
                  controller: diagonal2Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'Diagonal 2',
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
                    onPressed: luasLayangLayang,
                  )),
            ]),
      ),
    );
  }

  void luasLayangLayang() {
    double luas;
    diagonal1 = double.parse(diagonal1Controller.text);
    diagonal2 = double.parse(diagonal2Controller.text);

    luas = 0.5 * diagonal1 * diagonal2 ;

    setState(() {
      hasil = luas.toString();
    });
  }
}