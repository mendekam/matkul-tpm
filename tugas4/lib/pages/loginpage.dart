import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../data/users.dart';
import '../navigation/bottomnavigation.dart';
import 'homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController namaController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool msg = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: base,
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                "Login",
                style: TextStyle(
                    color: primary, fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 400,
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                style: TextStyle(color: primary),
                controller: namaController,
                decoration: const InputDecoration(
                    labelText: "Nama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )),
              ),
            ),
            Container(
              width: 400,
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                obscureText: true,
                style: TextStyle(color: primary),
                controller: passwordController,
                decoration: const InputDecoration(
                    alignLabelWithHint: true,
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )),
              ),
            ),
            Container(
              width: 100,
              height: 30,
              child: TextButton(
                onPressed: () {
                  for (var user in userList) {
                    if (namaController.text == user.name &&
                        passwordController.text == user.password) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BottomNavigation()));
                      msg = true;
                      break;
                    }
                  }
                  if (msg == false) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("NIM atau Password salah"),
                    ));
                  }
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(primary)),
                child: Text(
                  "Login",
                  style: TextStyle(color: base),
                ),
              ),
            ),
          ]),
        )));
  }
}
