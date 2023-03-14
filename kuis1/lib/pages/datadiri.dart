import 'package:flutter/material.dart';

class DataDiri extends StatelessWidget {
  const DataDiri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(140),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage("assets/foto.png"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Abid Bilal ",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text("Profil : "),
              const SizedBox(
                height: 20,
              ),
              const Text("NIM : 123200069"),
              const SizedBox(
                height: 20,
              ),
              const Text("Kelas : IF-A"),
              const SizedBox(
                height: 20,
              ),
              const Text("Hobby : Musik"),
              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
