import 'package:flutter/material.dart';
import 'package:uts_tpm/config/colors.dart';
import 'package:uts_tpm/pages/tabungpage.dart';
import 'package:uts_tpm/pages/trapesiumpage.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
          backgroundColor: primary,
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primary,
                            fixedSize: const Size(200, 50),),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const TrapesiumPage()));
                          },
                          child: const Text("Trapesium")),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primary,
                          fixedSize: const Size(200, 50),),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TabungPage()));
                        },
                        child: const Text("Tabung")),
                  ],
                ))));
  }
}
