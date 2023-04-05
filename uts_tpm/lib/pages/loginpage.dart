import 'package:flutter/material.dart';
import 'package:uts_tpm/pages/homepage.dart';

import '../config/colors.dart';
import '../data/users.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nimController = TextEditingController();
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
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                style: TextStyle(color: primary),
                controller: nimController,
                decoration: const InputDecoration(
                    labelText: "NIM",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )),
              ),
            ),
            Container(
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
            TextButton(
              onPressed: () {
                for (var user in userList) {
                  if (nimController.text == user.nim &&
                      passwordController.text == user.password) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(
                                  nim: nimController.text,
                                )));
                    msg = true;
                    break;
                  }
                }
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Username atau Password Salah'),
                ));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(primary)),
              child: Text(
                "Login",
                style: TextStyle(color: base),
              ),
            ),
          ]),
        )));
  }
}
